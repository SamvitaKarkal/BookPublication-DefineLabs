class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.datetime :date_fo_birth
      t.timestamps
    end
  end
end
