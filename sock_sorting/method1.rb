# Method 1: Take a sock from a pile of unmatched socks. Dig through the pile, find its match, set the paired socks aside. Repeat.

socks = [11, 21, 45, 31, 34, 31, 45, 34, 11, 21]

def sorting_socks(socks)
  paired_socks = []

  until socks.length == 0
    socks.each do |sock|
      if sock == socks[0]
        paired_socks << [socks[0], sock]
        socks.delete(sock)
      end
    end
  end
  puts paired_socks.inspect
end

sorting_socks(socks)
