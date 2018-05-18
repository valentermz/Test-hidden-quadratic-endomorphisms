gbTrace = 2; 
printWidth = 0;

kk = QQ;
R = kk[c_0..c_5, x,y, w_0..w_2, a,b, MonomialOrder => Eliminate 11];

-- Define the values of the spectrum below:
--START VALUES
--END VALUES

-- Relations coming from Jacobi formula:
Rel_0 = a^2*d_3*x^2 + 2*a*b*d_3*x*y + b^2*d_3*y^2 + a^2*d_1*x + 2*a*d_1*x + 2*a*d_3*x + 2*b*d_3*y + d_1*x + d_3;
Rel_1 = a^2*d_3*x^2 + 2*a*b*d_3*x*y + b^2*d_3*y^2 + b^2*d_2*y + 2*a*d_3*x + 2*b*d_2*y + 2*b*d_3*y + d_2*y + d_3;
Rel_2 = a^2*b*d_1*d_2*d_3*x + a*b^2*d_1*d_2*d_3*y + a^2*d_0*d_1*d_3*x + a*b*d_0*d_2*d_3*x + a^2*d_1*d_2*d_3*x + a*b*d_1*d_2*d_3*x + a*b*d_0*d_1*d_3*y + b^2*d_0*d_2*d_3*y + a*b*d_1*d_2*d_3*y + b^2*d_1*d_2*d_3*y + a*b*d_0*d_1*d_2 + a*b*d_1*d_2*d_3 + a*d_0*d_1*d_3*x + a*d_0*d_2*d_3*x + a*d_1*d_2*d_3*x + b*d_0*d_1*d_3*y + b*d_0*d_2*d_3*y + b*d_1*d_2*d_3*y + a*d_0*d_1*d_2 + b*d_0*d_1*d_2 + a*d_0*d_1*d_3 + b*d_0*d_2*d_3 + a*d_1*d_2*d_3 + b*d_1*d_2*d_3 + d_0*d_1*d_2 + d_0*d_1*d_3 + d_0*d_2*d_3 + d_1*d_2*d_3;
Rel_3 = a^2*b*d_1*d_2*d_3*t_0*x + a*b^2*d_1*d_2*d_3*t_0*y + a^2*d_1*d_2*d_3*t_0*x + a*b*d_1*d_2*d_3*t_0*x + a*b*d_0*d_2*d_3*t_1*x + a^2*d_0*d_1*d_3*t_2*x + a*b*d_1*d_2*d_3*t_0*y + b^2*d_1*d_2*d_3*t_0*y + b^2*d_0*d_2*d_3*t_1*y + a*b*d_0*d_1*d_3*t_2*y + a*b*d_1*d_2*d_3*t_0 + a*b*d_0*d_1*d_2*t_3 + a*d_1*d_2*d_3*t_0*x + a*d_0*d_2*d_3*t_1*x + a*d_0*d_1*d_3*t_2*x + b*d_1*d_2*d_3*t_0*y + b*d_0*d_2*d_3*t_1*y + b*d_0*d_1*d_3*t_2*y + a*d_1*d_2*d_3*t_0 + b*d_1*d_2*d_3*t_0 + b*d_0*d_2*d_3*t_1 + a*d_0*d_1*d_3*t_2 + a*d_0*d_1*d_2*t_3 + b*d_0*d_1*d_2*t_3 + d_1*d_2*d_3*t_0 + d_0*d_2*d_3*t_1 + d_0*d_1*d_3*t_2 + d_0*d_1*d_2*t_3;
Rel_4 = a^4*b^2*d_1*d_2*d_3*x^2 + 2*a^3*b^3*d_1*d_2*d_3*x*y + a^2*b^4*d_1*d_2*d_3*y^2 + 2*a^4*b*d_1*d_2*d_3*x^2 + 2*a^3*b^2*d_1*d_2*d_3*x^2 + 4*a^3*b^2*d_1*d_2*d_3*x*y + 4*a^2*b^3*d_1*d_2*d_3*x*y + 2*a^2*b^3*d_1*d_2*d_3*y^2 + 2*a*b^4*d_1*d_2*d_3*y^2 + 2*a^3*b^2*d_1*d_2*d_3*x + a^4*d_0*d_1*d_3*x^2 + a^2*b^2*d_0*d_2*d_3*x^2 + a^4*d_1*d_2*d_3*x^2 + 4*a^3*b*d_1*d_2*d_3*x^2 + a^2*b^2*d_1*d_2*d_3*x^2 + 2*a^2*b^3*d_1*d_2*d_3*y + 2*a^3*b*d_0*d_1*d_3*x*y + 2*a*b^3*d_0*d_2*d_3*x*y + 2*a^3*b*d_1*d_2*d_3*x*y + 8*a^2*b^2*d_1*d_2*d_3*x*y + 2*a*b^3*d_1*d_2*d_3*x*y + a^2*b^2*d_0*d_1*d_3*y^2 + b^4*d_0*d_2*d_3*y^2 + a^2*b^2*d_1*d_2*d_3*y^2 + 4*a*b^3*d_1*d_2*d_3*y^2 + b^4*d_1*d_2*d_3*y^2 + 4*a^3*b*d_1*d_2*d_3*x + 4*a^2*b^2*d_1*d_2*d_3*x + 2*a^3*d_0*d_1*d_3*x^2 + 2*a^2*b*d_0*d_2*d_3*x^2 + 2*a^3*d_1*d_2*d_3*x^2 + 2*a^2*b*d_1*d_2*d_3*x^2 + 4*a^2*b^2*d_1*d_2*d_3*y + 4*a*b^3*d_1*d_2*d_3*y + 4*a^2*b*d_0*d_1*d_3*x*y + 4*a*b^2*d_0*d_2*d_3*x*y + 4*a^2*b*d_1*d_2*d_3*x*y + 4*a*b^2*d_1*d_2*d_3*x*y + 2*a*b^2*d_0*d_1*d_3*y^2 + 2*b^3*d_0*d_2*d_3*y^2 + 2*a*b^2*d_1*d_2*d_3*y^2 + 2*b^3*d_1*d_2*d_3*y^2 + a^2*b^2*d_0*d_1*d_2 + a^2*b^2*d_1*d_2*d_3 + 2*a^3*d_0*d_1*d_3*x + 2*a*b^2*d_0*d_2*d_3*x + 2*a^3*d_1*d_2*d_3*x + 8*a^2*b*d_1*d_2*d_3*x + 2*a*b^2*d_1*d_2*d_3*x + a^2*d_0*d_1*d_3*x^2 + a^2*d_0*d_2*d_3*x^2 + a^2*d_1*d_2*d_3*x^2 + 2*a^2*b*d_0*d_1*d_3*y + 2*b^3*d_0*d_2*d_3*y + 2*a^2*b*d_1*d_2*d_3*y + 8*a*b^2*d_1*d_2*d_3*y + 2*b^3*d_1*d_2*d_3*y + 2*a*b*d_0*d_1*d_3*x*y + 2*a*b*d_0*d_2*d_3*x*y + 2*a*b*d_1*d_2*d_3*x*y + b^2*d_0*d_1*d_3*y^2 + b^2*d_0*d_2*d_3*y^2 + b^2*d_1*d_2*d_3*y^2 + 2*a^2*b*d_0*d_1*d_2 + 2*a*b^2*d_0*d_1*d_2 + 2*a^2*b*d_1*d_2*d_3 + 2*a*b^2*d_1*d_2*d_3 + 4*a^2*d_0*d_1*d_3*x + 4*a*b*d_0*d_2*d_3*x + 4*a^2*d_1*d_2*d_3*x + 4*a*b*d_1*d_2*d_3*x + 4*a*b*d_0*d_1*d_3*y + 4*b^2*d_0*d_2*d_3*y + 4*a*b*d_1*d_2*d_3*y + 4*b^2*d_1*d_2*d_3*y + a^2*d_0*d_1*d_2 + 4*a*b*d_0*d_1*d_2 + b^2*d_0*d_1*d_2 + a^2*d_0*d_1*d_3 + b^2*d_0*d_2*d_3 + a^2*d_1*d_2*d_3 + 4*a*b*d_1*d_2*d_3 + b^2*d_1*d_2*d_3 + 2*a*d_0*d_1*d_3*x + 2*a*d_0*d_2*d_3*x + 2*a*d_1*d_2*d_3*x + 2*b*d_0*d_1*d_3*y + 2*b*d_0*d_2*d_3*y + 2*b*d_1*d_2*d_3*y + 2*a*d_0*d_1*d_2 + 2*b*d_0*d_1*d_2 + 2*a*d_0*d_1*d_3 + 2*b*d_0*d_2*d_3 + 2*a*d_1*d_2*d_3 + 2*b*d_1*d_2*d_3 + d_0*d_1*d_2 + d_0*d_1*d_3 + d_0*d_2*d_3 + d_1*d_2*d_3;

