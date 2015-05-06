class AddColourFieldToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :colour, :string
  end
end
