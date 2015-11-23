class CreateKactions < ActiveRecord::Migration
  def change
    create_table :kactions do |t|
      t.belongs_to :kpi, index: true
      t.text :description
      t.string :target
      t.timestamps null: false
    end
  end
end
