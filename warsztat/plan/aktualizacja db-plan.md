Jesteś asystentem AI, którego zadaniem jest pomoc w zaplanowaniu aktualizacji schematu bazy danych w PostgreSQL dla MVP (Minimum Viable Product) na podstawie dostarczonych informacji. Ogranicz zakres do zmian zdefiniowanych w  sekcji <scope_update> aktualnego prd.md  Twoim celem jest wygenerowanie listy pytań i zaleceń, które zostaną wykorzystane w kolejnym promptowaniu do utworzenia schematu bazy danych, relacji i zasad bezpieczeństwa na poziomie wierszy (RLS).

Prosimy o uważne zapoznanie się z poniższymi informacjami:

<product_requirements>
 @prd.md
Zwróc uwagę na sekcję  <scope_update> która określa zmiany na których masz się skoncentrować
</product_requirements>

<tech_stack>
@tech-stack.md
</tech_stack>
Weż pod uwagę Aktualne skrypty bazy danych: @20251011120000_create_garage_pro_schema.sql @20251011120500_update_schema_columns.sql 

Moja sesja dla wymagań ustalonych na początku skończyła się poniższym rezultatem, proszę uwzględnij zmiany w @prd.md, sięgnij do zmian w git. przeprowadż analizę jakie aktualizacje należy przeprowadzić w bazie danyc. W pózniejszym etapie będziesz tworzył skryp dla bazy danych

<conversation_summary>
<decisions>
1. Use a single `reservations` table with `start_ts` and `end_ts` instead of a separate slots table.  
2. Define `employees` (with a `type` field) and `stations` tables; link both in `reservations`.  
3. Create a 1:N `vehicles` table for users; require unique `license_plate`, optional unique `vin`.  
4. Rename the services table to an English name (`services` or `repairs`).  
5. Add `created_by`, `recommendation_text` and `status` columns to `reservations`.  
6. Prevent overlapping bookings using a PostgreSQL `EXCLUDE USING GIST` constraint on `tsrange(start_ts, end_ts)` combined with `employee_id` and `station_id`.  
7. Track employee unavailability in a minimal `employee_unavailability` table with `employee_id`, `start_date`, `end_date`.  
8. Use `TIMESTAMPTZ` for all timestamps and set the database timezone to `Europe/Warsaw`.  
9. Add B-tree indexes on `reservations(user_id)`, `reservations(employee_id)`, `reservations(created_by)`, and `vehicles(license_plate)`.  
10. Implement Row-Level Security so clients can only access their own rows and the secretariat role has full access.
</decisions>

<matched_recommendations>
1. Use `TIMESTAMPTZ` and set timezone to `Europe/Warsaw`.  
2. Include `created_by` and `recommendation_text` in the `reservations` table.  
3. Model vehicles in a separate table with unique constraint on `license_plate` and optional unique index on `vin`.  
4. Leverage a GIST-based `EXCLUDE` constraint on `tsrange(start_ts, end_ts)` + resource IDs to prevent overlaps.  
5. Introduce a simple `employee_unavailability` table with date ranges.  
6. Apply B-tree indexes on foreign keys and frequently filtered columns.  
7. Enforce RLS: clients restricted to own `reservations`/`vehicles`, secretariat full privileges.
</matched_recommendations>

<database_planning_summary>
The core of the MVP schema is the `reservations` table capturing all booking details: 
- `start_ts`, `end_ts` (TIMESTAMPTZ in Europe/Warsaw)  
- FKs: `user_id`, `created_by` (both UUIDs), `service_id`, `vehicle_id`, `employee_id`, `station_id`  
- `status` enum (‘booked’, ‘cancelled’, ‘completed’), `recommendation_text` TEXT  

Supporting entities:  
- `employees` (with `type` column for mechanics) and `stations` for resource assignment.  
- `vehicles` linked 1:N to `users`, unique `license_plate`, optional `vin`.  
- `services` (or `repairs`) table with `name` and `duration_minutes`.  
- `employee_unavailability` table to mark date ranges when an employee is unavailable.

Overlap prevention uses a PostgreSQL `EXCLUDE USING GIST` constraint on `tsrange(start_ts, end_ts)` paired with `employee_id` and `station_id`. B-tree indexes on key FKs and `vehicles(license_plate)` optimize performance. Row-Level Security policies ensure clients can only see/manage their own data, while the secretariat role retains full access.
</database_planning_summary>

<unresolved_issues>
-

Przeanalizuj dostarczone informacje, koncentrując się na aspektach istotnych dla projektowania bazy danych. Rozważ następujące kwestie:

1. Zidentyfikuj kluczowe encje i ich atrybuty na podstawie wymagań produktu.
2. Określ potencjalne relacje między jednostkami.
3. Rozważ typów danych i ograniczeń, które mogą być konieczne.
4. Pomyśl o skalowalności i wpływie na wydajność.
5. Oceń wymagania bezpieczeństwa i ich wpływ na projekt bazy danych.
6. Rozważ wszelkie konkretne funkcje PostgreSQL, które mogą być korzystne dla projektu.

Na podstawie analizy wygeneruj listę 5 pytań i zaleceń w formie łączonej (pytanie + zalecenie). Powinny one dotyczyć wszelkich niejasności, potencjalnych problemów lub obszarów, w których potrzeba więcej informacji, aby stworzyć skuteczny schemat bazy danych. Rozważ pytania dotyczące:

1. Relacje i kardynalność jednostek
2. Typy danych i ograniczenia
3. Strategie indeksowania
4. Partycjonowanie (jeśli dotyczy)
5. Wymagania bezpieczeństwa na poziomie wierszy
6. Rozważania dotyczące wydajności
7. Kwestie skalowalności
8. Integralność i spójność danych

Dane wyjściowe powinny mieć następującą strukturę:

<pytania>
Wymień tutaj swoje pytania i zalecenia, ponumerowane dla przejrzystości:

Na przykład:
1. Czy encja „użytkownicy" powinna mieć powiązanie z „postami"?

Rekomendacja: Tak, encja „użytkownicy" powinna mieć powiązanie z „postami", ponieważ użytkownicy mogą tworzyć posty.
</pytania>

Pamiętaj, że Twoim celem jest dostarczenie kompleksowej listy pytań i zaleceń, które pomogą w stworzeniu solidnego schematu bazy danych PostgreSQL dla MVP. Skoncentruj się na jasności, trafności i dokładności swoich wyników. Nie dołączaj żadnych dodatkowych komentarzy ani wyjaśnień poza określonym formatem wyjściowym.

Kontynuuj ten proces, generując nowe pytania i rekomendacje w oparciu o przekazany kontekst i odpowiedzi użytkownika, dopóki użytkownik wyraźnie nie poprosi o podsumowanie.

Pamiętaj, aby skupić się na jasności, trafności i dokładności wyników. Nie dołączaj żadnych dodatkowych komentarzy ani wyjaśnień poza określonym formatem wyjściowym. Pam iętaj żeby skupić się  na zmianach okreslonych w  <scope_update> dokumentu @prd.md przeanalizuj również historię git tego pliku