json.extract! server, :id, :name, :operatingsystem_id, :appserver_id, :appserver_version_id, :environment_id, :appserverstatus_id, :created_at, :updated_at
json.url server_url(server, format: :json)
