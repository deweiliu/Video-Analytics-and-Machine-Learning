function table = transformTable(transformFunction, varargin)
    % This function can be used in Tasks 2, 3 & 4

    % Given the transform function and the parameters, returns the table of
    % transformation

    array = zeros(1, 256);

    for index = 1:256
        input = index - 1;
        numberParameters = nargin - 1;
        output = transformFunction(input, varargin{1:numberParameters});
        array(index) = output;
    end

    table = uint8(array);
end
