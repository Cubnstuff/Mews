class CreateMewTags < ActiveRecord::Migration
  def change
    create_table :mew_tags do |t|
      t.integer :mew_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
