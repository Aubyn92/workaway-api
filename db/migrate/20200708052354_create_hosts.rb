class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :location
      t.string :work_category
      t.text :work_description
      t.integer :time
      t.boolean :accommodation

      t.timestamps
    end
  end
end
