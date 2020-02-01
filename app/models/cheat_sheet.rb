# frozen_string_literal: true

class CheatSheet < ApplicationRecord
  has_and_belongs_to_many(:actions_tags)
  scope :search, ->(search) { where('key_stroke ilike :search OR result ilike :search', search: "%#{search}%") }
  scope :random, -> { order('RANDOM()').first }
end
