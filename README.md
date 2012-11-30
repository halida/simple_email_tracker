Simple Email Tracker
=================================

Rails plugin for a Simple Email Tracker.

The logic is very simple, after install it, it will provide a unique transparent image url for each email, and embed it into the email which will send to the user.
As far as user views the image, which provided by the server, the server will record the user information, so we can know user read the email.

Requirements
---------------------------------
This gem is for Rails 3 with ActiveRecord and later versions only.

Install
---------------------------------
Add this to your Gemfile: 

```ruby
gem 'simple_email_tracker'
```

run `rails g simple_email_tracker:install`, it will create a table `email_trackers`, and add the route to your `routes.rb`.

Usage
---------------------------------
after installation, place this helper into your email view which you what to track:

```ruby
set_email_tracker "newsletter", Time.now.strftime "%Y-%m-%d", @user.id
```

and it will render a tracker image url.

after user open the email and confirm load images, your server will have a http get image request, and user info will be recorded.

Admin
---------------------------------

you can use this to query results:

```ruby
result = SimpleEmailTracker::Visit.search('key').first
result.ip
result.first_visited_at
result.last_visited_at
result.count
result.user_agent
```

license
---------------------------------

This project rocks and uses MIT-LICENSE.