Rels = {Rel_0, Rel_1, Rel_2, Rel_3, Rel_4};

-- This gives the following values for the vector field:
T_0 = t_0;
T_1 = t_1*(a+1);
T_2 = t_2*(b+1);
D_0 = d_0;
D_1 = d_1*(a+1)^2;
D_2 = d_2*(b+1)^2;

-- We recompute the hidden relation for vector fields:
Eq_0 = T_0 - (-c_0-c_5);
Eq_1 = T_1 - (c_0+c_4-c_5);
Eq_2 = T_2 - (-c_0+c_1+c_5);
Eq_3 = D_0 - (-c_2*c_3+c_0*c_5) ;
Eq_4 = D_1 - (-c_1*c_3+c_2*c_3+c_0*c_4-c_0*c_5) ;
Eq_5 = D_2 - (c_2*c_3-c_2*c_4-c_0*c_5+c_1*c_5) ;

-- Product of CS indices
Eq_6 = L*(-c_0^2*c_1^2 + 4*c_0^3*c_2 + 27*c_2^2*c_3^2 - 4*c_2*c_4^3 + 4*c_3*c_5^3 - (c_1^2 - 12*c_0*c_2)*c_4^2 - (c_0^2 + 12*c_1*c_3 - 2*c_0*c_4 + c_4^2)*c_5^2 - 2*(2*c_1^3 - 9*c_0*c_1*c_2)*c_3 + 2*(c_0*c_1^2 - 6*c_0^2*c_2 - 9*c_1*c_2*c_3)*c_4 + 2*(c_0^2*c_1 + c_1*c_4^2 + 3*(2*c_1^2 - 3*c_0*c_2)*c_3 - (2*c_0*c_1 - 9*c_2*c_3)*c_4)*c_5) - (c_2^2*c_3^2 - c_1*c_2*c_3*c_4 + c_0*c_2*c_4^2 + c_0^2*c_5^2 - (c_0*c_1*c_4 - (c_1^2 - 2*c_0*c_2)*c_3)*c_5);

