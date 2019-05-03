class CreateChocovoteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :chocovoteurs do |t|
      t.string :pseudo
      t.binary :vote

      t.timestamps
    end
  end
end
