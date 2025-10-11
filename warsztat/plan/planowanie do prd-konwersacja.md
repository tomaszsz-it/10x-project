Użytkownik:
<User>
Jesteś doświadczonym menedżerem produktu, którego zadaniem jest pomoc w stworzeniu kompleksowego dokumentu wymagań projektowych (PRD) na podstawie dostarczonych informacji. Twoim celem jest wygenerowanie listy pytań i zaleceń, które zostaną wykorzystane w kolejnym promptowaniu do utworzenia pełnego PRD.

Prosimy o uważne zapoznanie się z poniższymi informacjami:

<project_description>
### Główny problem
Manualne tworzenie wysokiej jakości fiszek edukacyjnych jest czasochłonne, co zniechęca do korzystania z efektywnej metody nauki jaką jest spaced repetition.

### Najmniejszy zestaw funkcjonalności
- Generowanie fiszek przez AI na podstawie wprowadzonego tekstu (kopiuj-wklej)
- Manualne tworzenie fiszek
- Przeglądanie, edycja i usuwanie fiszek
- Prosty system kont użytkowników do przechowywania fiszek
- Integracja fiszek z gotowym algorytmem powtórek

### Co NIE wchodzi w zakres MVP
- Własny, zaawansowany algorytm powtórek (jak SuperMemo, Anki)
- Import wielu formatów (PDF, DOCX, itp.)
- Współdzielenie zestawów fiszek między użytkownikami
- Integracje z innymi platformami edukacyjnymi
- Aplikacje mobilne (na początek tylko web)

### Kryteria sukcesu
- 75% fiszek wygenerowanych przez AI jest akceptowane przez użytkownika
- Użytkownicy tworzą 75% fiszek z wykorzystaniem AI
</project_description>

Przeanalizuj dostarczone informacje, koncentrując się na aspektach istotnych dla tworzenia PRD. Rozważ następujące kwestie:
<prd_analysis>
1. Zidentyfikuj główny problem, który produkt ma rozwiązać.
2. Określ kluczowe funkcjonalności MVP.
3. Rozważ potencjalne historie użytkownika i ścieżki korzystania z produktu.
4. Pomyśl o kryteriach sukcesu i sposobach ich mierzenia.
5. Oceń ograniczenia projektowe i ich wpływ na rozwój produktu.
</prd_analysis>

Na podstawie analizy wygeneruj listę 10 pytań i zaleceń w formie łączonej (pytanie + zalecenie). Powinny one dotyczyć wszelkich niejasności, potencjalnych problemów lub obszarów, w których potrzeba więcej informacji, aby stworzyć skuteczny PRD. Rozważ pytania dotyczące:

1. Szczegółów problemu użytkownika
2. Priorytetyzacji funkcjonalności
3. Oczekiwanego doświadczenia użytkownika
4. Mierzalnych wskaźników sukcesu
5. Potencjalnych ryzyk i wyzwań
6. Harmonogramu i zasobów

Dane wejściowe z pierwszej rundy powinny mieć następującą strukturę:

<prd_planning_output>
<pytania_runda_1>
[wymień tutaj swoje pytania ponumerowane]
</pytania_runda_1>

<rekomendacje_runda_1>
[wymień tutaj swoje zalecenia ponumerowane]
</rekomendacje_runda_1>
</prd_planning_output>

Po oytzymaniu odpowiedzi na pierwszą rundę pytań, wygenruj drugą rundę pytań i zaleceń w następującej strukturze:
<prd_planning_output>
<pytania_runda_2>
[wymień tutaj swoje pytania ponumerowane]
</pytania_runda_2>

<rekomendacje_runda_2>
[wymień tutaj swoje zalecenia ponumerowane]
</rekomendacje_runda_2>
</prd_planning_output>


Pamiętaj, że Twoim clem jest dostarczenie kompleksowej listy pytań i zaleceń, które pomogą w stworzeniu solidnego PRD dla MVP. Skoncentruj się na jasności, trafności i dokładnościswoich wyników. Nie dołączaj żadnych dodatkowych komentarzy ani wyjaśnień poza określonym formatem wyjściowym.
</User>

<Agent>
<prd_planning_output>
<pytania_runda_1>
1. Jaki jest profil i segmentacja docelowych użytkowników korzystających z AI do generowania fiszek (np. studenci, profesjonaliści, nauczyciele)?  
2. Jakie języki i tematyki treści będą wspierane podczas wprowadzania tekstu do generowania fiszek?  
3. Jaki maksymalny rozmiar i struktura wprowadzanego tekstu (znaki, akapity) będą obsługiwane w MVP?  
4. W jaki sposób użytkownik będzie oceniać i akceptować fiszki wygenerowane przez AI (jak definiujemy „zaakceptowaną” fiszkę)?  
5. Jak dokładnie ma wyglądać ścieżka użytkownika przy tworzeniu i edycji fiszek manualnie?  
6. Jakie mechanizmy autoryzacji, rejestracji i zarządzania kontami są wymagane w MVP?  
7. Poza wskaźnikami generacji AI, jakie kluczowe metryki sukcesu (np. retencja, aktywność, czas sesji) chcemy śledzić?  
8. W jaki sposób planujemy przetestować i zintegrować gotowy algorytm powtórek zewnętrznych?  
9. Jakie ryzyka technologiczne (jakość treści od AI, wydajność systemu, koszty API) powinniśmy uwzględnić?  
10. Jaki jest zakładany harmonogram rozwoju MVP oraz dostępne zasoby (zespół, budżet, infrastruktura)?  
</pytania_runda_1>

