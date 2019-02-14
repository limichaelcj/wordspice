class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.references :user, foreign_key: true
      t.references :tag, foreign_key: true
      t.references :word, foreign_key: true

      t.timestamps
    end
  end
end
