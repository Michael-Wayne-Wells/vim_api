class AddCheatsheeTagJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :action_tags_cheat_sheets, id: false do |t|
      t.belongs_to :action_tag, index: true
      t.belongs_to :cheat_sheet, index: true
    end
  end
end
