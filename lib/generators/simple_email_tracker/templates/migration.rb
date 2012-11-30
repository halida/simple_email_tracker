class CreateSimpleEmailTrackerTables < ActiveRecord::Migration
  def change
    create_table :simple_email_tracker_visits do |t|
      t.string :uuid
      t.string :key
      t.string :ip
      t.integer :count, default: 0
      t.string :user_agent
      t.datetime :first_visited_at
      t.datetime :last_visited_at

      t.timestamps
    end
    add_index :simple_email_tracker_visits, :uuid
    add_index :simple_email_tracker_visits, :key
  end
end
