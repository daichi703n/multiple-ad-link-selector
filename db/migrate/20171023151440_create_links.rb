class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|

      t.integer :sort
      t.string :description
      t.text :link
      t.boolean :enabled

      t.timestamps
    end
  end
end
