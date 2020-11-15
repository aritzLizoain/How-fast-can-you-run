%//////////////////////////////////////////////////////////////////////////////////////////
%// Original author: Carlos Beltrán (https://personales.unican.es/beltranc/)
%// Modified by: Aritz Lizoain
%// Github: https://github.com/aritzLizoain
%// My personal website: https://aritzlizoain.github.io/
%// Description: Numerical methods (Least Squares Approximation) employment
%// Copyright 2020, Aritz Lizoain.
%// License: MIT License
%//////////////////////////////////////////////////////////////////////////////////////////

function [coeff,y]=LeastSquaresApproximation(a,b,F,x,plotme)
% Given a row vector of functions F provides the linear combination of
%functions it contains that best approximates by least squares the data
%in table a,b, which are vectors of equal size. The program returns the
%vector of coefficients and the values of the approximation in vector x.
% If "plotme" equals 1 plots the results.
% Employment example:
% a=[-1;0;1;2;3];
% b=[-2;0;0;-2;-6];
% F=@(x) [x x.ˆ4]
% [coeff,y]=LeastSquaresApproximation(a,b,F,x,1);

n=length(a);
m=length(F(a(1)));
A=zeros(n,m);
for i=1:n
    A(i,:)=F(a(i));
end
coeff=A\b; % Solves the proglem with Matlab's methods
%CAREFUL, IT'S \ , NOT /
y=x;
for k=1:length(x)
    y(k)=F(x(k))*coeff;
end
if plotme==1
    plot(a,b,'x',x,y);
end
