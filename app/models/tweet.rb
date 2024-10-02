class Tweet < ApplicationRecord
  validates :message, length: {minimum: 1, maximum: 140}
end
