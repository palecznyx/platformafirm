class CreateAds < ActiveRecord::Migration
  create_table :ads do |t|
    t.string :image

    t.timestamps null: false
  end
end
