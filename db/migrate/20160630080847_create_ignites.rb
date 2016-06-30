class CreateIgnites < ActiveRecord::Migration
  def change
    create_table :ignites do |t|
      t.string :code
      t.string :name
      t.datetime :data

      t.timestamps null: false
    end
  end
end
