class Question < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :user
      t.string :question
      t.string :video
      t.timestamps
    end
  end
end
