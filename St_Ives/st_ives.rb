travelers = ["me","man"]
sacks = []
cats = []
kittens = []

#add wives
7.times do
    travelers.push("wife")
end

wife_count = travelers.count{|x|x=="wife"}

#add sacks
7.times do
    sacks.push("sack")
end

wife_count.times do
  travelers.push(sacks)
end

travelers.flatten!
sack_count = travelers.count{|x|x=="sack"}

#add cats
7.times do
    cats.push("cat")
end

sack_count.times do
    travelers.push(cats)
end
travelers.flatten!
cat_count = travelers.count{|x|x=="cat"}

#add kittens
7.times do
    kittens.push("kitten")
end

cat_count.times do
    travelers.push(kittens)
end
travelers.flatten!
kitten_count = travelers.count{|x|x=="kitten"}


puts travelers.to_s
puts "#{wife_count} => wife count"
puts "#{sack_count} => sack count"
puts "#{cat_count} => cat count"
puts "#{kitten_count} => kitten count"
puts "#{travelers.count} travelers"