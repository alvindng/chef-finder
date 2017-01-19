# Cuisinary
#### By _**Alvin Ng**_

## Description
A Rails Web Application for finding and hiring a local chef to elevate your next event!

## Technologies Used
* HTML
* Sass
* Ruby
* Rails
* JavaScript/ AJAX
* Bootstrap
* AWS

## Setup/Installation Requirements

### Installation and Running Locally

To view a live WIP version of the site, visit: https://cuisinary.herokuapp.com/ or,

Open Terminal and clone the repository.  
```
$ cd Desktop
$ git clone https://github.com/alvindng/cuisinary
```

Navigate to the repository and bundle Ruby gems:
```
$ cd cuisinary
$ bundle install
```

Make sure Postgres is running on your local machine, then setup the database:
```
$ rails db:setup db:test:prepare
```

Create a Google project at `https://console.developers.google.com` and create an API key. Then create a .env file in your the project directory and insert the following code:
```
GMAPS_KEY=YOUR_API_KEY_HERE
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`.

## Contact

Email: alvindng@gmail.com

## License

This software is licensed under the MIT License

Copyright &copy; 2016 Alvin Ng
