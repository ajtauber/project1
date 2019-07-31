require "administrate/base_dashboard"

class InstructorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    instructor_id: Field::Number,
    instructor_name: Field::Text,
    salary: Field::Number.with_options(decimals: 2),
    resort_name: Field::Text,
    level: Field::Number,
    resort_id: Field::Number,
    customer_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :instructor_id,
    :instructor_name,
    :salary,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :instructor_id,
    :instructor_name,
    :salary,
    :resort_name,
    :level,
    :resort_id,
    :customer_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :instructor_id,
    :instructor_name,
    :salary,
    :resort_name,
    :level,
    :resort_id,
    :customer_id,
  ].freeze

  # Overwrite this method to customize how instructors are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(instructor)
  #   "Instructor ##{instructor.id}"
  # end
end
