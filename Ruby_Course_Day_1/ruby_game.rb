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

player1 = Player.new(2,2,"P")

player1.draw(5,6,player1)
player1.draw(2,2,player1)




