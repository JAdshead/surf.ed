class AddAddedVideoToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :added_video, :boolean
  end
end
