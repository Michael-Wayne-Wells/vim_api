# _Vim API_

#### _Cheatsheet of vim coommands_

#### By _**Michael Wells**_

## Description
This is an api to help users learn vim commands.

After app is launched, view Swagger here: http://localhost:3000/api-docs/index.html
This application provides a resources for users to:
* retrieve entire vim cheat sheet
  - http://localhost:3000/cheat_sheets
* retrieve vim commands by search
  - http://localhost:3000/cheat_sheets/?search= [searchstring]
* retrieve a random vim commmand
 - http://localhost:3000/random
* add a new vim command through api call
 - http://localhost:3000/cheat_sheets
  - with POST request
  - in body/form_data
  - key = key_stroke, value = [enter a key stroke]
  - key = action, value = [enter an action]
* update a vim command through api call
 - http://localhost:3000/cheat_sheets/[id]
  - with PATCH request
  - in body/form_data
  - key = key_stroke, value = [enter a key stroke]
  - key = action, value = [enter an action]
* view a vim command
- with GET request
 - http://localhost:3000/cheat_sheets/[id]
* Delete a vim command
  - with DELETE request
  - http://localhost:3000/cheat_sheets/[id]


## Setup/Installation Requirements

clone and open the file locally
in terminal run:

>$ git clone https://github.com/Michael-Wayne-Wells/vim_api.git

navigate to project folder and install gem bundles

>$ cd vim_api

>$ gem install bundler

>$ bundle install

start postgres(if not already), duplicate database, and seed:

>$ postgres

>$ rake db:create

>$ rake db:migrate

>$ rake db:seed

run program script in terminal

>$ rails -s


## Known Bugs

_No known bugs_

## Support and contact details

_If you have any issues with the program or want to reach out, email [mwells1286@gmail.com](href="mailto:mwells1286@gmail.com")_

## Technologies Used

_This program utilized:_
* _RUBY 2.6.5_
* _Rails 5.2.4_
* _Rubocop_
* _faker_
* _rspec_
* _shoulda-matchers_
* _postgres_
* _postman_
* _rswag_
* _swagger_


_and was built on Vim_

### License

*Licensed under MIT license*

Copyright (c) 2020 **_Michael Wells_**
