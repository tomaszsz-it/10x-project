# planowanie-konwersacja.md

## Konwersacja

**Użytkownik**
Jesteś doświadczonym menedżerem produktu, którego zadaniem jest pomoc w stworzeniu kompleksowego dokumentu wymagań projektowych (PRD) na podstawie dostarczonych informacji. Twoim celem jest wygenerowanie listy pytań i zaleceń, które zostaną wykorzystane w kolejnym promptowaniu do utworzenia pełnego PRD.

Prosimy o uważne zapoznanie się z poniższymi informacjami:

### Opis projektu
Klienci mają trudność w szybkim znalezieniu dostępnego mechanika dla prostych napraw, takich jak wymiana oleju. Właściciel warsztatu chce wypełnić godziny pracy swoich pracowników i pozyskiwać klientów bez zaangażowania – właściciel auta może sam znaleźć dostępny termin. Priorytetem jest szybka realizacja usługi.

#### MVP:
- Wyszukanie dostępnego terminu na usługę w warsztacie samochodowym
- Manualne wprowadzanie dostępności mechaników i stanowisk warsztatowych
- Rezerwacja czasu mechanika i stanowiska (CRUD)
- Sekretariat może wciąż przyjmować rezerwacje telefoniczne
- AI-owa predykcja koniecznych napraw na podstawie historii i danych auta

Wyłączone z MVP: dedykowane stanowiska, skomplikowane naprawy, aplikacja mobilna, integracje, powiadomienia.

Kryterium sukcesu: >50% rezerwacji online.

**Asystent**
1. Czy możemy zidentyfikować kluczowe segmenty klientów (np. indywidualni vs floty)?
   *Rekomendacja*: Opracować persony.
2. Jaki jest obecny udział rezerwacji telefonicznych i cel dla online?
   *Rekomendacja*: Ustalić punkty kontrolne do 50%.
3. Jak często będzie aktualizowana dostępność mechaników i stanowisk?
   *Rekomendacja*: Panel administracyjny i półautomatyczne importy.
4. Jaki horyzont czasowy udostępniamy klientom?
   *Rekomendacja*: Określić zakres rezerwacji.
5. Jak sekretariat ma wprowadzać rezerwacje telefoniczne?
   *Rekomendacja*: Workflow i widok „do potwierdzenia”.
6. Skąd pozyskamy dane historyczne do AI?
   *Rekomendacja*: Audyt i definicja wymaganych pól.
7. Jaki format prezentacji terminów (lista/kalendarz)?
   *Rekomendacja*: Prototypy UI.
8. Oprócz udziału online, jakie KPI?
   *Rekomendacja*: Dashboard wykorzystania zasobów i NPS.
9. Wymagania niefunkcjonalne (obciążenie, SLA)?
   *Rekomendacja*: SLA <200 ms, testy.
10. Jaki harmonogram i zasoby?
   *Rekomendacja*: Roadmap z kamieniami milowymi.

**Użytkownik**
1. Obsługa tylko klientów indywidualnych (floty poza MVP).
2. Obecnie rezerwacje telefoniczne, chcemy automatyzację.
3. Dostępność planowana miesięcznie, brak integracji z Google.
4. Kalendarz odblokowany 10. dnia miesiąca.
5. Sekretariat używa tego samego formularza.
6. Historia napraw w systemie Warsztat; AI na podstawie danych auta, VIN opcjonalny.
7. MVP: tylko lista terminów.
8. Miernik sukcesu: liczba anulowanych wizyt.
9. MVP: 2 jednoczesnych użytkowników, brak testów obciążeniowych.
10. Jedna osoba, 1h dziennie przez 3 tygodnie.

**Asystent**
11. Struktura danych mechaników i stanowisk (z domyślnymi godzinami 8–16 pn–pt).
12. Role: klient widzi swoje wizyty, sekretariat widzi i edytuje wszystkie.
13. Anulowany slot natychmiast dostępny.
14. Formularz: imię, nazwisko, telefon, e-mail, nr rej., rodzaj usługi, data/godzina; opcjonalnie VIN, marka, model, rok, silnik.
15. AI zwraca statyczną rekomendację wymiany filtrów.
16. Brak modułu wyszukiwania VIN w MVP.
17. Dashboard: anulowane wizyty z poprzedniego miesiąca.
18. Demo minimalnej funkcjonalności jako akceptacja.
19. Plan awaryjny: dodatkowa godzina pracy przy opóźnieniach.
20. Priorytet minimalnej liczby kliknięć.

**Użytkownik**
21. Lista pól formularza potwierdzona.
22. Walidacja inline z komunikatami.
23. Ekran podsumowania z nr rezerwacji i możliwością wydruku/linku.
24. Wymogi prawne nieistotne w MVP.
25. Treść statycznej rekomendacji AI: „Pamiętaj o wymianie filtra oleju co rok lub 15 tys km, filtra paliwa co 50 tys km lub 3 lata.”
26. Format daty: DD.MM.YYYY, HH:MM; strefa Polska.
27. Audyt zmian nie jest wymagany.
28. Interfejs desktop-only w MVP.
29. Scenariusze testowe: utworzenie, edycja, anulowanie wizyty.
30. Baza: pola `created_at` i `updated_at`.

**Użytkownik**
Poproszono o podsumowanie rozmowy w formacie `<conversation_summary>`...

**Asystent**
<conversation_summary>
<decisions> … </decisions>
<matched_recommendations> … </matched_recommendations>
<prd_planning_summary> … </prd_planning_summary>
<unresolved_issues> … </unresolved_issues>
</conversation_summary>

**Użytkownik**
wyeksportuj całą konwersację do planowanie-konwersacja.md

---

*Plik zawiera pełną historię rozmowy do dalszego planowania PRD.*

