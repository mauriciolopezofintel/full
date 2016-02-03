class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.references :procedure, index: true
      t.string :name
      t.string :detail
      t.integer :number

      t.timestamps
    end
  end
end
