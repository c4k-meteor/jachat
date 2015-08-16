# jaChat
Just Another Chat application. Made with [Meteor](https://meteor.com) and [React](https://facebook.github.io/react/index.html). If a new javascript framework is announced every week I think we can develop another chat application, can't we?

The purpose of this app is to teach myself React and how to integrate it with Meteor.

I am going to develop the application in an iterative way. I will improve it on each step adding new functionality that leads me to learn more and more of React. Anything you think that can be improved please tell me (best practices, naming, conventions, code, packages, ...).


## Roadmap
Each step has its corresponding branch.

### Step 0
Initial bootstrap. No login functionality, insecure package still active, no design, no tests.

You can add messages via browser console:

    Messages.insert({description: 'Right from the console'})

### Step 1
Add input text to add messages. Messages ordered by creation Date. Better presentation and styling.

## Packages
meteor add reactjs:react

meteor add twbs:bootstrap

meteor add accounts-base

meteor add service-configuration

meteor add accounts-password

meteor add iron:router

meteor add coffeescript

meteor add react-compiler - (This package is installed locally)

meteor add sacha:spin

meteor add aldeed:simple-schema

meteor add aldeed:collection2

meteor add mrt:flash-messages

meteor add momentjs:moment

meteor add tmeasday:publish-counts

meteor add reywood:iron-router-ga


## Template
http://startbootstrap.com/template-overviews/sb-admin-2/

## Contributions
Contributions are more than welcome. Please send your PR or contact me [Jorge Alvarez](http://www.alvareznavarro.es) - [@jorgealvarez](https://twitter.com/jorgealvarez)
