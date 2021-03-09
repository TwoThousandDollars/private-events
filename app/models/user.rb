class User < ApplicationRecord
    has_many :events, inverse_of: :host
    has_many :attended_events, through: :rsvps, source: :events
    has_many :rsvps
end