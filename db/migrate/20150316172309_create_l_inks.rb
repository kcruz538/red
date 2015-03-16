class CreateLInks < ActiveRecord::Migration
  def change
    create_table :l_inks do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
