class CreatePosteos < ActiveRecord::Migration[5.2]
  def change
    create_table :posteos do |t|
      t.string :titulo
      t.text :cuerpo

      t.timestamps
    end
  end
end
