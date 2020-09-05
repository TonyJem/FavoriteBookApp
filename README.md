# FavoriteBook
Simple iOS App - done as training task from Apple Education Lab for learning purposes in 2020 May

[Description](#description)

[Implementation](#implementation)

[About Code](#about-code)

[References](#references)

## Description:
The objective of this lab is to implement _Intermediate Table View_ features into an App that keeps track of user's favorite Books.

#### This app accomplish three main goals:
  1. Replace existing regular _View Controller_ with a _Static Table View_”
  
  2. Create a custom table view cell to display the details of each Book in the main list.
  
  3. Add the capability to delete Books from the main list.
<br>
<br>
<br>
  
## Implementation: 
There are two table views used for that app:

<img src="/FavoriteBook-screens/tableViews.png" width="90%">
<br>

1. The __first Table View__ is a Prototype Table View and initially is an empty table, where User can start adding an information about his favorite Books.

<img src="/FavoriteBook-screens/screen01.png" width="25%"> 

After User has pressed _Add_ button, next will be initialized _second Table View_.
<br>
<br>

2. The __second Table View__ is a Static Table View, where each text field is in its own cell and each cell is in its own section. There are five sections. First four enables User to add such information as:
  * Book Title
  * Author
  * Genre
  * Length
  
<img src="/FavoriteBook-screens/screen02.png" width="25%"> <img src="/FavoriteBook-screens/screen04.png" width="25%">

And the last section is for the _Save_ button.
<br>
<br>

3. After information about Book is added and _Save_ button was pressed, App will come back to the first screen. Here again will be provided a list containing all saved Books with included recently saved Book:

<img src="/FavoriteBook-screens/screen03.png" width="25%">

This list enables User to see all added Books, also select and edit each Book by tapping on it's row. For sure, is still possible to add next new Book by pressing _Add_ button in top-right screen corner.
<br>
<br>

4. Delete existing Book function could be enabled by sweaping selected Book's row from the right to the left as same common way as for other wellknown iOS Apps:

<img src="/FavoriteBook-screens/screen05.png" width="25%">
<br>   
<br>
<br>

## About Code:
FavoriteBook app's project consits of standart Xcode for single view app generated files + other four mannually created _.swift_ files named: _Book_, _BookTableViewController_, _BookTableViewCell_, _BookFormTableViewController_. 

<img src="/FavoriteBook-screens/code-files.png" width="25%">

__Book.swift__ is like a house for model definitions, includes structures that hold the question data. This file used to define all the structures necessary for Personality Quiz.

__BookTableViewController.swift__ maintains _First View Controler_ and holds minimally needed logic neccesary to launch Quiz and move next forward throught app's screens. 

__BookTableViewCell.swift__ maintains _Second View Controler_ and holds main part of app functionality. Here is included an array with _Question_ objects, that enables to store quiz questions with answers options as well as logic to display Questions with the Right Controls embed in different Stack Views respectively. 

__BookFormTableViewController.swift__ is _Cocoa Touch Class_ file





maintains _Third View Controler_ and receives data from previuose View Controller. Here is implemented final logic calculating answer frequency and presenting the final outcome of the Quiz.
<br>
<br>
<br>

## References:
“App Development with Swift”. Apple Inc. - Education, 2019. Apple Books. pages: 654-656
https://books.apple.com/us/book/app-development-with-swift/id1465002990
