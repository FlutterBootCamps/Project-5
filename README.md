# App Cloning Project
Welcome to the Flutter assignment project! In this assignment, you will be tasked with cloning a given app based on your assigned group (A, B, or C). Your objective is to implement the main functionality of the app and create at least 5 main screens.

## Overview
As a trainee, you will need to follow these guidelines for completing the assignment:
- Clone the provided app based on your assigned group.
- Implement the main functionality of the app as accurately as possible.
- Create at least 5 main screens of the app to demonstrate your understanding and proficiency in Flutter development.
- Utilize all past concepts learned in Dart and Flutter.

## Group Assigned
You have been assigned in this group:
- Group A: **Saudia Airline**

---------------
## HomePage
In this page most of the functionality resides, the user has many interactions to do, we'll view each one seperately.
<br><br>
<img width="209" alt="project5_p1" src="https://github.com/hmody360/Project-5/assets/98014312/ed3322bf-d0a7-461a-8334-f68b74c2dda4">
<img width="208" alt="project5_p2" src="https://github.com/hmody360/Project-5/assets/98014312/9a5aff35-73e8-4ef2-814c-d889c0cb1d52">
<br><br>

### The Helpful Drawer 
This drawer contains many links and functionalties that help the user learn more about the Saudia App services and adjust their own settings.
<br><br>
<img width="207" alt="project5_p3" src="https://github.com/hmody360/Project-5/assets/98014312/09014f4c-ce36-403b-9683-446009918041">
<img width="204" alt="project5_p4" src="https://github.com/hmody360/Project-5/assets/98014312/521f5d97-6e1a-4861-8248-ccd6e3b733ad">

### The Check-in page
This page enables the user to check-in in advance for their bookings, as you can notice, the check-in button will only activate when the user completes the correct crieteria, which is selecting ID type, typing the 12 digit Id and thier last name, then the button will be activated.
<br><br>
<img width="208" alt="project5_p5" src="https://github.com/hmody360/Project-5/assets/98014312/ffbbc465-ada0-4927-b647-60cb3bb85f16">
<img width="206" alt="project5_p6" src="https://github.com/hmody360/Project-5/assets/98014312/64e8fc91-fba7-4c28-b6de-432894af5fbb">
<img width="206" alt="project5_p7" src="https://github.com/hmody360/Project-5/assets/98014312/c2a68aa1-4f7f-4a42-a198-5b93adcd8c4c">
<br><br>

### What's new scroller
This section contains the many features the app offers to its users, by displaying them in a beautiful manner, the user can scroll sideways to check each card, and clicking on any of them will redirect the user to the respective link's page.
<br><br>
<img width="203" alt="project5_p8" src="https://github.com/hmody360/Project-5/assets/98014312/546d43a5-216d-4a48-bfe3-fe0dfd9e287b">
<img width="204" alt="project5_p9" src="https://github.com/hmody360/Project-5/assets/98014312/097dc3ce-e794-40aa-8a62-b1a5d102a01d">
<br><br>

### HomePage City Selector
This button enables the user to pick their "From" city and it will show a small bottom sheet where the user can pick between the city options, as we can see there will be a checkmark next to the currently selected city, when the user clicks the checkmark is changed and the Homepage will also be slightly altered, the background will change based on the selected city, the city selector displayed city, and most importantly the other cities you can travel to from this city (it will show all other non-selected cities).
<br><br>
<img width="206" alt="project5_p10" src="https://github.com/hmody360/Project-5/assets/98014312/6c8e804f-5b1e-4420-8bae-c5aae7c26f97">
<img width="204" alt="project5_p11" src="https://github.com/hmody360/Project-5/assets/98014312/47f7bd22-c3e3-4206-afc5-bf3234ba7741">
<img width="204" alt="project5_p12" src="https://github.com/hmody360/Project-5/assets/98014312/c508724d-d566-4118-98c3-773d28a28996">
<br><br>

### How to book a trip
There are two main ways to access the booking functionality, either by clicking on the 'Book a flight' button, or the City card from below:
<br><br>
<img width="206" alt="project5_p13" src="https://github.com/hmody360/Project-5/assets/98014312/71025c4b-fa0b-4179-b43f-429612abcad3">
<br><br>

- Result 1: The user used the 'Book a flight' button which will show them the previously selected From city with them having to pick the To city:
<br><br>
<img width="204" alt="project5_p14" src="https://github.com/hmody360/Project-5/assets/98014312/bdcd98b6-f386-483b-a531-0f5f6bac213e">
<br><br>

- Result 2: the user has seletced a city card, which will take them to the booking page, with the From city as the City selector's selected city, and the To city as the city they clicked on as a City Card:
<br><br>
<img width="204" alt="project5_p15" src="https://github.com/hmody360/Project-5/assets/98014312/2534c5da-1eef-4744-b996-9c7ad7317f9e">
<br><br>

