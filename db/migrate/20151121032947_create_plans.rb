class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :goal

      t.timestamps null: false
    end
  end
end
