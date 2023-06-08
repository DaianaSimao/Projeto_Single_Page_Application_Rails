class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :vinculo
      t.string :titulo
      t.string :autor
      t.integer :edicao
      t.integer :issn
      t.integer :ano
      t.string :editora

      t.timestamps
    end
  end
end
