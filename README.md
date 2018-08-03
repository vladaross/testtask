# README
Ruby 2.4.0
Rails 5.2.0
This is a Test Task for Rademade. 

Catalogue presents list of items, dived by some categories.
By entering url/items you can preview list of all items(they're name and price), ordered by category;
Lists are paginated, so entering the url/items?page=2 (and so on), you get on desired page. Every page present 10 items.
IF you'd like to seeitem detailed you visit url/items/"item_name", for ex: url/items/carrot.
All items were generated by faker gem and rails seeds.
WHAT YOU NEED TO RUN API:

config/database.yml file with database setups:
DB_USER: 'user_example'
DB_PASSWORD: 'mypass_example'
HOST: 'host_example'

HOW TO RUN API:
Create postgres user
From project directory run bundle install

From project directory run rake db:setup

From project directory run rails s




