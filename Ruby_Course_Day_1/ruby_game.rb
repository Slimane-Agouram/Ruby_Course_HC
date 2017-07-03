nb_cols=5
nb_rows=5

# first loop for rows
for index_row in 1..nb_rows
    # second loop for columns
    for index in 1..nb_cols

        # check for ending column
        if index != nb_cols
            print '.'
        else
            puts '.'
        end
    end
end


