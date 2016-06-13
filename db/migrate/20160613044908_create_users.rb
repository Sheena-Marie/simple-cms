class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      # this is the long way of writing things
      t.column "first_name", :string, :limit => 25
      # This is the shorter way to write things
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40

      # t.datetime "created_at"
      # t.datetime "updated_at"

      # t.datetime above is included in the t.timestamps below
      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end

end
