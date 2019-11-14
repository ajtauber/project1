# README
## PROJECT #1 Description
### DESCRIPTION

It's time to put everything that you've learned in the past 5 weeks together! For project #1 you will use your knowledge of front and back-end web development to produce an awesome web application that can be used by friends, family or any of the other billions of people who use the Internet. The type of web application you create is your choice.

The objective of this project is to:

To pull everything together by building a web application from the ground up.
To demonstrate mastery of topics covered during this course so far.

You will be working **individually** for this project. Show us what you've got!

## CORE REQUIREMENTS

* Models: - Your app should have at least 3 models. Make sure they are associated correctly!
* Views: - Use partials to DRY (Don’t Repeat Yourself) up your views.
* Handles invalid data: - Forms in your application should validate data and handle incorrect inputs. Validate sign up information, verify valid email addresses and secure passwords.
* Use Gems: - Use a GEM that talks to an API to add functionality to your app.
* User Login: - Make sure you have basic authentication and authorization set up (if you need it).
* Heroku: - Deploy your code to Heroku.
* Association Notes
  * **Many** Customers *can have* **Many** Logins
  * For every Customer they get **1** *login*
  * **1** customer *has* **1** login
  * **1** ticket *is associated to* **1** customer
  * **Many** Resorts *can be skied by* Many Customers
    *  `create_customer_resort`
    *  `customer_id:integer resort_id:integer`
  * **Many** Resorts *maintains/ is managed by* **Many** Instructors
    * `instructor_resort`
  * **Many** Instructors *can teach* **Many** Customers(Students)
  * **Many** Customers *can learn from* **Many** Instructors
  * *Many Customers can learn from 1 Instructor (Repeatively)*
  * Resort is dependent on customer_id, ticket_id, instructor_id
  * Instructor is dependent on customer_id, ticket_id, resort_id
  * Customer_Resort  `
  * Instructor_Resort `instructor_id:integer resort_id:integer`
      * `instructor_id belongs_to_and_has_many`
* Ticket Associations
  * Customer_Ticket `customer_id:integer ticket_id:integer`
    * `customer_id has_one ticket_id`

## Gems Added
* Tresle
* figaro
* jquery-rails
* bootstrap
* cloudinary


![Title](/readme-images/ski1.png)

<!-- ![Title](/readme-images/Routes1.png) -->
**ER Diagram**


![alt](/readme-images/ERDiagram.png)


##### Live Link

https://ski-resorts.herokuapp.com/
