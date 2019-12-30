class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :price
      t.date :date
      t.string :title
      t.string :description
      t.integer :category_id
      t.integer :host_id

      t.timestamps
    end
  end
end
