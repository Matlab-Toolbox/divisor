function [ D ] = divisor( N )
%DIVISORS Find Divisors of a number
%   A divisor is a number that can be used to divide a number and return an
%   integer.

K=1:N ;
D = K(rem(N,K)==0);

%[Source]: http://uk.mathworks.com/matlabcentral/answers/21542-find-divisors-for-a-given-number
end

