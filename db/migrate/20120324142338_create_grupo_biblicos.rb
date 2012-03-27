class CreateGrupoBiblicos < ActiveRecord::Migration
  def change
    create_table :grupo_biblicos do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :mail
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
