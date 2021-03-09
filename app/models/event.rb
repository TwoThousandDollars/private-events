class Event < ApplicationRecord
    belongs_to :host, class_name: "User"

    has_many :attendees, through: :rsvps, source: :user
    has_many :rsvps
end
