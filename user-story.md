A User Story describes one thing a program is expected to do, from the perspective of somebody using that program. When planning a program, the client's requirements will be decomposed into many User Stories. Much of a developer's life is spent translating User Stories into a functional system. In Object-Oriented Programming, these systems are made up of Objects and Messages. Objects describe the objects within the system, and Messages describe how those objects interact. We call these systems Domain Models.


You must translate these two user stories into a functional representation:

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

### To complete this challenge, you will need to:

- [ ] Write down all the nouns in the User Stories
- [ ] Write down all the verbs in the User Stories
- [ ] Draw a table like the one above
- [ ] Organise the nouns and verbs into Objects and Messages within the table
- [ ] Draw a diagram that shows how your Objects will use Messages to communicate with one another

first_story
Nouns
- person
- bike
- docking station

second_story
Nouns
- person
- bike

first_story
Verb
- use
- release

second_story
Verb
- use
- see

Objects  | Messages
------------- | -------------
Person  |
Bike  | use
Docking station  | release

Objects  | Messages
------------- | -------------
Person  |
Bike  | use, see

## Docking Station Error
#### docking_station = DockingStation.new
Types of error: syntax errors, runtime errors, and logic errors

Syntax Error - Program won't run
Runtime Error - Program will run, then break
Logic Error - Program will run, but not as expected

Syntax Error - NameError (uninitialized constant DockingStation)
File Path - from /Users/adambaker/.rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb
Line Number - 1 because irb
Meaning - Raised when a given name is invalid or undefined. (https://ruby-doc.org/core-2.2.0/NameError.html)
Solve - Define a DockingStation class.
