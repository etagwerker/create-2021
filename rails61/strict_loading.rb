class Developer < ApplicationRecord
  self.strict_loading_by_default = true

  has_many :projects
end

dev = Developer.first
dev.projects.first
# raises ActiveRecord::StrictLoadingViolationError Exception: Developer is
# marked as strict_loading and Project cannot be lazily loaded.

dev = Developer.includes(:projects).first
dev.projects.first
# this works
