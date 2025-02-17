function result = myFunction(input)
  % Check for invalid input
  if input < 0
    error('Input must be non-negative.');
  end

  try
    result = someCalculation(input);
  catch e
    % Handle potential errors from someCalculation
    fprintf('Error in someCalculation: %s\n', e.message);
    result = NaN; % Or choose another appropriate way to handle the error
  end
end

function output = someCalculation(x)
  % Check for division by zero
  assert(x ~= 0, 'Input cannot be zero.');
  output = 1/x;
end