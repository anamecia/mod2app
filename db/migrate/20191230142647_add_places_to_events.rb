class AddPlacesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :places, :integer
  end
end
