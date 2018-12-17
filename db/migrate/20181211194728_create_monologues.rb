class CreateMonologues < ActiveRecord::Migration[5.2]
  def change
    create_table :monologues do |t|
      t.string :character
      t.string :play
      t.integer :age
      t.text :script
      t.string :length

      t.timestamps
    end
  end
end
