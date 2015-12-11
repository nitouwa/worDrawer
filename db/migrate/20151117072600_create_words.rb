class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.text :text
      t.string :category
      t.string :status
      t.integer :user_id
      t.timestamps
    end
  end
end
