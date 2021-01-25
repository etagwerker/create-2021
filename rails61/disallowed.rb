ActiveSupport::Deprecation.disallowed_warnings = [
  "bad_method",
   :worse_method,
  /(horrible|unsafe)_method/,
]

# Or disallow everything:

ActiveSupport::Deprecation.disallowed_warnings = :all