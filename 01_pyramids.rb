
def half_pyramid
  puts "Choisissez un nombre :"
  number=gets.chomp.to_i
  i=1
  y=number
  while i <= number
      y.times do
          print " "
      end
          i.times do
              print "#"
          end
      puts ""
      y-=1
      i+=1
  end
end


def full_pyramid
  puts "Choisissez un nombre :"
  number=gets.chomp.to_i
  i=1
  y=number
  while i <= number * 2
    y.times do
      print " "
    end
      i.times do
        print "#"
      end
    puts ""
    y-=1
    i+=2
  end
end


def wtf_pyramid
  puts "Choisissez un nombre (choisis un nombre impair) :"
  print "> "
  number=gets.chomp.to_i
  i=1
  number = number/2
  y=number
  while i <= number * 2
    y.times do
      print " "
    end
      i.times do
        print "#"
      end
    puts ""
    y-=1
    i+=2
  end
  while i >= number / 2
    y.times do
      print " "
    end
      i.times do
        print "#"
      end
    puts ""
    y+=1
    i-=2
  end
end

wtf_pyramid