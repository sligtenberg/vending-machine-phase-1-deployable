# Stevo's Snack Sampler Introduction

Stevo's Snack Sampler is a vending machine interface, intended to provide a tasteful virtual vending machine experience. The goal is mimic a real-life vending machine for both customer interactions, and maintenance needs.

This was my first javascript project, and was build to use a json server with data stored in a local json file. This version has been adapted to run on rails, in hopes of deployment. The inspiration for this project comes from an assignment in Henry Rich's Java class, which I took at Raleigh Charter High School.

# Implementation

Ruby 2.7.4
Rails 7.0.6
Node v16.17

To install Stevo's Snack Sampler, first clone the repository to your local environement. From the project root directory, run the following commands:

$ bundle install
$ rails db:create
$ rails db:seed
$ rails s

These commands install dependencies, create and seed the database, and start the local backend server at localhost:3000

In another terminal window, run

$ cd client/
$ open index.html

to open the Stevo's Snack Sampler in a browser.

# Instructions

Use the radio toggle at the top of the page to switch between customer mode and maintenance mode.

## Customer mode

In customer mode, a user can insert money in denominations of $5.00 bills, $1.00 bills, quarters, dimes, and nickels, by pressing buttons. The machine displays a live reading of the total value of the money which has been tendered.

The return money button resets the amount tendered to zero and sends the money that was returned to the dispenser.

The display shows which snacks are available, their price, and the quantity left. If a snack is clicked the following takes place:
 - If there are no more left, a message is displayed in the dispenser.
 - If the user has not entered enough money, a message is displayed in the dispenser.
 - If the machine cannot make the correct change for the bills which were entered, a message is displayed in the dispenser.
 - Otherwise, the snack is deliver to the customer, the snack's value is subtraced from the amount tendered, and the snack's quantity is decreased.

After ordering a snack, the customer may choose to enter more money, buy anoter snack, or have their change returned.

## Maintenance mode

In maintenance mode, a user can restock the machine with snacks, restock the machine with money, and remove money that the machine has collected.

 - To edit snacks, click the edit button in the snack display.
 - To add a new snack, click add snack in the display.
 - To add money to the machine, enter the quantity in the appropriet field in the cash drawer. Negative numbers subtract money from the machine.
 - Auto reset adds/subtracts money to set the machine back to a default cash drawer level.

 ### Future plans & notes

 At the moment, there is a common senario in which the vending machine should be able to make change, but will not. We try to make change using the highest denominations possible, which can result in the use of a quarter leading to a change-making impass, when dimes would have worked. For example, if we need to make $0.30 in change, and the machine has no nickels, it will first add a quarter to the change, then get stuck since it cannot make $0.05 form dimes. However, if the machine has started with three dimes, it would have successfully made change.

 In the original implementation with a json server, a server error occured when making make rapid patch requests. This issue is explored in detail in the debugging files in the json version of this project. The issue does not present in rails.