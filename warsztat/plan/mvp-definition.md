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