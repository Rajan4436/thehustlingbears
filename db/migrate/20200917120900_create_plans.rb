class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :frequency
      t.string :link
      t.string :text
      t.string :title

      t.timestamps
    end
  end
end
