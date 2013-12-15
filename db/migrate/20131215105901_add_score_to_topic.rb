class AddScoreToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :score, :integer, default: 0
  end
end
