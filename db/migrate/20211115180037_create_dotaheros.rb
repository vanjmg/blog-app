class CreateDotaheros < ActiveRecord::Migration[6.1]
  def change
    create_table :dotaheros do |t|
      t.string :name
      t.string :atrtype

      t.timestamps
    end
  end
end
