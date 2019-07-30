# README

# TODO:
* Table Checklist
  * Customer **DONE**
  * Ticket **DONE**
  * Instructor **DONE**
  * Resort
    * `rails generate model Resort......`
* Views Checklist
  * Customer `rails generate View`? **DONE**
    - New,
    - Edit,
    - Index
  * Tickets
    - Index,
    - Show,
    - New
  * Instructor
    - Index,
    - Show,
    - Edit,
    - New
  * Resort
    - Show,
    - Index
* Controllers Checklist `rails generate Controller Instructor.....`
    * Customer **DONE**
    * Tickets **Add components**
    * Resorts **Add Controller**
    * Instructors **Add Controller**
    * login **DONE**
      * Session **DONE**
      * Pages
* Add data to seed file, once completed - `db:seed`
* Add Resort Table `rails generate model Resort resort_id:integer name:text  height:integer lifts:integer location:text runs:integer image:text customer_id:integer instructor_id:integer ticket_id:integer restaurant_id:integer rental_id:integer`
* Add *Renatal* & *Restaurant Table* once done with core components
* Add Features later
*
    * *Renting*
* Associations
  * For every Customer they get 1 login
  * 1 customer has 1 login
  * 1 ticket is associated to 1 customer
  * Many Resorts can be skied by Many Customers
    *  `customer_resort`
  * Many Resorts Have Many Instructors
    * `instructor_resort`
  * Many Instructors can teach Many Students(Customers)
  * Many Customers can learn from Many Instructors
  * *Many Customers can learn from 1 Instructor (Repeatively)*
  * Resort is dependent on customer_id, ticket_id, instructor_id
  * Instructor is dependent on customer_id, ticket_id, resort_id
  * Customer_Resort  `customer_id:integer resort_id:integer`
  * Instructor_Resort `instructor_id:integer resort_id:integer`
      * `instructor_id belongs_to_and_has_many`
* Ticket Associations
  * Customer_Ticket `customer_id:integer ticket_id:integer`
    * `customer_id has_one ticket_id`
