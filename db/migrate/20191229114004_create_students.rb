class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :ancestry
      t.integer :ancestry_depth, default: 0

      t.timestamps
    end
    add_index :students, :ancestry
  end
end
