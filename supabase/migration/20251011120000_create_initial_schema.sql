-- migrowanie: create initial schema
-- created_at: 2025-10-11T12:00:00Z
-- dotyczy tabel: employees, services, vehicles, employee_schedules, reservations
-- uwaga: tabela users jest zarządzana przez supabase auth i nie jest tu tworzona

-- 1. employees
create table employees (
  id uuid primary key default gen_random_uuid(),
  name varchar(100) not null,
  surname varchar(100) not null,
  email varchar(255) not null unique,
  type varchar(50) not null check (type in ('Mechanic','Secretary')),
  created_at timestamptz not null default now()
);

-- włącz rls na employees
alter table employees enable row level security;

-- polityki rls dla employees:
-- każda rola może pobierać listę pracowników
create policy employees_select_anon
  on employees for select to role anon using ( true );
create policy employees_select_authenticated
  on employees for select to role authenticated using ( true );

-- tylko zalogowani mogą dodawać/modyfikować/usunąć pracowników
create policy employees_modify_authenticated
  on employees for insert, update, delete to role authenticated using ( true ) with check ( true );



-- 2. services
create table services (
  service_id serial primary key,
  name varchar(100) not null,
  duration_minutes int not null,
  created_at timestamptz not null default now()
);

alter table services enable row level security;

-- każda rola może pobierać listę usług
create policy services_select_anon
  on services for select to role anon using ( true );
create policy services_select_authenticated
  on services for select to role authenticated using ( true );

-- tylko zalogowani mogą dodawać/modyfikować/usunąć usługi
create policy services_modify_authenticated
  on services for insert, update, delete to role authenticated using ( true ) with check ( true );



-- 3. vehicles
create table vehicles (
  license_plate varchar(20) not null primary key,
  user_id uuid not null references users(id),
  vin varchar(17),
  brand varchar(50),
  model varchar(50),
  production_year int,
  type varchar(200),
  created_at timestamptz not null default now()
);

alter table vehicles enable row level security;

-- tylko zalogowani mogą pobierać, tworzyć, modyfikować i usuwać własne pojazdy
create policy vehicles_select_authenticated
  on vehicles for select to role authenticated using ( user_id = auth.uid() );
create policy vehicles_insert_authenticated
  on vehicles for insert to role authenticated with check ( new.user_id = auth.uid() );
create policy vehicles_update_authenticated
  on vehicles for update to role authenticated using ( user_id = auth.uid() ) with check ( new.user_id = auth.uid() );
create policy vehicles_delete_authenticated
  on vehicles for delete to role authenticated using ( user_id = auth.uid() );



-- 4. employee_schedules
create table employee_schedules (
  id uuid primary key default gen_random_uuid(),
  employee_id uuid not null references employees(id),
  "from" timestamptz not null,
  "to" timestamptz not null
);

alter table employee_schedules enable row level security;

-- każda rola może pobierać grafik pracowników
create policy schedules_select_anon
  on employee_schedules for select to role anon using ( true );
create policy schedules_select_authenticated
  on employee_schedules for select to role authenticated using ( true );

-- tylko zalogowani mogą dodawać/modyfikować/usunąć grafiki
create policy schedules_modify_authenticated
  on employee_schedules for insert, update, delete to role authenticated using ( true ) with check ( true );



-- 5. reservations
create table reservations (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references users(id),
  created_by uuid not null references users(id),
  service_id int not null references services(service_id),
  vehicle_license_plate varchar(20) not null references vehicles(license_plate),
  employee_id uuid not null references employees(id),
  start_ts timestamptz not null,
  end_ts timestamptz not null,
  status varchar(20) not null check (status in ('New','Cancelled','Done')),
  recommendation_text varchar(2000) not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- zapobiegaj nakładającym się rezerwacjom dla tego samego mechanika
alter table reservations
  add constraint no_employee_time_overlap
    exclude using gist (
      employee_id with =,
      tstzrange(start_ts, end_ts, '[]') with &&
    );

alter table reservations enable row level security;

-- tylko zalogowani mogą pobierać, tworzyć i modyfikować własne rezerwacje
create policy reservations_select_authenticated
  on reservations for select to role authenticated using ( user_id = auth.uid() );
create policy reservations_insert_authenticated
  on reservations for insert to role authenticated with check ( new.user_id = auth.uid() );
create policy reservations_update_authenticated
  on reservations for update to role authenticated using ( user_id = auth.uid() ) with check ( new.user_id = auth.uid() );
create policy reservations_delete_authenticated
  on reservations for delete to role authenticated using ( user_id = auth.uid() );



-- 6. indeksy dla wydajności
-- indeksy na kluczach obcych w reservations
create index idx_reservations_user_id      on reservations(user_id);
create index idx_reservations_created_by   on reservations(created_by);
create index idx_reservations_employee_id  on reservations(employee_id);

-- przyspieszenie wyszukiwania po tablicy vehicles
create index idx_vehicles_license_plate    on vehicles(license_plate);