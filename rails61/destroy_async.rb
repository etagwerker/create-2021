class Account < ApplicationRecord
  belongs_to :supplier, dependent: :destroy_async
end

# `:destroy_async` will enqueue a job to destroy associated records in the background.