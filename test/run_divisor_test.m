
  %% run_spec
  clear;
 

  %% For Functions
  %    Add function to path
  run('../load_toolbox.m')

  %% Test Vectors
  test = {};

  test(end+1).input = 1; test(end).expect = 1;

  test(end+1).input = 2; test(end).expect = [1,2];
  test(end+1).input = 3; test(end).expect = [1,3];
  test(end+1).input = 4; test(end).expect = [1,2,4];
  test(end+1).input = 5; test(end).expect = [1,5];
  
  test(end+1).input = 8; test(end).expect = [1,2,4,8];
  test(end+1).input = 9; test(end).expect = [1,3,9];
  
  test(end+1).input = 1023; test(end).expect = [1,3,11,31,33,93,341,1023];
  
  %% The tests
  error_count = 0;
  pass_count  = 0;

  for vector=1:size(test, 2)
    b           = divisor(test(vector).input );
    if (  ~isequal(b, test(vector).expect )  )
      disp(['divisor(', num2str(test(vector).input),') Failed '])
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end

  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end

