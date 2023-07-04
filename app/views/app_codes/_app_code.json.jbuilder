json.extract! app_code, :id, :name, :description, :manager, :manager_email, :support_email, :created_at, :updated_at
json.url app_code_url(app_code, format: :json)
