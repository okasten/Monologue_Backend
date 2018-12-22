class CreateMonologues < ActiveRecord::Migration[5.2]
  def change
    create_table :monologues do |t|
      t.string :character
      t.string :genre
      t.string :play
      t.integer :age
      t.text :script
      t.string :length
      t.string :scanFile
      t.string :videoFile
      t.text :notes

      t.timestamps
    end
  end
end
