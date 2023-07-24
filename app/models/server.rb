class Server < ApplicationRecord
  belongs_to :operatingsystem
  belongs_to :appserver
  belongs_to :appserver_version
  belongs_to :environment
  belongs_to :appserverstatus
end
