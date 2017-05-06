class CreateJais < ActiveRecord::Migration[5.0]
  def change
    create_table :jais do |t|
      t.string :index
      t.string :new
      t.string :edit
      t.string :show

      t.timestamps
    end
  end
end