<rekomendacje_runda_1>
1. Zdefiniować szczegółowe persony użytkowników, by ukierunkować wymagania UX i priorytety funkcji.  
2. Opracować listę wspieranych języków i formatów tekstu wraz z wymaganiami walidacji.  
3. Ustalić limit rozmiaru wprowadzanego tekstu i zaprojektować mechanizm komunikatów o przekroczeniu.  
4. Zaprojektować interfejs feedbacku użytkownika do akceptacji, edycji i odrzucania fiszek AI.  
5. Stworzyć diagramy przepływu użytkownika dla trybu AI i trybu manualnego tworzenia fiszek.  
6. Określić model uprawnień, proces rejestracji i logowania oraz zarządzanie sesjami użytkownika.  
7. Wypracować plan instrumentacji metryk produktowych i narzędzie do raportowania wyników.  
8. Przygotować przypadki testowe i proces walidacji integracji z algorytmem powtórek.  
9. Opracować strategię fallback (np. retry, instrukcja ręcznej korekty) na wypadek niskiej jakości generacji AI.  
10. Sporządzić harmonogram kamieni milowych MVP z przydziałem zasobów, estymacjami czasu i kamieniami akceptacji.  
</rekomendacje_runda_1>
</prd_planning_output>
</Agent>


<User>
1. studenci
2. język polski, nauki ścisłe
3. 3000 znaków
4. prosty formularz
5. wprowadzenie tekstu manualnie przez uzykownika, wybór koloru tła
6. podstawowe mechanizmy autoryzacja, autentykacja»
7. czas sesji
8. zaproponuj proste, optymlne rozwiązanie
9. jakośc treści
10. Jedna osoba, 2 tygodnie pracy po godzinach
</User>

<Agent>
prd_planning_output>
<pytania_runda_2>
1. Jakie poziomy zaawansowania studentów (np. liceum, studia licencjackie) chcemy wspierać w pierwszej wersji?  
2. Czy generowanie fiszek ograniczymy wyłącznie do języka polskiego i nauk ścisłych, czy planujemy uwzględnić specyficzne formatowanie (np. wzory matematyczne)?  
3. Czy limit 3000 znaków ma obejmować wyłącznie treść źródłową, czy również metadane (np. tytuł, tagi)?  
4. Jakie pola powinien zawierać prosty formularz (np. tytuł fiszki, notatki, poziom trudności)?  
5. Jakie opcje wyboru koloru tła są dostępne (paleta predefiniowana czy dowolny pick-up)?  
6. Czy autoryzacja ma obejmować wyłącznie email/hasło, czy również logowanie przez zewnętrzne serwisy (Google, Facebook)?  
7. Jaki dokładnie metryka “czas sesji” – średni czas jednej sesji nauki, czy całkowity czas spędzony przez użytkownika na platformie?  
8. Który prosty algorytm powtórek planujemy zintegrować (np. SM-2)? Czy potrzebujemy konfiguracji parametrów przez użytkownika?  
9. Jakie kryteria oceny jakości treści będą stosowane (np. minimalny procent akceptacji lub manualna weryfikacja)?  
10. Czy dwutygodniowy harmonogram zakłada pełne ukończenie MVP, czy tylko wdrożenie kluczowych funkcji do testów?  
</pytania_runda_2>

<rekomendacje_runda_2>
1. Ograniczyć zakres studentów do jednego poziomu (np. licealiści) dla szybszej weryfikacji MVP.  
2. Przygotować prosty parser wzorów matematycznych (LaTeX inline) dla nauk ścisłych.  
3. Rozdzielić limit znaków na blok “treść źródłowa” i “opis/tytuł” w formularzu.  
4. Zaprojektować formularz z polami: tytuł, treść pytania, odpowiedź, poziom trudności, tagi.  
5. Udostępnić paletę 5–7 kolorów zgodnych z zasadami dostępności WCAG.  
6. Wdrożyć NextAuth.js z email/hasło i opcjonalnym OAuth (przyszła rozbudowa).  
7. Zdefiniować dla MVP metrykę “średni czas sesji” i ustalić benchmark akceptowalny (np. ≥15 min).  
8. Zintegrować standardowy algorytm SM-2 z fixed parameters, bez opcji zaawansowanej konfiguracji.  
9. Ustalić próg sukcesu dla jakości treści na poziomie 75% akceptacji AI i zapewnić logi do manualnej analizy odrzuconych fiszek.  
10. Podzielić dwutygodniowy okres na cztery sprinty tygodniowe z jasno zdefiniowanymi deliverables (formularz, AI, auth, integracja SRS).  
</rekomendacje_runda_2>
</prd_planning_output>

</Agent>

<User>





