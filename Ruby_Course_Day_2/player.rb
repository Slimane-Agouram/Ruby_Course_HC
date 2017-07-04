#  begin
#  Classe Player avec VS
#  end   
 

class Player < Static_object
    def initialize(col, row)
       super(col, row, "P")
    end
    

  def move (position_col, position_row)
     self.col = position_col
     self.row = position_row
  end

def move_random ()
     self.col = rand(1..6)
     self.row = rand(1..6)
  end


end

