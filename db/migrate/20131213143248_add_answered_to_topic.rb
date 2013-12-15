class AddAnsweredToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :answered, :boolean, :default => false
  end
end
