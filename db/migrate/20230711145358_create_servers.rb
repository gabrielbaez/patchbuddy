class CreateServers < ActiveRecord::Migration[7.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.references :operatingsystem, null: false, foreign_key: true
      t.references :appserver, null: false, foreign_key: true
      t.references :appserver_version, null: false, foreign_key: true
      t.references :environment, null: false, foreign_key: true
      t.references :appserverstatus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
