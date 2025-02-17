function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    result = NaN;  % This line might cause unexpected behavior if NaN is not handled properly downstream
    return
  end

  % More code here
  result = someCalculation(input);
  
end

function output = someCalculation(x)
  % This function might throw an error if x is not a valid input
  output = 1/x; 
end