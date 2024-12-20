function result = myFunction(input)
  % Improved error handling
  if input < 0
    error('Input must be non-negative');
  end
  try
    result = someCalculation(input);
  catch ME
    if strcmp(ME.identifier, 'MATLAB:divideByZero')
        result = Inf; % Or another suitable value to handle division by zero. 
        warning('Division by zero encountered. Result set to Inf.');
    else
        rethrow(ME); % Re-throw other exceptions for debugging.
    end
  end
end

function output = someCalculation(x)
  % Check for division by zero before performing the operation
  if x == 5
      output = Inf; % Handle the case of x = 5 by returning infinity
      warning('Division by zero avoided, setting output to Inf.');
  else
    output = x / (x - 5);
  end
end