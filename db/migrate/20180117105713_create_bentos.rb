class CreateBentos < ActiveRecord::Migration[5.1]
  def change
    create_table :bentos do |t|
      t.string :bento_name
      t.integer :price
      t.text :content

      t.timestamps
    end
  end
end
