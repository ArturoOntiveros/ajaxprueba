class CreateQuejas < ActiveRecord::Migration
  def change
    create_table :quejas do |t|
      t.references :user, index: true, foreign_key: true
      t.text :text

      t.timestamps null: false
    end
  end
end
