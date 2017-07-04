class Static_object


def initialize(col, row, motif)
        @col = col
        @row=row
        @motif = motif
    end
    
    attr_reader :col, :row, :motif
    attr_writer :col, :row, :motif



end
