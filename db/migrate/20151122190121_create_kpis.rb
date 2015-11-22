class CreateKpis < ActiveRecord::Migration
  def change
    create_table :kpis do |t|
      t.belongs_to :plan, index: true
      t.text :description
      t.string :responsibility
      t.datetime :milestone
      t.timestamps null: false
      has_many :actions
    end
  end
end
