class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string      :title
      t.string      :hover_text
      t.string      :image

      t.references  :chapter, index: true

      t.timestamps null: false
    end
  end
end
