# FavoriteBook
Simple iOS App - done as Apple Education Lab task for learning purposes in 2020 May

[Description](#description)

[Implementation](#implementation)

[About Code](#about-code)

[References](#references)

## Description:
The objective of this lab is to implement intermediate table view features into an app that keeps track of user's favorite books.

#### This app accomplish three main goals:
  1. Replace existing form provided source file _FormViewController_ with a static table view”
  
  2. Add the capability to delete books from the main list of books.
  
  3. Create a custom table view cell to better display the details of each book in the main list.
<br>
<br>
<br>
  
## Implementation: 
There are two table views used for that app:

<img src="/FavoriteBook-screens/tableViews.png" width="90%">
<br>
<br>

1. The __first Table View__ initially is an emty table where User can add information about his favorite book. Information such as:
  * Title
  * Author
  * Genre
  * Length
<img src="/FavoriteBook-screens/screen01.png" width="20%"> 
<br>
<br>

2. The __second view controller__ displays a question and several answers, and manages the responses. This view controller is refreshed for each question, and depending on what kind of question, the right controls will be displayed:

<img src="/FavoriteBook-screens/screen02.png" width="20%"> <img src="/FavoriteBook-screens/screen03.png" width="20%"> <img src="/FavoriteBook-screens/screen04.png" width="20%">

Here above:

   __Question #1__ is a multiple-choice question, where only one answer is valid.
    For this question, here is used a button for each food.
   
   __Question #2__ can have zero or more answers. Here are used switches, so players can select as many foods as they like, as well as a button to submit their choices.
   
   __Question #3__ involves a 0-to-1 scale slider for choosing answer and button to submit that answer.
<br>   
<br>

3. The __third view controller__ tallies up the answers and presents the final outcome. This result can be dismissed, allowing another player to start the Quiz from the first view controller:

<img src="/FavoriteBook-screens/screen05.png" width="20%">
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
