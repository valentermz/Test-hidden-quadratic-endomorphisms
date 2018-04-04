printWidth = 0;

kk = QQ
R = kk[c_0..c_5, T_0..T_2,D_0..D_2, a_0,a_1,b_0,b_1,X, L, MonomialOrder=>{6,6,6}];

-- Define the values of the spectrum below:
--START VALUES
--END VALUES
--
-- X = \sqrt{Disc}
Disc = (-4)*(t_2^2*d_0*d_1-2*t_2*t_3*d_0*d_1+t_3^2*d_0*d_1+t_1^2*d_0*d_2-2*t_1*t_3*d_0*d_2+t_3^2*d_0*d_2+t_0^2*d_1*d_2-2*t_0*t_3*d_1*d_2+t_3^2*d_1*d_2+t_1^2*d_0*d_3-2*t_1*t_2*d_0*d_3+t_2^2*d_0*d_3+t_0^2*d_1*d_3-2*t_0*t_2*d_1*d_3+t_2^2*d_1*d_3+t_0^2*d_2*d_3-2*t_0*t_1*d_2*d_3+t_1^2*d_2*d_3);
Z = ideal(X^2 - Disc);

-- a = A_0 +- A_1*X, b = B_0 +- B_1*X
A_0 = (-t_2^2*d_0*d_1+2*t_2*t_3*d_0*d_1-t_3^2*d_0*d_1-t_0*t_1*d_0*d_2+t_0*t_3*d_0*d_2+t_1*t_3*d_0*d_2-t_3^2*d_0*d_2-t_0^2*d_1*d_2+2*t_0*t_3*d_1*d_2-t_3^2*d_1*d_2-t_0*t_1*d_0*d_3+t_0*t_2*d_0*d_3+t_1*t_2*d_0*d_3-t_2^2*d_0*d_3-t_0^2*d_1*d_3+2*t_0*t_2*d_1*d_3-t_2^2*d_1*d_3)/(t_2^2*d_0*d_1-2*t_2*t_3*d_0*d_1+t_3^2*d_0*d_1+t_0^2*d_1*d_2-2*t_0*t_3*d_1*d_2+t_3^2*d_1*d_2+t_0^2*d_1*d_3-2*t_0*t_2*d_1*d_3+t_2^2*d_1*d_3);
A_1 = -(t_2*d_0-t_3*d_0)/(2*t_2^2*d_0*d_1-4*t_2*t_3*d_0*d_1+2*t_3^2*d_0*d_1+2*t_0^2*d_1*d_2-4*t_0*t_3*d_1*d_2+2*t_3^2*d_1*d_2+2*t_0^2*d_1*d_3-4*t_0*t_2*d_1*d_3+2*t_2^2*d_1*d_3);
B_0 = (-t_0*t_2*d_0*d_1+t_0*t_3*d_0*d_1+t_2*t_3*d_0*d_1-t_3^2*d_0*d_1-t_1^2*d_0*d_2+2*t_1*t_3*d_0*d_2-t_3^2*d_0*d_2-t_0^2*d_1*d_2+2*t_0*t_3*d_1*d_2-t_3^2*d_1*d_2+t_0*t_1*d_0*d_3-t_1^2*d_0*d_3-t_0*t_2*d_0*d_3+t_1*t_2*d_0*d_3-t_0^2*d_2*d_3+2*t_0*t_1*d_2*d_3-t_1^2*d_2*d_3)/(t_1^2*d_0*d_2-2*t_1*t_3*d_0*d_2+t_3^2*d_0*d_2+t_0^2*d_1*d_2-2*t_0*t_3*d_1*d_2+t_3^2*d_1*d_2+t_0^2*d_2*d_3-2*t_0*t_1*d_2*d_3+t_1^2*d_2*d_3);
B_1 = (t_1*d_0-t_3*d_0)/(2*t_1^2*d_0*d_2-4*t_1*t_3*d_0*d_2+2*t_3^2*d_0*d_2+2*t_0^2*d_1*d_2-4*t_0*t_3*d_1*d_2+2*t_3^2*d_1*d_2+2*t_0^2*d_2*d_3-4*t_0*t_1*d_2*d_3+2*t_1^2*d_2*d_3);

-- A particular solution of (a,b) 
a = A_0 + X*A_1;
b = B_0 + X*B_1;

-- This gives the following values
T_0 = t_0;
T_1 = t_1*(a+1);
T_2 = t_2*(b+1);
D_0 = d_0;
D_1 = d_1*(a+1)^2 % Z;
D_2 = d_2*(b+1)^2 % Z;

-- We recompute the hidden relation for vector fields:
Eq_0 = T_0 - (-c_0-c_5);
Eq_1 = T_1 - (c_0+c_4-c_5);
Eq_2 = T_2 - (-c_0+c_1+c_5);
Eq_3 = D_0 - (-c_2*c_3+c_0*c_5) ;
Eq_4 = D_1 - (-c_1*c_3+c_2*c_3+c_0*c_4-c_0*c_5) ;
Eq_5 = D_2 - (c_2*c_3-c_2*c_4-c_0*c_5+c_1*c_5) ;
Eq_6 = L*(-c_0^2*c_1^2 + 4*c_0^3*c_2 + 27*c_2^2*c_3^2 - 4*c_2*c_4^3 + 4*c_3*c_5^3 - (c_1^2 - 12*c_0*c_2)*c_4^2 - (c_0^2 + 12*c_1*c_3 - 2*c_0*c_4 + c_4^2)*c_5^2 - 2*(2*c_1^3 - 9*c_0*c_1*c_2)*c_3 + 2*(c_0*c_1^2 - 6*c_0^2*c_2 - 9*c_1*c_2*c_3)*c_4 + 2*(c_0^2*c_1 + c_1*c_4^2 + 3*(2*c_1^2 - 3*c_0*c_2)*c_3 - (2*c_0*c_1 - 9*c_2*c_3)*c_4)*c_5) - (c_2^2*c_3^2 - c_1*c_2*c_3*c_4 + c_0*c_2*c_4^2 + c_0^2*c_5^2 - (c_0*c_1*c_4 - (c_1^2 - 2*c_0*c_2)*c_3)*c_5);

J = ideal(Eq_0,Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Eq_6) + Z;
I = eliminate({c_0,c_1,c_2,c_3,c_4,c_5}, J);
GB = gens I; --first generator is H, the second comes from Z
H = GB_(0,0);

-- if H = u+Xv then h = (u+Xv)(u-Xv) = u^2-Disc*v^2
u = sub(H, X=>0);
v = sub(diff(X,H), X=>0);
g = gens ideal(u^2 - (v^2)*Disc);
h = g_(0,0);

--FINAL-RESULT--
print("OUTPUT", toString factor h, sub(h, L=>Lambda) == 0)
exit
