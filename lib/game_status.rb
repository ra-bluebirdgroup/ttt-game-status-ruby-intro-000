# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
 [0, 1, 2],
 [3, 4, 5],
 [6, 7, 8],
 [0, 3, 6],
 [1, 4, 7],
 [2, 5, 8],
 [0, 4, 8],
 [6, 4, 2]
]

def won?(board)
  if board.empty?
    return false
  end
  
WIN_COMBINATIONS.each do |combo|
  win_pos = combo[i]
  local_win_combination_X = []
  local_win_combination_O = []

board.each_with_index do |pos|idx|
if pos == "X" && idx == win_pos[i]
  local_win_combination_X << win_pos[i]

elsif pos == "O" && idx = win_pos[i]
  local_win_combination_O  << win_pos[i]
  end
 end

if combo == local_win_combination_X
  puts "X won"
  return local_win_combination_X
elsif combo == local_win_combination_y
  puts "O won"
  return local_win_combination_y
else
  puts "tie"
end

 end
end
