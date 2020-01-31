class ChangeActionColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cheat_sheets, :action, :key_stroke
 end
end
