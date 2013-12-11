class Topic < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.belongs_to :user
      t.string     :question
      t.string     :description
      t.string     :yt_video_id
      t.boolean    :is_complete, :default => false
      t.timestamps
    end
  end
end
