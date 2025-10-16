<conversation_summary>
<decisions>
1. Use a single `reservations` table with `start_ts` and `end_ts`.
2. Define an `employees` table (with `type` field to distinguish mechanics) and link via `employee_id` in `reservations`.
3. Create a 1:N `vehicles` table for `users`; unique `license_plate`, optional `vin`.
4. Use a `repairs` table with `repair_id`, `name`, `duration_minutes`.
5. Add `created_by`, `recommendation_text` and `status` (enum: New, Cancelled, Done) to `reservations`.
6. Prevent overlapping bookings using PostgreSQL `EXCLUDE USING GIST` on `tsrange(start_ts, end_ts)` with `employee_id`.
7. Omit `stations`; assume one-to-one mapping with employees.
8. Use `TIMESTAMPTZ` for timestamps, timezone `Europe/Warsaw`.
9. Add B-tree indexes on `reservations(user_id)`, `reservations(employee_id)`, `reservations(created_by)`, `vehicles(license_plate)`.
10. Implement Row-Level Security so clients can only access their own `reservations`/`vehicles`; secretariat role has full access.
</decisions>

<matched_recommendations>
1. Use `TIMESTAMPTZ` and set timezone to `Europe/Warsaw`.
2. Include `created_by` and `recommendation_text` in the `reservations` table.
3. Model vehicles in a separate table with unique constraint on `license_plate` and optional unique index on `vin`.
4. Leverage a GIST-based `EXCLUDE` constraint on `tsrange(start_ts, end_ts)` + `employee_id` to prevent overlaps.
5. Apply B-tree indexes on foreign keys and frequently filtered columns.
6. Enforce RLS: clients restricted to own `reservations`/`vehicles`, secretariat full privileges.
</matched_recommendations>

<database_planning_summary>
The core of the MVP schema is the `reservations` table capturing all booking details:
- `start_ts`, `end_ts` (TIMESTAMPTZ in Europe/Warsaw)
- FKs: `user_id`, `created_by` (UUIDs), `repair_id`, `vehicle_id`, `employee_id`
- `status` enum (New, Cancelled, Done), `recommendation_text` TEXT

Supporting entities:
- `employees` (with `type` column for mechanics) for resource assignment.
- `vehicles` linked 1:N to `users`, unique `license_plate`, optional `vin`.
- `repairs` table with `repair_id`, `name`, `duration_minutes`.

Overlap prevention uses a PostgreSQL `EXCLUDE USING GIST` constraint on `tsrange(start_ts, end_ts)` paired with `employee_id`. B-tree indexes on key FKs and `vehicles(license_plate)` optimize performance. Row-Level Security policies ensure clients can only see/manage their own data, while the secretariat role retains full access.
</database_planning_summary>

<unresolved_issues>
- Confirm fields and ENUM values for the `employees` table (`type`).
- Finalize default behavior for `recommendation_text` (empty when AI fails).
</unresolved_issues>
</conversation_summary>
