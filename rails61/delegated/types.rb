# Schema: entries[ id, account_id, creator_id, created_at, updated_at, entryable_type, entryable_id ]
class Entry < ApplicationRecord
  belongs_to :account
  belongs_to :creator
  delegated_type :entryable, types: %w[ Message Comment ]
end

# To be included in delegated classes
module Entryable
  extend ActiveSupport::Concern

  included do
    has_one :entry, as: :entryable, touch: true
  end
end