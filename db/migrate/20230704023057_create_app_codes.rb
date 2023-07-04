class CreateAppCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :app_codes do |t|
      t.string :name
      t.string :description
      t.string :manager
      t.string :manager_email
      t.string :support_email

      t.timestamps
    end
  end
end
