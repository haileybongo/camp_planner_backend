class ChangeNameNameToList < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :name, :list
  end
end
