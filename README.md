# Chef-It-Up
Group Project - README Template
===

# Chef It Up!

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
User will be able to obtain various cuisine recipes by selecting filters based on their preference at the given time.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Food
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as other similar apps. Functionality wouldn’t be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Selection of various cuisine recipes, along with the option of filtering the selections to narrow down searches.
- **Market:** Any individual can utilize this app, however it can be filtered to display certain foods.
- **Habit:** This app can be used anytime a user would like to cook a specific cuisine.
- **Scope:** First, we would like for the app to have a filtering option for different types of cuisine. Eventually, we would like for it to allow users to upload their own recipes and recieve feedback as well as give feedback to other recipes.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a profile and sign-in
* User can scroll through various cuisines and select the preferred recipe
* User can save recipes to their profile that they favorite
* User can filter cuisines
* User can rate and leave reviews, as well as read reviews 

**Optional Nice-to-have Stories**

* User can upload their own recipes that can be viewed on their profile
* User can view a recipe of the day
* Page of highest rated foods
* History of previous recipes
* Further filtering of cuisine to select a specific type of recipe
* User can search for specific recipes

### 2. Screen Archetypes

* Login
* Register
    * Upon reopening the app, user remains logged in until signing out directly
* Cuisine Screen - User can view various cuisines
    * Upon selecting cuisine, user can view recipes
* Profile Screen
    * User can upload profile picture, select preferences and view their favorite recipes 
* Recipe Screen
    * User can view a picture of selected recipe, view the ratings, and read directions


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Cuisine Selection
* Recipe List
* Profile

**Optional**

* Highest Rated Foods
* History Page
* Specific type of recipe
* Search for recipes

**Flow Navigation** (Screen to Screen)

* Forced Log-in -> Account creation if no log in is available
* Cuisine Selection -> Jumps to recipe list
* Profile -> Text field to be modified
* Recipe Selection -> Displays recipe directions and picture

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
