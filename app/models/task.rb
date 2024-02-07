class Task < ApplicationRecord
  enum status: [:todo, :in_progress, :done]
  validates :title, :description,  presence: true
end
