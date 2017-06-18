class CreateMakeurls < ActiveRecord::Migration[5.1]
  def change
    create_table :makeurls do |t|
      t.string :num
      t.string :url

      t.timestamps
    end
  end
end
