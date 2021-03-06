require "administrate/base_dashboard"

class TicketDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    ticket_id: Field::Number,
    price: Field::Number.with_options(decimals: 2),
    expiry_date: Field::DateTime,
    duration: Field::DateTime,
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
    :ticket_id,
    :price,
    :expiry_date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :ticket_id,
    :price,
    :expiry_date,
    :duration,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :ticket_id,
    :price,
    :expiry_date,
    :duration,
  ].freeze

  # Overwrite this method to customize how tickets are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(ticket)
  #   "Ticket ##{ticket.id}"
  # end
end
