if Rails.env.production?
  ActiveSupport::Deprecation.disallowed_behavior = [:log]
else
  ActiveSupport::Deprecation.disallowed_behavior = [:raise]
end