File.open('words','r') do |file|
  file.each_line do |line|
    Word.create(word: line.chomp, sorted: line.chomp.downcase.split(//).sort.join,
     length: line.chomp.length)
  end
end

