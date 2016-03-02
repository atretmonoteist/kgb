class CreateScandos < ActiveRecord::Migration
  def change
    create_table :scandos do |t|
      t.string :do_name
      t.text :do_description
      t.string :do_address
      t.string :do_phone
      t.string :do_fax

      t.timestamps null: false
    end
  end
end
