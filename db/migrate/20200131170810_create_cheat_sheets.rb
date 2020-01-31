class CreateCheatSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :cheat_sheets do |t|
      t.string :action
      t.string :result

      t.timestamps
    end
  end
end
