class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :list
      t.references :trip, foreign_key: true
    end
  end
end
