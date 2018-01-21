class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.json :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :revision, foreign_key: true

      t.timestamps
    end
  end
end
