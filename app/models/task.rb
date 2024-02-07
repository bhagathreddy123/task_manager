class Task < ApplicationRecord
  enum status: [:todo, :in_progress, :done]
end
