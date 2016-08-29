class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :color
      t.boolean :all_day, default: false
      t.integer :repeat_type
      t.integer :repeat_every
      t.references :user
      t.references :calendar
      t.datetime :start_date
      t.datetime :finish_date
      t.datetime :start_repeat
      t.datetime :end_repeat
      t.datetime :exception_time
      t.integer :exception_type
      t.integer :old_exception_type
      t.integer :parent_id
      t.references :place
      t.string :name_place
      t.string :chatwork_room_id
      t.text :task_content
      t.text :message_content
      t.string :google_event_id
      t.string :google_calendar_id
      t.string :name_place
      t.integer :permission, default: 0

      t.timestamps null: false
    end
    add_index :events, :google_event_id
    add_index :events, :google_calendar_id
    add_index :events, :name_place
    add_index :events, :permission
  end
end
