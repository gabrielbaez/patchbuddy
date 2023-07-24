class AppCode < ApplicationRecord
  validates :name, :description, :manager,:manager_email,:support_email, :presence => true

end
