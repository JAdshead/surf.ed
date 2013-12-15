class Answers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :user
      t.belongs_to :topic
      t.text       :answer
      t.timestamps
    end
  end
end
