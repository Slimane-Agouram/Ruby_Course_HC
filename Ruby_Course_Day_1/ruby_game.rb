nb_cols=5
nb_rows=5

player_col=3
player_row=2


# first loop for rows
for index_row in 1..nb_rows
    # second loop for columns
    for index in 1..nb_cols

        # check for ending column
        if  index==player_col && index_row==player_row
            print 'X'
        else
            print '.'
        end

    end
    puts ''
end


