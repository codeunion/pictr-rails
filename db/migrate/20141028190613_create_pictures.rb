class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture, { null: false }
      t.string :caption, { null: false, default: "" }
      t.text :description, { null: false, default: "" }
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
