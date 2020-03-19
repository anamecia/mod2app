# FOODy

Social media platform where users can host meals in their houses and other users can book places on their events.

<img src='./app/assests/images/Foody-welcomepage.png'>

## Technologies Used:
 - Ruby on Rails
 - CSS
 - SQLite 

 ## Getting Started

```bash
bundle install

rake db:migrate db:seed

rails s
```

## User Experience

There are three types of users in this app: hosts, guests and admin.
All users need to be loged in to see specific content, if they are loged out they have access to the list of all the events available.

<img src='./app/assests/images/Foody-events.png'>


### Host 
Hosts are able to see their events and respective reviews, they can also create new events.

<img src='./app/assests/images/Foody-formfornewevent.png'>

### Guest
Guests are able to see their bookings, leave reviews and book events.

<img src='./app/assests/images/Foody-bookevent.png'>

## Admin 

The admin user has access to the stats of the website.

<img src='./app/assests/images/Foody-adminpage.png'>







