# README

#Install Ruby (using RVM)

rvm install ruby -v2.4.0
rvm use ruby2.4.0

#Create gemset

rvm gemset create manager
rvm use 2.4.0@manager

#Clone the project

git clone https://github.com/neelima1993-1ap/myassignment

#Add .ruby-gemset and .ruby-version file to the directory

echo "manager > myassignment/.ruby-gemset
echo "2.4.0" > myassignment/.ruby-version

#CD into project

cd myassignment

#install gems

bundle install

#configure database(change username and password for the mysql database)

enter username and password for the mysql database

#create database and seed data

rake db:create
rake db:migrate
rake db:seed

#run server locally

rails s

#enter admin details

Go the browser and enter localhost:3000/users/sign_in

#enter admin credentials

email: neelima@neelima.com
password: neelima@123














