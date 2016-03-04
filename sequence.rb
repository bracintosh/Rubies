def sequence
  i = 1

  while i <= 999
    if i < 10
      puts "#{"00"+i.to_s} chivas"
    end

    if i >= 10 && i <= 99
      puts "#{"0"+i.to_s} chivas"
    end

    if i >= 100 && i <= 999
      puts "#{i} chivas"
    end

    i += 1
  end

end

sequence