rails4-mapping-starter
======================

This is a sample Rails4 app that integrates Google maps and has a few mapping gems wired up and ready to go.

It is very simplistic and is not intended as a best practice sample app.  

It does show how to integrate with the Google Map JavaScript API and how you can pull geocoded points
from a Mysql database.  This can easily be expanded to do more complex queries and utilize more
complex mapping features.  You could also switch out the front end with something like AngularJS
if you prefer that kind of UI.  For anything "enterprise" you really should consider using
postgresql instead of mysql.

## Setup
* Make sure you have a MySQL server in your dev env that has a "root" user with an empty password.  Otherwise you will need to configure your database.yml to match your database credentials.
* Clone code from github to your dev env
* Run bundle from the project root
* Initialize the database and migrate it with `rake db:create db:migrate`
* Obtain a Google Maps AIP key from https://developers.google.com/maps/documentation/javascript/tutorial#api_key
and past your new key into the google map initialization in /app/views/layouts/application.html.erb

```javascript
<script type="text/javascript"
  src="https://maps.googleapis.com/maps/api/js?key=<<GOOGLE_API_KEY>>&sensor=false">
</script>
```

* Start the app with `rails s` from the root of your project
* From a browser go to http://localhost:3000

## Adding points
You can easily add some test points with Rails console, rake or via another means.

```ruby
  t = MySpatialTable.new
  t.latlon = 'POINT(-111.3 40.2)'
  t.save
```

When you access localhost:3000 again you will see your new point show up if it's
latitude and longitude is within your main map viewport coordinates
