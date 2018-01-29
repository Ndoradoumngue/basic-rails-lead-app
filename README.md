# README

To run the application in your computer, follow these steps:

* Clone (download) the project in your computer

* Open a terminal and navigate to the project directory by typing the command Cd <directory name>

* Install the dependencies by running the command “bundle install”

 * Create database and migrate schema by running the commands: “rake db:create” and “rake db:migrate”
 
* Run the application with the command "rails s"

* Go to the link shown in your terminal to access the app (mostly localhost:3000)

Run test

* Open a terminal (if not yet opened) and navigate to the project directory by typing the command Cd <directory name>
 
* Run the command 'rspec'

 
General Asumptions
We made the asumption that:
* You have ruby (v 2.2.2 or higher) installed in your computer
* You have rails (v 5.1.4) installed in your computer

System asumptions

We have made the asumption that the user is already logged in.
The user’s selected timezone will be stored in the database along with the user’s data and used to format the system time. At this point, we have made the asumption that our currently logged user is in Nairobi and formatted (manually) his/her timezone in the views to match Nairobi (EAT) timezone.


Used bundles and plugins

* We have used 'globalize', '~> 5.1.0.beta2' to translate the database data

