# Method 2: Take a sock from a pile of unmatched socks. Set it aside. Take a new sock from the pile. If it matches the set-aside sock, pair them, set the paired socks aside. Otherwise, set the new sock aside. Repeat. As unmatched socks are set aside, put the unmatched sock with other unmatched socks that are the same color, size, etc.

# refactored code using ruby sort_by method

socks = [
  { color: "red", size: "small" },
  { color: "blue", size: "small" },
  { color: "red", size: "small" },
  { color: "blue", size: "small" },
  { color: "red", size: "large" },
  { color: "blue", size: "large" },
  { color: "red", size: "large" },
  { color: "blue", size: "large" },
  { color: "green", size: "small" },
  { color: "black", size: "small" },
  { color: "green", size: "small" },
  { color: "black", size: "small" },
  { color: "green", size: "large" },
  { color: "black", size: "large" },
  { color: "green", size: "large" },
  { color: "black", size: "large" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" },
  { color: "green", size: "medium" },
  { color: "black", size: "medium" }
  ]

def sorted_socks(socks)
  socks.sort_by do |sock|
    [sock[:size], sock[:color]]
    #[sock[:color], sock[:size]]
  end.each_slice(2).to_a
end

puts sorted_socks(socks).inspect