## Book Flight Page
In this page the user is able to do many things, they can select the trip type (Roundtrip, One Way or Multi-City), as well as the From and To Cities as well as the ability to swap between them, selecting departure date or departure and comeback dates (based on trip type), as well as assign how many people will be going in the trip by age.
<br><br>
### Trip Type Selection
<br><br>
<img width="203" alt="project5_p16" src="https://github.com/hmody360/Project-5/assets/98014312/1549e0c2-39d9-419f-be59-83a180d77d01">
<br><br>
### City Selection (From & To)
As we can see here, if the user tries to pick a To City that is already set ad From city, or vice versa, they will get an error message.
<br><br>
<img width="203" alt="project5_p17" src="https://github.com/hmody360/Project-5/assets/98014312/1a6c7afa-2b53-41b7-9be3-08e349aece79">
<img width="203" alt="project5_p18" src="https://github.com/hmody360/Project-5/assets/98014312/195545dc-1dfb-494a-b65f-60d765a181fa">
<img width="202" alt="project5_p19" src="https://github.com/hmody360/Project-5/assets/98014312/76a0d9a3-e747-444a-af19-8195813356d9">
<img width="204" alt="project5_p20" src="https://github.com/hmody360/Project-5/assets/98014312/75327841-57af-493f-893f-645aa296eff7">
<br><br>
### Date Picking
The Date picker itself will change depending on the trip type, if it's a round trip, they'll have to choose a range date, otherwise they'll choose one date.
<br><br>
<img width="207" alt="project5_p21" src="https://github.com/hmody360/Project-5/assets/98014312/f8ef8379-dacb-4b00-af60-d90004d6d7ba">
<img width="203" alt="project5_p22" src="https://github.com/hmody360/Project-5/assets/98014312/fca82563-41f3-4da4-9b1d-bb282c827e1e">
<br><br>
### Passenger Quantity & Class Picking
The user can increase and decrease the number of passengers with the set limits by the app, and they can also select their class (Guest or busniess), the user can either cancel and reset the values, or confirm and change the quantites and class.
<br><br>
<img width="205" alt="project5_p23" src="https://github.com/hmody360/Project-5/assets/98014312/0f3bd34a-b04c-4b5a-852a-eb7000d0bcfd">
<br><br>

### Reflected changes
as we can see when the user selects either the date or passenger quantity and class, it will be shown within the Book Flight Page.
<br><br>
<img width="208" alt="project5_p25" src="https://github.com/hmody360/Project-5/assets/98014312/e02333da-0aff-46e5-a771-f97ac031bf5a">
<br><br>
### Search for flights
When searching for a flight there are two possible states,

- Result 1: The user has't picked either the From or To city yet, and clciked search:
<br><br>
<img width="213" alt="project5_p32" src="https://github.com/hmody360/Project-5/assets/98014312/308b0d85-d7d3-480c-834f-bcaeedcfc21b">
<br><br>

- Result 2: the user has entered both From and to cities and is able to access the search:
<img width="207" alt="project5_p26" src="https://github.com/hmody360/Project-5/assets/98014312/dd7b18de-d597-4de1-8c4a-63631d52fcdc">
<br><br>

## Search Flight Page
In this page the user is able to see their searched flights based on what they selected, the page will show all the details of the From and To city and the trups themselves, if the user clicks Book, the trip will be added to thier booked list, we can also notice how the selected city has changed based on our previous choice. 
<br><br>
<img width="206" alt="project5_p27" src="https://github.com/hmody360/Project-5/assets/98014312/d2150ebf-ea60-4eb1-b0eb-e11cd9576f37">
<img width="207" alt="project5_p28" src="https://github.com/hmody360/Project-5/assets/98014312/23a0acf4-27df-4bdd-adcd-d7f0f7e6c7c6">
<br><br>

## Trip Page
In this page the user can see their bookings, which are saved in their storage, this page has two states:

- Result 1: The page has no bookings yet:
<br><br>
<img width="206" alt="project5_p31" src="https://github.com/hmody360/Project-5/assets/98014312/fd5cc331-18ba-4168-a6f8-f9909cc99935">
<br><br>

- Result 2: The page has some previously booked bookings:
<br><br>
<img width="205" alt="project5_p35" src="https://github.com/hmody360/Project-5/assets/98014312/89ec727b-a455-4304-8f56-8f86630079be">
<br><br>

## Add a trip Page
This page is the same as the check-in page, but is used for adding previous outside app bookings, it has the same functionalties as the check-In Page.
<br><br>
<img width="206" alt="project5_p30" src="https://github.com/hmody360/Project-5/assets/98014312/65a33006-409a-4f78-b366-de6a0b7e4f12">
<br><br>

## AlFursan Page
This page introduces the user to alFursan program and its many benfiets, as we can see in the page, when the user slides, the indicator will move accordingly, also (the app had a glitch where clicking the indicators would change them, but not change the pages) which has been fixed here and is selectable in both ways.
<br><br>
<img width="208" alt="project5_p33" src="https://github.com/hmody360/Project-5/assets/98014312/994b9c0f-30a2-40a5-acc8-8a241833062b">
<img width="213" alt="project5_p34" src="https://github.com/hmody360/Project-5/assets/98014312/3ec750bd-a30b-4f0d-85a2-179e3c1c156c">

## Used Packages
- Bottom_navbar_with_indicator
- Custom_Date_Range_Picker
- Flutter_BloC
- Flutter_SVG
- Font_Awesome_Flutter
- Get_It
- Get_Storage
- Intl
- Smooth_Page_Indicator
- URL_Launcher
- Input_Quantity
- Custom_Flutter_Rounded_Date_Picker

## P.S
Thank you for reading this far, I hope you enjoy using the app, fly safely.