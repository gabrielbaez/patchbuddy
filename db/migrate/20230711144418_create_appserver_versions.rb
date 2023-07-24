class CreateAppserverVersions < ActiveRecord::Migration[7.0]
  def change
    create_table :appserver_versions do |t|
      t.references :appserver, null: false, foreign_key: true
      t.string :version

      t.timestamps
    end
  end
end
