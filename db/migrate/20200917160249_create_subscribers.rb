class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.string :email, unique: true
      t.string :first_name
      t.string :last_name
      t.integer :source
      t.string :verified

      t.timestamps
    end
    add_index :subscribers, :verified
  end
end
