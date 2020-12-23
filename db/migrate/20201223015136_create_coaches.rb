class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :gender
      t.integer :age
    end
  end
end
