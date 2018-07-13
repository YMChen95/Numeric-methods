function J = luminance_change(I, option, value )
%J Summary of this function goes here
%   Detailed explanation goes here
    if option=='b'
        J=I+value;
    else if option=='c'
        J=I*value;

    end
end

