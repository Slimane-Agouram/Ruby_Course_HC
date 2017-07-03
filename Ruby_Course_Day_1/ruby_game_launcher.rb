#  begin
#  classe Game
#  end   

#include the Player class file
require_relative 'player'

def draw(nb_col, nb_row, my_player)
    # first loop for rows
    (1..nb_row).each do |index_row| 
        # second loop for columns
        (1..nb_row).each do |index_col| 

            # check for ending column
            if  index_col==my_player.col && index_row==my_player.row
                print my_player.motif
            else
                print '.'
            end

        end
        puts 
    end
    puts 
end


player1 = Player.new(2,2,"P")
player2 = Player.new(3,3, "A")

draw(5,6,player1)

draw(4,4,player2)

