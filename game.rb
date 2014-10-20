p_wins   = 0
c_wins   = 0
while p_wins != 2 && c_wins != 2
  puts "Player Score: #{p_wins}, Computer Score: #{c_wins}"
  print "Choose rock (r), paper (p), or scissors (s): "
  p_choice = gets.chomp
  if p_choice != "r" && p_choice != "p" && p_choice != "s"
    puts "Invalid entry, try again"
  else
    if p_choice == "r"
      puts "Player chose rock."
    elsif p_choice == "p"
      puts "Player chose paper."
    elsif p_choice == "s"
      puts "Player chose scissors."
    end
    c_choice = rand(3)
    if c_choice == 0
      puts "Computer chose rock."
    elsif c_choice == 1
      puts "Computer chose paper."
    elsif c_choice == 2
      puts "Computer chose scissors."
    end
    if (p_choice == "r" && c_choice == 0) || \
       (p_choice == "p" && c_choice == 1) || \
       (p_choice == "s" && c_choice == 2)
      puts "Tie, choose again."
    else
      if    p_choice == "r" && c_choice == 1
        puts "Paper beats rock, computer wins the round."
        c_wins += 1
      elsif p_choice == "r" && c_choice == 2
        puts "Rock beats scissors, player wins the round."
        p_wins += 1
      elsif p_choice == "p" && c_choice == 0
        puts "Paper beats rock, player wins the round."
        p_wins += 1
      elsif p_choice == "p" && c_choice == 2
        puts "Scissors beats paper, computer wins the round."
        c_wins += 1
      elsif p_choice == "s" && c_choice == 0
        puts "Rock beats scissors, computer wins the round."
        c_wins += 1
      elsif p_choice == "s" && c_choice == 1
        puts "Scissors beats paper, player wins the round."
        p_wins += 1
      end
    end
  end
end

if p_wins == 2
  puts "Player wins!"
elsif c_wins == 2
  puts "Computer wins!"
end
