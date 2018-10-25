class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :ie_number
      t.string :email
      t.float :gpa
      t.string :lab

      t.timestamps
    end
  end
end
