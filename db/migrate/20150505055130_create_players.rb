class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postal_code
      t.string :country_code
      t.integer :grade_id

      t.timestamps null: false
    end
  end
end
