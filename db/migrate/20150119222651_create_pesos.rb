class CreatePesos < ActiveRecord::Migration
  def change
    create_table :pesos do |t|
      t.date :fecha
      t.integer :peso
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
