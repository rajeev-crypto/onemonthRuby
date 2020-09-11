class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :url
      t.string :description
      t.text :text

      t.timestamps
    end
  end
end
