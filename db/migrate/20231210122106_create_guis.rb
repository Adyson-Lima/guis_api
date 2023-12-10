class CreateGuis < ActiveRecord::Migration[7.0]
  def change
    create_table :guis do |t|
      t.string :project
      t.string :description

      t.timestamps
    end
  end
end
