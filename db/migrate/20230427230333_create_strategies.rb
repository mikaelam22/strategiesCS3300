class CreateStrategies < ActiveRecord::Migration[6.1]
  def change
    create_table :strategies do |t|
      t.string :title
      t.text :description
      t.string :agent
      t.string :map
      t.string :side
      t.integer :difficulty

      t.timestamps
    end
  end
end
