class AddBirthDateToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :birth_date, :datetime
  end
end
