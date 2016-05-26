-module(ebs).
-export([ebs/2,ebsmod/3]).

%
%  ebsaux(F,1,X,N) => F(X^N)
%
ebsaux(F,A,_,0) -> F(A);
ebsaux(F,A,B,1) -> F(A * B);
ebsaux(F,A,B,N) ->
    A1 = case N rem 2 of
            1 -> F(A * B);
            _ -> F(A)
         end,
    B1 = F(B * B),
    N1 = N div 2,
    ebsaux(F,A1,B1,N1).


%
%  ebs x n => x^n
%
ebs(X,N) ->
    ID = fun (Y) -> Y end,
    ebsaux(ID, 1, X, N).


%
%  ebsmod(X,N,M) => X^N (mod M)
%
ebsmod(X,N,M) ->
    MOD = fun (A) -> A rem M end,
    ebsaux(MOD,1,X,N).
