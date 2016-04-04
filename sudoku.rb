@row_period = []
@column_period = []
@box_period = []
@sudoku_puzzle = []

@column_one = []
@column_two = []
@column_three = []
@column_four = []
@column_five = []
@column_six = []
@column_seven = []
@column_eight = []
@column_nine = []
@box_one = []
@box_two = []
@box_three = []
@box_four = []
@box_five = []
@box_six = []
@box_seven = []
@box_eight = []
@box_nine = []


# 4,2,6,5,7,1,3,9,8,8,5,7,2,9,3,1,4,6,1,3,9,4,6,8,2,7,5,9,7,1,3,8,5,6,2,4,5,4,3,7,2,6,8,1,9,6,8,2,1,4,9,7,5,3,7,9,4,6,3,2,5,8,1,2,6,5,8,1,4,9,3,7,3,1,8,9,5,7,4,6,2
# Sudoku numbers Example ^^

def start
  sudoku
end

def sudoku
  puts "Welcome to Sudoku! Input your numbers here!"
  puts "Make sure to use commas and brackets!"
  equation = gets.strip.split(',')
  if equation[0,9].uniq.count == 9
    @row_period << 1
    if equation[9,9].uniq.count == 9
      @row_period << 1
      if equation[18,9].uniq.count == 9
        @row_period << 1
        if equation[27,9].uniq.count == 9
          @row_period << 1
          if equation[36,9].uniq.count == 9
            @row_period << 1
            if equation[45,9].uniq.count == 9
              @row_period << 1
              if equation[54,9].uniq.count == 9
                @row_period << 1
                if equation[63,9].uniq.count == 9
                  @row_period << 1
                  if equation[72,9].uniq.count == 9
                    @row_period << 1
                    if @row_period.count == 9
                      puts 'Horizontal Rows Good'
                      @sudoku_puzzle << 1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  @column_one << equation[0] << equation[9] << equation[18] << equation[27] << equation [36] << equation[45] << equation[54] << equation[63] << equation[72]
  @column_two << equation[1] << equation[10] << equation[19] << equation[28] << equation [37] << equation[46] << equation[55] << equation[64] << equation[73]
  @column_three << equation[2] << equation[11] << equation[20] << equation[29] << equation [38] << equation[47] << equation[56] << equation[65] << equation[74]
  @column_four << equation[3] << equation[12] << equation[21] << equation[30] << equation [39] << equation[48] << equation[57] << equation[66] << equation[75]
  @column_five << equation[4] << equation[13] << equation[22] << equation[31] << equation [40] << equation[49] << equation[58] << equation[67] << equation[76]
  @column_six << equation[5] << equation[14] << equation[23] << equation[32] << equation [41] << equation[50] << equation[59] << equation[68] << equation[77]
  @column_seven << equation[6] << equation[15] << equation[24] << equation[33] << equation [42] << equation[51] << equation[60] << equation[69] << equation[78]
  @column_eight << equation[7] << equation[16] << equation[25] << equation[34] << equation [43] << equation[52] << equation[61] << equation[70] << equation[79]
  @column_nine << equation[8] << equation[17] << equation[26] << equation[35] << equation [44] << equation[53] << equation[62] << equation[71] << equation[80]


  if @column_one.uniq.count == 9
    @column_period << 1
    if @column_two.uniq.count == 9
      @column_period << 1
      if @column_three.uniq.count == 9
        @column_period << 1
        if @column_four.uniq.count == 9
          @column_period << 1
          if @column_five.uniq.count == 9
            @column_period << 1
            if @column_six.uniq.count == 9
              @column_period << 1
              if @column_seven.uniq.count == 9
                @column_period << 1
                if @column_eight.uniq.count == 9
                  @column_period << 1
                  if @column_nine.uniq.count == 9
                    @column_period << 1
                    if @column_period.count == 9
                      puts 'Sudoku Columns GOOD'
                      @sudoku_puzzle << 1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  @box_one <<  equation[0] << equation[1] << equation[2] << equation[9] << equation[10] << equation[11] << equation[18] << equation[19] << equation[20]
  @box_two << equation[3] << equation[4] << equation[5] << equation[12] << equation[13] << equation[14] << equation[21] << equation[22] << equation[23]
  @box_three  << equation[6] << equation[7] << equation[8] << equation[15] << equation[16] << equation[17] << equation[24] << equation[25] << equation[26]
  @box_four << equation[27] << equation[28] << equation[29] << equation [36] << equation [37] << equation [38] << equation[45] << equation[46] << equation[47] 
  @box_five << equation[30] << equation[31] << equation[32] << equation [39] << equation [40] << equation [41] << equation[48] << equation[49] << equation[50]
  @box_six << equation[33] << equation[34] << equation[35] << equation [42] << equation [43] << equation [44] << equation[51]<< equation[52] << equation[53]
  @box_seven << equation[54] << equation[55] << equation[56] << equation[63]<< equation[64] << equation[65] << equation[72] << equation[73] << equation[74]
  @box_eight << equation[57] << equation[58] << equation[59] << equation[66] << equation[67] << equation[68] << equation[75] << equation[76] << equation[77]
  @box_nine << equation[60] << equation[61] << equation[62] << equation[69] << equation[70] << equation[71] << equation[78] << equation[79] << equation[80]

  if @box_one.uniq.count == 9
    @box_period << 1
    if @box_two.uniq.count == 9
      @box_period << 1
      if @box_three.uniq.count == 9
        @box_period << 1
        if @box_four.uniq.count == 9
          @box_period << 1
          if @box_five.uniq.count == 9
            @box_period << 1
            if @box_six.uniq.count == 9
              @box_period << 1
              if @box_seven.uniq.count == 9
                @box_period << 1
                if @box_eight.uniq.count == 9
                  @box_period << 1
                  if @box_nine.uniq.count == 9
                    @box_period << 1
                    if @box_period.count == 9
                      puts 'Boxes GOOD'
                      @sudoku_puzzle << 1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  if @sudoku_puzzle.count == 3
    puts 'Sudoku Numbers are OK'
  end

end

start