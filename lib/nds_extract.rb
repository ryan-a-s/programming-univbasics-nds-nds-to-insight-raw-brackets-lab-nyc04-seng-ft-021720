$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds[0][:name]
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  outer_index = 0
  while outer_index < nds.length do
    inner_index = 0
    director = nds[outer_index][:name]
    total = 0
    while inner_index < nds[outer_index][:movies].length do
      movie_gross = nds[outer_index][:movies][inner_index][:worldwide_gross]
      total += movie_gross.to_i
      inner_index += 1
    end
    result.merge![director] = total
    outer_index += 1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
  pp result
end
