class CreateUsermonologues < ActiveRecord::Migration[5.2]
  def change
    create_table :usermonologues do |t|
      t.belongs_to :user, index: true
      t.belongs_to :monologue, index: true

      t.timestamps
    end
  end
end
