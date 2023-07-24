class CreateAppserverstatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :appserverstatuses do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
