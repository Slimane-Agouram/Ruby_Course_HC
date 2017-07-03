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
