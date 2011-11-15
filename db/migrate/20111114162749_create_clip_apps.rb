class CreateClipApps < ActiveRecord::Migration
  def self.up
    create_table :clip_apps do |t|
      t.integer :clip_list_id
      t.integer :medium_id
      t.integer :user_id
      t.text :time_in
      t.text :time_out
      t.integer :shot_number
      t.text :description
      t.boolean :deleted
      t.timestamp :created_at
      t.timestamp :updated

      t.timestamps
    end
  end

  def self.down
    drop_table :clip_apps
  end
end
