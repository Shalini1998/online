class Task < ApplicationRecord
  STATUS = %w[done inprogress pending].freeze
  belongs_to :user, optional: true
end
