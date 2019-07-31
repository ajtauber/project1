# README

# TODO:
* Table Checklist
  * Customer - [x]
  * Ticket - [x]
  * Instructor - [x]
  * Resort - [x]
* Views Checklist
  * Customer - [x]
    - New, - [x]
    - Edit, - [x]
    - Index - [x]
  * Tickets - [x]
    - Index, - [ ]
    - Show, - [ ]
    - New - [ ]
  * Instructor - [ ]
    - Index, - [ ]
    - Show, - [ ]
    - Edit, - [ ]
    - New - [ ]
  * Resort - [ ]
    - Show, - [ ]
    - Index - [ ]
* Controllers Checklist
    * Customer - [x]
    * Tickets - [x]
    * Resorts - [x]
    * Instructors - [x]
    * login - [x]
      * Session - [x]
      * Pages - [x]
* Add data to seed file, once completed - `db:seed` - [ ]
* Add Resort Table `rails generate model Resort resort_id:integer name:text  height:integer lifts:integer location:text runs:integer image:text customer_id:integer instructor_id:integer ticket_id:integer restaurant_id:integer rental_id:integer`
* Add *Renatal* & *Restaurant Table* once done with core components
* Add Features later
    * *Renting*
* Associations Checklist
  * Customers-to-Instructors -[]
  * Customer-to-Login - [x]
  * Resort-to-Instructors - [x]
  * Resort-to-Customers - [x]
  * Resort-to-Tickets - [x]
-------------- - - - --------------
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
