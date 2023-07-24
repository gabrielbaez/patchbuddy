class CreateOperatingsystems < ActiveRecord::Migration[7.0]
  def change
    create_table :operatingsystems do |t|
      t.string :name
      t.string :description
      t.date :support_start
      t.date :support_end

      t.timestamps
    end
  end
end
