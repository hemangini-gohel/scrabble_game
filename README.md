# Scrabble Club sample application with ruby on rails

This is a demo application of a scrabble club management system. It manages the members enrolled with the club. It also manages the number of games played between different players and manages one leader board which shows the players with the highest average score.

## Prerequisites

* Ruby(2.6.3)
* yarn (or npm)
* Rails 6(6.0.4)
* PostgreSQL

## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/hemangini-gohel/scrabble_game.git 
$ cd scrabble_game
```

Then install the needed gems (while skipping any gems needed only in production):

```
$ bundle install
```

Install JavaScript dependencies:

```
$ yarn install
```

Next, create and migrate the database:

```
$ rails db:create
$ rails db:migrate
```

Start rails server:

```
$ rails server
```
Run application in browser:

[http://localhost:3000](http://localhost:3000/)

## App Features

## 1) Member Section

  * Create member with add new member button in list page.
  * Edit members with the edit button in list page.
  * Show member personal details, number of wins, number of losses, average score and highest score of member with opponent player details.
  * Delete a member with the delete button in the list page.

## 2) Game Section

  * Create a game with game details and the player details.
  * Edit game and player details by edit button in list page.
  * Show game details, with player details.
  * Delete a game with the delete button in the list page.

## 3) Leader Board

  * Leader board shows the top players of club.
  * It displays the members having the highest average score who played at least 10 matches. 
