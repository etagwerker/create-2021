# If you need the attachment to use a service which differs from the globally configured one,
# pass the +:service+ option. For instance:
class User < ActiveRecord::Base
  has_one_attached :avatar, service: :s3
end