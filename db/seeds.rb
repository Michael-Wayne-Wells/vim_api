require 'csv'
CheatSheet.delete_all
CSV.foreach(Rails.root.join('lib/vimcheatsheet.csv'), headers: false) do |row|
 
  CheatSheet.create({
    key_stroke: row[0],
    result: row[1]
  })end
puts "#{CheatSheet.count} commands added."
