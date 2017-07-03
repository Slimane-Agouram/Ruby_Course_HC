

player = {col: 1, row: 1}

def draw(nb_col, nb_row, player)
    # first loop for rows
    for index_row in 1..nb_row
        # second loop for columns
        for index_col in 1..nb_col

            # check for ending column
            if  index_col==player[:col]&& index_row==player[:row]
                print 'X'
            else
                print '.'
            end

        end
        puts ''
    end
    puts ''
end

draw(5,6,col: 1, row: 1)
draw(2,2,col: 1, row: 2)


