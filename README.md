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
- **Category:** Food
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as other similar apps. Functionality wouldn’t be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Selection of various cuisine recipes, along with the option of filtering the selections to narrow down searches.
- **Market:** Any individual can utilize this app, however it can be filtered to display certain foods.
- **Habit:** This app can be used anytime a user would like to cook a specific cuisine.
- **Scope:** First, we would like for the app to have a filtering option for different types of cuisine. Eventually, we would like for it to allow users to upload their own recipes and recieve feedback as well as give feedback to other recipes.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [x] User can create a profile and sign-in
- [x] User can remain logged in and logout
- [x] User can scroll through various recipes and select the preferred recipe
- [ ] User can save recipes to their profile that they favorite
- [ ] User can rate and leave reviews, as well as read reviews 

**Optional Nice-to-have Stories**

- [ ] User can upload their own recipes that can be viewed on their profile
- [ ] User can view a recipe of the day
- [ ] Page of highest rated foods
- [ ] History of previous recipes
- [ ] User can filter by cuisines
- [ ] Further filtering of cuisine to select a specific type of recipe
- [ ] User can search for specific recipes

### 2. Screen Archetypes

* Login
* Register
    * Upon reopening the app, user remains logged in until signing out directly
* Profile Screen
    * User can upload profile picture, select preferences and view their favorite recipes 
* Recipe Screen
    * User can view a picture of selected recipe, view the ratings, and read directions


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Recipe List
* Recipe Instructions
* Profile
* Favorites
* Sign In/Up

**Optional**

* Highest Rated Foods
* History Page
* Specific type of recipe
* Search for recipes

**Flow Navigation** (Screen to Screen)

* Recipe Selection -> Displays recipe directions and picture 
* Login/Sign up -> Sign up if new, login if already existing (remains logged in until logout)
* Profile -> Text field to be modified
* Favorites -> Favorite recipes

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="http://g.recordit.co/T9HNEX3zvR.gif" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
<img src="https://user-images.githubusercontent.com/46541210/55448231-fc6c7d80-5594-11e9-926d-75d0b0e7d82c.png" width=600>
### Networking

**Login Screen**
* (Read/GET) Query user login credentials
* (Update/PUT) User credentials for forgotten password
* (Create/UPDATE) User sign up credentials 

**Home Feed Screen** 
* (Read/GET) Query all posts 
* (Read/GET) Filter posts 

**Create Recipe Screen**
* (Create/POST) Creates new recipe
* (Update/PUT) Add a picture of a recipe

**Recipe Screen**
* (Read/GET) Get the recipe selected
* (Read/GET) Get reviews
* (Create/POST) Create a review
* (Create/POST) Create a new favorite on a post
* (Delete) Delete existing favorite on post

**Profile Screen**
* (Read/GET) Query logged in user object
* (Update/PUT) Update user profile image
* (Create/POST) Create a biography
* (Update/PUT) Add recipes to favorite

**Favorite Screen**
* (Read/GET) Query favorited recipes
* (Delete) Delete existing favorited recipe


## Milestone GIF Walkthrough
<img src="http://g.recordit.co/6Hd5e3XrPu.gif" width=200>




