class CreateJoinTableSubscriberPlans < ActiveRecord::Migration[6.0]
  def change
    create_join_table :subscribers, :plans do |t|
      t.index [:subscriber_id, :plan_id]
      # t.index [:plan_id, :subscriber_id]
    end
  end
end
