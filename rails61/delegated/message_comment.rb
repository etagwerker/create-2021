# Schema: messages[ id, subject ]
class Message < ApplicationRecord
  include Entryable
  has_rich_text :content
end

# Schema: comments[ id, content ]
class Comment < ApplicationRecord
  include Entryable
end