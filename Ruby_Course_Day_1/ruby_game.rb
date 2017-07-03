#  begin
#  Classe Player avec VS
#  end   

class Player
    def initialize(col, row, motif)
        @col = col
        @row=row
        @motif = motif
    end

    def col
        @col
    end

    def row
        @row
    end

    def motif
        @motif
    end
end


#  begin
#  classe Game
#  end   


class Game
    def initialize(nb_col,nb_row)
        @nb_col=nb_col
        @nb_row=nb_row
    end

    def nb_col
        @nb_col
    end

    def nb_row
        @nb_row
    end

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

end

my_Game = Game.new(5,5)
player1 = Player.new(2,2,"P")
player2 = Player.new(3,3, "A")

my_Game.draw(5,6,player1)

my_Game.draw(4,4,player2)

