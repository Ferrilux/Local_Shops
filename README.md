# README

**Uruchomienie aplikacji:**
 1. Poprawne skonfigurowanie frameworka *Ruby on Rails* w systemie ([TUTORIAL](https://kssk.gitbook.io/aplikacje-mobilne/na-serwerze))
 2. Sklonowanie repozytorium: `git clone https://github.com/Ferrilux/Local_Shops.git`
 3. Instalacja gemów (*w terminalu z poziomu folderu **Local_Shops***): `bundle install`
 4. Migracja bazy danych: `rails db:migrate`
 5. Uruchomienie serwera: `rails server`
 6. Uruchomienie aplikacji: http://localhost:3000/

Dodawanie użytkowników: http://localhost:3000/users

Jeśli po uruchomieniu aplikacji wyświetla się błąd: 
> Webpacker::Manifest::MissingEntryError in Static#index

Uruchom komendę: `rails webpacker:install` lub `bundle exec rails webpacker:install`
