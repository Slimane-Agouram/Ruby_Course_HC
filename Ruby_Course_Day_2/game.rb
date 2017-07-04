

#  begin
#  classe Game
#  end   

#include the Player class file
require_relative 'static_object'
require_relative 'player'
require_relative 'ruby'

class Game
    def initialize(nb_col,nb_row)
        @nb_col=nb_col
        @nb_row=nb_row
    end
    
    attr_reader :nb_col, :nb_row
    attr_writer :nb_col, :nb_row

  
    def draw(nb_col, nb_row, my_player, my_ruby)
        # first loop for rows
        (1..nb_row).each do |index_row| 
            # second loop for columns
            (1..nb_row).each do |index_col| 

                # check for ending column
                if  index_col==my_player.col && index_row==my_player.row
                    print my_player.motif
                elsif index_col==my_ruby.col && index_row==my_ruby.row
                    print my_ruby.motif                
                elsif my_player.col==my_ruby.col && my_player.row==my_ruby.row
                    print "WINNER"
                    break  
                else
                    print '.'
                end

            end
            puts 
        end
        puts 
    end

end

#main

my_ruby = Ruby.new(2,2)
my_Game = Game.new(6,6)
player1 = Player.new(2,2)


system("clear")
(1..15).each do |index|
  player1.move_random()
  my_Game.draw(6,6,player1,my_ruby)
  system("sleep 1")
  system("clear")

end 




