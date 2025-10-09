Jesteś doświadczonym menedżerem produktu, którego zadaniem jest stworzenie kompleksowego dokumentu wymagań produktu (PRD) w oparciu o poniższe opisy:

<project_description>
### Główny problem
Klienci mają trudność w szybkim znalezieniu dostępnego mechanika dla prostych napraw, takich jak wymiana oleju. Właściciel warsztatu chce wypełnić godziny pracy swoich pracowników. Właściciel warsztatu chce pozyskiwać klientów bez zaangażowania - Właściciel auta może sam znależć dostępny warsztat ktktóry wykona naprawę.
Priorytetem ma być bardzo szybka realizacja usługi.

### Najmniejszy zestaw funkcjonalności
- Wyszukanie dostępnego terminu na wybraną usługę w Warsztacie samochodowym
- Manualne wprowadzanie dostępności pracowników i stoisk warsztatowych
- Rezerwacja czasu pracownika. 
- Typ naprawy jest skorelowany z planowanym czasem naprawy, np wymiana oleju to 30 min. Rezerwujemy tak naprawdę dostępność mechanika i stoiska w warsztacie 
- Prosty system rezerwacji naprawy. System prezentuje wszystkie dostępne terminy u wszystkich pracowników.  Możliwość zarządzania naprawą - CRUD dla naprawy
- Sekreatriat warsztatu może nadal przyjmować rezerwacjie telofoniczne
- Klient jest informowany o możliwych koniecznych najbliższych naprawach. System w oparciu o AI dostarcza predyckje, informacje na temat auta, w oparciu o dane auta, dane naprawy, historię napraw oraz wiedzę AI. Np. Klient wymienia filtr oleju i olej a system mówi że dla tego auta maksymalnie co 3 lata powinien być wymieniany filtr paliwa, jeśli nie był wymieniany od 3 lat czy wymienić filtr paliwa razem z wymianą filtru oleju. 


### Co NIE wchodzi w zakres MVP
- Stoiska wrsztatowe do deykowanych napraw, narazie każde stanowisko obsłuhuje każdy rodzaj naprawy.
- Skomplikowane naprawy wymgające więcej niż jednego mechanika
- Aplikacje mobilne (na początek tylko web)
- Integracje z innymi serwisami
- Notyfikacje do klientów oraz marketing

### Kryteria sukcesu
- Ponad 50% rezerwacji odbywa się drogą elektroniczną przez Warsztat
</project_description>

<project_details>
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
</project_details>

Wykonaj następujące kroki, aby stworzyć kompleksowy i dobrze zorganizowany dokument:

1. Podziel PRD na następujące sekcje:
   a. Przegląd projektu
   b. Problem użytkownika
   c. Wymagania funkcjonalne
   d. Granice projektu
   e. Historie użytkownika
   f. Metryki sukcesu

2. W każdej sekcji należy podać szczegółowe i istotne informacje w oparciu o opis projektu i odpowiedzi na pytania wyjaśniające. Upewnij się, że:
   - Używasz jasnego i zwięzłego języka
   - W razie potrzeby podajesz konkretne szczegóły i dane
   - Zachowujesz spójność w całym dokumencie
   - Odnosisz się do wszystkich punktów wymienionych w każdej sekcji

3. Podczas tworzenia historyjek użytkownika i kryteriów akceptacji
   - Wymień WSZYSTKIE niezbędne historyjki użytkownika, w tym scenariusze podstawowe, alternatywne i skrajne.
   - Przypisz unikalny identyfikator wymagań (np. US-001) do każdej historyjki użytkownika w celu bezpośredniej identyfikowalności.
   - Uwzględnij co najmniej jedną historię użytkownika specjalnie dla bezpiecznego dostępu lub uwierzytelniania, jeśli aplikacja wymaga identyfikacji użytkownika lub ograniczeń dostępu.
   - Upewnij się, że żadna potencjalna interakcja użytkownika nie została pominięta.
   - Upewnij się, że każda historia użytkownika jest testowalna.

Użyj następującej struktury dla każdej historii użytkownika:
- ID
- Tytuł
- Opis
- Kryteria akceptacji

4. Po ukończeniu PRD przejrzyj go pod kątem tej listy kontrolnej:
   - Czy każdą historię użytkownika można przetestować?
   - Czy kryteria akceptacji są jasne i konkretne?
   - Czy mamy wystarczająco dużo historyjek użytkownika, aby zbudować w pełni funkcjonalną aplikację?
   - Czy uwzględniliśmy wymagania dotyczące uwierzytelniania i autoryzacji (jeśli dotyczy)?

5. Formatowanie PRD:
   - Zachowaj spójne formatowanie i numerację.
   - Nie używaj pogrubionego formatowania w markdown ( ** ).
   - Wymień WSZYSTKIE historyjki użytkownika.
   - Sformatuj PRD w poprawnym markdown.

Przygotuj PRD z następującą strukturą:

```markdown
# Dokument wymagań produktu (PRD) - {{app-name}}
## 1. Przegląd produktu
## 2. Problem użytkownika
## 3. Wymagania funkcjonalne
## 4. Granice produktu
## 5. Historyjki użytkowników
## 6. Metryki sukcesu
```

Pamiętaj, aby wypełnić każdą sekcję szczegółowymi, istotnymi informacjami w oparciu o opis projektu i nasze pytania wyjaśniające. Upewnij się, że PRD jest wyczerpujący, jasny i zawiera wszystkie istotne informacje potrzebne do dalszej pracy nad produktem.

Ostateczny wynik powinien składać się wyłącznie z PRD zgodnego ze wskazanym formatem w markdown, który zapiszesz w pliku .ai/prd.md