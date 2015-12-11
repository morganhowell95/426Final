class CreateUsercodes < ActiveRecord::Migration
  def change
    create_table :usercodes do |t|
      t.text :code
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
