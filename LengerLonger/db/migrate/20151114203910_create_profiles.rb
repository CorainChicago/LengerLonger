class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :city
      t.string :fav_quote
      t.string :goal
      t.string :user_id

      t.timestamps null: false
    end
  end
end
