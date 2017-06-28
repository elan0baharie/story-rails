class CreateUsersentences < ActiveRecord::Migration[5.1]
  def change
    create_table :usersentences do |t|
      t.column :image, :string
      t.column :user, :string
      t.column :sentence, :string
      t.timestamps
    end
  end
end
