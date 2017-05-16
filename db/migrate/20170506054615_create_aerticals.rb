class CreateAerticals < ActiveRecord::Migration[5.0]
  def change
    create_table :aerticals do |t|
      t.string :novel
      t.string :fiction
      t.string :comedy

      t.timestamps
    end
  end
end
