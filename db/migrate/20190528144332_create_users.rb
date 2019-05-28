class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthday
      t.string :telephone_number
      t.string :img_url

      t.timestamps
    end
  end
end