-- Product of tangential eigenvalues
Eq_7 = U*-(-a*b^2*c_0 + b^2*c_0^2 + a^2*b*c_1 - a*b*c_0*c_1 - a^3*c_2 + a^2*c_0*c_2 - b^3*c_3 + 2*b^2*c_1*c_3 - b*c_1^2*c_3 - 3*a*b*c_2*c_3 + 2*b*c_0*c_2*c_3 + a*c_1*c_2*c_3 + c_2^2*c_3^2 + a*b^2*c_4 - b^2*c_0*c_4 - a*b*c_1*c_4 + b*c_0*c_1*c_4 + 2*a^2*c_2*c_4 - 2*a*c_0*c_2*c_4 + b*c_2*c_3*c_4 - c_1*c_2*c_3*c_4 - a*c_2*c_4^2 + c_0*c_2*c_4^2 - a^2*b*c_5 + 3*a*b*c_0*c_5 - 2*b*c_0^2*c_5 - a^2*c_1*c_5 + a*c_0*c_1*c_5 + b^2*c_3*c_5 - 2*b*c_1*c_3*c_5 + c_1^2*c_3*c_5 + 2*a*c_2*c_3*c_5 - 2*c_0*c_2*c_3*c_5 - a*b*c_4*c_5 + b*c_0*c_4*c_5 + a*c_1*c_4*c_5 - c_0*c_1*c_4*c_5 + a^2*c_5^2 - 2*a*c_0*c_5^2 + c_0^2*c_5^2) - (c_0^2*c_1^2 - 4*c_0^3*c_2 + 4*c_1^3*c_3 - 18*c_0*c_1*c_2*c_3 - 27*c_2^2*c_3^2 - 2*c_0*c_1^2*c_4 + 12*c_0^2*c_2*c_4 + 18*c_1*c_2*c_3*c_4 + c_1^2*c_4^2 - 12*c_0*c_2*c_4^2 + 4*c_2*c_4^3 - 2*c_0^2*c_1*c_5 - 12*c_1^2*c_3*c_5 + 18*c_0*c_2*c_3*c_5 + 4*c_0*c_1*c_4*c_5 - 18*c_2*c_3*c_4*c_5 - 2*c_1*c_4^2*c_5 + c_0^2*c_5^2 + 12*c_1*c_3*c_5^2 - 2*c_0*c_4*c_5^2 + c_4^2*c_5^2 - 4*c_3*c_5^3);

-- All together
Eqs = {Eq_0, Eq_1, Eq_2, Eq_3, Eq_4, Eq_5, Eq_6, Eq_7};

-- Some genericity assumptions: a,b and x+y-1 are non-zero
gc = {(a+1)*w_0-1, (b+1)*w_1-1, (x+y-1)*w_2-1};

-- First we analize the ideal of relations from Jacobi:
J = ideal(Rels) + ideal(gc);
GBJ = selectInSubring(1, gens gb(J));
elimJ = ideal(GBJ);

gensJ = new Array from flatten entries GBJ;
codimJ = codim elimJ;
degsJ = new Array from apply(gensJ, f -> first degree(f));

-- We add the equations for vector fields and eliminate:
I = ideal(Rels) + ideal(Eqs) + ideal(gc);
GBI = selectInSubring(1, gens gb(I));
elimI = ideal(GBI);

gensI = new Array from flatten entries GBI;
codimI = codim elimI;
degsI = new Array from apply(gensI, f -> first degree(f));

--FINAL-RESULT--
outputJ = new Array from {codimJ, degsJ};
outputI = new Array from {codimI, degsI};

print toString "OUTPUT" 
print toString outputJ 
print toString outputI
exit
