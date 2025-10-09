<conversation_summary>
<decisions>
Aplikacja obsługuje wyłącznie klientów indywidualnych; floty będą poza MVP.
Wszystkie obecne rezerwacje są telefoniczne; celem jest automatyzacja, by odciążyć sekretariat.
Dostępność mechaników i stanowisk planowana jest raz w miesiącu; prosty panel administracyjny; brak integracji z kalendarzem Google.
Harmonogram na kolejny miesiąc odblokowuje się 10. dnia każdego miesiąca.
Sekretariat używa tego samego formularza rezerwacji co klient.
Historia napraw ograniczona do danych w systemie Warsztat; AI używa danych auta i historii, VIN opcjonalny.
W MVP prezentacja dostępnych terminów w formie listy; kalendarz w przyszłości.
Miernik sukcesu: liczba anulowanych wizyt (dashboard z raportem za poprzedni miesiąc).
Brak testów obciążeniowych; przewidziane wsparcie dla 2 jednoczesnych użytkowników.
Projekt realizuje jedna osoba, 1 h dziennie przez 3 tygodnie; minimalne niezbędne funkcjonalności.
Zarządzanie zasobami: osobne wpisy dla każdego mechanika i stanowiska z wartościami domyślnymi (8–16, pn–pt).
Role i uprawnienia: klient indywidualny widzi i zarządza swoimi wizytami; sekretariat ma dostęp do wszystkich wizyt i może je edytować.
Po anulowaniu wizyty slot jest natychmiast zwalniany i widoczny dla innych.
W formularzu: imię i nazwisko, telefon, e-mail, numer rejestracyjny, rodzaj usługi, data i godzina; opcjonalnie: VIN, marka, model, rok, typ silnika.
Predykcja AI: statyczna odpowiedź (np. przypomnienie o wymianie filtrów); brak monitorowania dokładności w MVP.
Moduł wyszukiwania VIN/autouzupełnianie nie jest potrzebny w MVP.
Dashboard KPI: liczba anulowanych wizyt w poprzednim miesiącu.
Kryterium akceptacji: prezentacja demo z minimalną funkcjonalnością.
Plan awaryjny: w razie opóźnień dodanie dodatkowej godziny pracy dziennie.
Priorytet UX: minimalna liczba kliknięć.
Lista pól potwierdzona (zob. punkt 14).
Walidacja inline z czytelnymi komunikatami („Nieprawidłowy VIN”, „Wymagany numer telefonu”).
Ekran podsumowania z numerem rezerwacji, danymi i opcją wydruku/kopiowania linku.
Wymogi prawne dotyczące przechowywania danych nieistotne w MVP.
Treść statyczna rekomendacji AI do doprecyzowania („Pamiętaj o wymianie filtra oleju co rok lub 15 tys km…”).
Format daty: DD.MM.YYYY, HH:MM; lokalna strefa czasowa Polski.
Audyt zmian nie jest wymagany w MVP.
Interfejs zoptymalizowany wyłącznie pod desktop.
Scenariusze testowe: utworzenie, edycja, anulowanie wizyty.
W bazie danych rezerwacji: pola created_at i updated_at (ostatnia zmiana statusu).
</decisions>
<matched_recommendations>
Opracowanie person użytkowników (R1).
Ustalenie punktu wyjścia i etapów do 50% rezerwacji online (R2).
Projekt prostego, intuicyjnego panelu administracyjnego (R3).
Określenie horyzontu rezerwacji i momentu odblokowania terminu (R4).
Definicja workflow sekretariatu i widoku „do potwierdzenia” (R5).
Audyt dostępnych danych i wymaganych pól (R6).
Wykorzystanie listy terminów w MVP, kalendarz w przyszłości (R7).
Dashboard KPI z liczbą anulowanych wizyt (R8).
Opracowanie roadmapy z kluczowymi kamieniami milowymi i przydziałem zasobów (R10).
Struktura danych zasobów z domyślnymi wartościami (R11).
Definicja ról i poziomów dostępu (R12).
Automatyczne zwalnianie slotu po anulowaniu (R13).
Ustalenie listy pól obowiązkowych i opcjonalnych (R14).
Tryb fallback dla AI: statyczna wiadomość (R15).
Rezygnacja z modułu wyszukiwania w MVP (R16).
Dashboard z raportami o anulowanych wizytach (R17).
Definicja akceptacji demo i minimalnej funkcjonalności (R18).
Plan awaryjny na wypadek opóźnień (R19).
Priorytet minimalnej liczby kliknięć w UX (R20).
</matched_recommendations>
<prd_planning_summary>
Główne wymagania funkcjonalne:
Wyszukiwanie i rezerwacja terminu (lista) dla prostych usług (np. wymiana oleju).
Prosty panel administracyjny do definiowania dostępności mechaników i stanowisk raz w miesiącu.
Formularz rezerwacji dla klienta i sekretariatu z walidacją inline oraz ekranem podsumowania.
Automatyczne zwalnianie slotów po anulowaniu.
Generowanie statycznych rekomendacji konserwacyjnych przez AI.
Dashboard KPI z liczbą anulowanych wizyt z poprzedniego miesiąca.
Zarządzanie rezerwacjami (CRUD) z polami created_at i updated_at.
Kluczowe historie użytkownika i ścieżki:
Klient: wybiera usługę → wypełnia formularz → otrzymuje potwierdzenie z numerem rezerwacji.
Sekretariat: odbiera zlecenie telefoniczne → wprowadza dane w tym samym formularzu → widzi i edytuje wszystkie wizyty.
System: po anulowaniu wizyty zwalnia slot w czasie rzeczywistym.
System: wyświetla statyczną rekomendację konserwacji w podsumowaniu.
Kryteria sukcesu i mierniki:
Działanie dla 2 jednoczesnych użytkowników bez błędów.
>50% rezerwacji online docelowo (monitorowane po MVP).
Liczba anulowanych wizyt poniżej założonego progu (dashboard z raportem).
Demo prezentujące wszystkie scenariusze: utworzenie, edycja, anulowanie wizyty.
Ograniczenia i wpływ:
Brak skalowania i testów obciążeniowych – MVP wspiera tylko niewielki ruch.
Brak integracji z zewnętrznymi kalendarzami i wersjami mobilnymi.
Jedna osoba, ograniczony czas: priorytet na minimalną liczbę funkcji i kliknięć.
</prd_planning_summary>
<unresolved_issues>
Finalne określenie, które pola w formularzu są obowiązkowe vs opcjonalne.
Dokładne brzmienie statycznej rekomendacji AI.
Szczegóły scenariuszy testowych (np. dane testowe, kryteria zaliczenia).
</unresolved_issues>
</conversation_summary>