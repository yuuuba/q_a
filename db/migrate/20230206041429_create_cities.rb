class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.references :prefecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
