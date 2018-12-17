class CreateUserMonologues < ActiveRecord::Migration[5.2]
  def change
    create_table :user_monologues do |t|
      t.integer :user_id
      t.integer :monologue_id

      t.timestamps
    end
  end
end
