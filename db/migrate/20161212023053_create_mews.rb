class CreateMews < ActiveRecord::Migration
  def change
    create_table :mews do |t|
      t.string :message
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
