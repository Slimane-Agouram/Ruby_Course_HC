nb_cols=5
nb_rows=5

player = {col:2, row:3}



# first loop for rows
for index_row in 1..nb_rows
    # second loop for columns
    for index in 1..nb_cols

        # check for ending column
        if  index==player[:col]&& index_row==player[:row]
            print 'X'
        else
            print '.'
        end

    end
    puts ''
end


