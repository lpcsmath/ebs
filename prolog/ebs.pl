ebs(X,N,Y) :- ebsaux(1,X,N,Y).

ebsaux(A,_,0,A) :- !.
ebsaux(A,B,1,Y) :-  Y is A * B, !.
ebsaux(A,B,N,Y) :-  1 is N mod 2,
                    A1 is A * B,
                    B1 is B * B,
                    N1 is N div 2,
                    ebsaux(A1,B1,N1,Y),!.
ebsaux(A,B,N,Y) :-  B1 is B*B,
                    N1 is N div 2,
                    ebsaux(A,B1,N1,Y).


ebsmod(X,N,M,Y) :- ebsmodaux(1,X,N,M,Y).

ebsmodaux(A,_,0,M,Y) :- Y is A mod M,!.
ebsmodaux(A,B,1,M,Y) :-  R is A * B, Y is R mod M,!.
ebsmodaux(A,B,N,M,Y) :-  1 is N mod 2,
                    R1 is A * B,
                    A1 is R1 mod M,
                    R2 is B * B,
                    B1 is R2 mod M,
                    N1 is N div 2,
                    ebsmodaux(A1,B1,N1,M,Y),!.
ebsmodaux(A,B,N,M,Y) :-  R1 is B*B,
                    B1 is R1 mod M,
                    N1 is N div 2,
                    ebsmodaux(A,B1,N1,M,Y).
