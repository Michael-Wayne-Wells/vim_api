require 'csv'

CSV.foreach(Rails.root.join('lib/vimcheatsheet.csv'), headers: true) do |row|
  
  CheatSheet.create({
    key_stroke: row[0],
    result: row[1]
  })end
