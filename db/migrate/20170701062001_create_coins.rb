class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :ticker
      t.string :coin_name
      t.string :description

      t.timestamps
    end
  end
end
