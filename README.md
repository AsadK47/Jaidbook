# Jaidbook

The purpose of this project was to create a facebook clone, designed in Ruby on Rails.

During the development cycle the team was able to produce a working CRUD application with many features shared by facebook such as the ability to post (with a picture) to the homepage, post other users walls and many more such as liking posts and commenting on them. We did this all while being able to sign-in and out successfully using devise.

We used many industry standard practices to achieve this in a 2 week period, such as daily stand-ups and evening retros while adhering to agile methodologies and incorporating XP values. Additionally we divided the work using a Trello board (link can be found below) and we followed a user story driven model which can also be found below so please have a read.

## Build Status
[![Build Status](https://travis-ci.org/AsadK47/Jaidbook.svg?branch=master)](https://travis-ci.org/AsadK47/Jaidbook)

![](assets/README-24a2f8f5.png)

## Links

*Heroku application:* https://jaidbook.herokuapp.com/

*Trello board:* https://trello.com/b/Fp0JIOMP/acebook-planning-team-jaid

*Engineering project outline:* https://github.com/makersacademy/course/tree/master/engineering_projects/rails

## Members
- [Asad Khan](https://github.com/AsadK47)
- [Darryl Banks](https://github.com/zombie9)
- [Ijeoma Nelson](https://github.com/githubsttar)
- [Jackie Dunne](https://github.com/kiedunne)

## Installation instructions

```
clone repo
cd into Jaidbook
bundle install
createdb pg_jaid_dev
createdb pg_jaid_test
rake db:schema:load
```

```
bundle exec rspec # Run the tests to ensure it works
bin/rails server # Start the server at localhost:3000
```

## Documentation

Below are some diagrams which we drew up in the initial stages of the application during our daily standup. It helped us to create a basic outline of the project and we used it as a guide to get us up and running.

Furthermore we had created a wiki page to help us document our work (link found below) which would in the show how much we had learned and accomplished throughout the project.

*Wiki pages:* https://github.com/AsadK47/Jaidbook/wiki

![](assets/README-3814a64d.jpg)

![](assets/README-4c144c6b.jpg)

![](assets/README-f82fa3f2.jpg)
