
i1 : printWidth = 0;

i2 : 
     kk = QQ

o2 = QQ

o2 : Ring

i3 : R = kk[c_0..c_5, T_0..T_2,D_0..D_2, a_0,a_1,b_0,b_1,X, L, MonomialOrder=>{6,6,6}];

i4 : 
     -- Define the values of the spectrum below:
     --START VALUES
     t_0=-4

o4 = -4

i5 : t_1=-6

o5 = -6

i6 : t_2=-7

o6 = -7

i7 : t_3=-7

o7 = -7

i8 : d_0=4

o8 = 4

i9 : d_1=8

o9 = 8

i10 : d_2=12

o10 = 12

i11 : d_3=12

o11 = 12

i12 : Lambda=48/196

      12
o12 = --
      49

o12 : QQ

i13 : --END VALUES
      --
      -- X = \sqrt{Disc}
      Disc = (-4)*(t_2^2*d_0*d_1-2*t_2*t_3*d_0*d_1+t_3^2*d_0*d_1+t_1^2*d_0*d_2-2*t_1*t_3*d_0*d_2+t_3^2*d_0*d_2+t_0^2*d_1*d_2-2*t_0*t_3*d_1*d_2+t_3^2*d_1*d_2+t_1^2*d_0*d_3-2*t_1*t_2*d_0*d_3+t_2^2*d_0*d_3+t_0^2*d_1*d_3-2*t_0*t_2*d_1*d_3+t_2^2*d_1*d_3+t_0^2*d_2*d_3-2*t_0*t_1*d_2*d_3+t_1^2*d_2*d_3)

o13 = -9600

i14 : Z = ideal(X^2 - Disc);

o14 : Ideal of R

i15 : 
      -- a = A_0 +- A_1*X, b = B_0 +- B_1*X
      A_0 = (-t_2^2*d_0*d_1+2*t_2*t_3*d_0*d_1-t_3^2*d_0*d_1-t_0*t_1*d_0*d_2+t_0*t_3*d_0*d_2+t_1*t_3*d_0*d_2-t_3^2*d_0*d_2-t_0^2*d_1*d_2+2*t_0*t_3*d_1*d_2-t_3^2*d_1*d_2-t_0*t_1*d_0*d_3+t_0*t_2*d_0*d_3+t_1*t_2*d_0*d_3-t_2^2*d_0*d_3-t_0^2*d_1*d_3+2*t_0*t_2*d_1*d_3-t_2^2*d_1*d_3)/(t_2^2*d_0*d_1-2*t_2*t_3*d_0*d_1+t_3^2*d_0*d_1+t_0^2*d_1*d_2-2*t_0*t_3*d_1*d_2+t_3^2*d_1*d_2+t_0^2*d_1*d_3-2*t_0*t_2*d_1*d_3+t_2^2*d_1*d_3);

i16 : A_1 = -(t_2*d_0-t_3*d_0)/(2*t_2^2*d_0*d_1-4*t_2*t_3*d_0*d_1+2*t_3^2*d_0*d_1+2*t_0^2*d_1*d_2-4*t_0*t_3*d_1*d_2+2*t_3^2*d_1*d_2+2*t_0^2*d_1*d_3-4*t_0*t_2*d_1*d_3+2*t_2^2*d_1*d_3);

i17 : B_0 = (-t_0*t_2*d_0*d_1+t_0*t_3*d_0*d_1+t_2*t_3*d_0*d_1-t_3^2*d_0*d_1-t_1^2*d_0*d_2+2*t_1*t_3*d_0*d_2-t_3^2*d_0*d_2-t_0^2*d_1*d_2+2*t_0*t_3*d_1*d_2-t_3^2*d_1*d_2+t_0*t_1*d_0*d_3-t_1^2*d_0*d_3-t_0*t_2*d_0*d_3+t_1*t_2*d_0*d_3-t_0^2*d_2*d_3+2*t_0*t_1*d_2*d_3-t_1^2*d_2*d_3)/(t_1^2*d_0*d_2-2*t_1*t_3*d_0*d_2+t_3^2*d_0*d_2+t_0^2*d_1*d_2-2*t_0*t_3*d_1*d_2+t_3^2*d_1*d_2+t_0^2*d_2*d_3-2*t_0*t_1*d_2*d_3+t_1^2*d_2*d_3);

i18 : B_1 = (t_1*d_0-t_3*d_0)/(2*t_1^2*d_0*d_2-4*t_1*t_3*d_0*d_2+2*t_3^2*d_0*d_2+2*t_0^2*d_1*d_2-4*t_0*t_3*d_1*d_2+2*t_3^2*d_1*d_2+2*t_0^2*d_2*d_3-4*t_0*t_1*d_2*d_3+2*t_1^2*d_2*d_3);

i19 : 
      -- A particular solution of (a,b) 
      a = A_0 + X*A_1;

i20 : b = B_0 + X*B_1;

i21 : 
      -- This gives the following values
      T_0 = t_0;

i22 : T_1 = t_1*(a+1);

i23 : T_2 = t_2*(b+1);

i24 : D_0 = d_0;

i25 : D_1 = d_1*(a+1)^2 % Z;

i26 : D_2 = d_2*(b+1)^2 % Z;

i27 : 
      -- We recompute the hidden relation for vector fields:
      Eq_0 = T_0 - (-c_0-c_5) ;

i28 : Eq_1 = T_1 - (c_0+c_4-c_5) ;

i29 : Eq_2 = T_2 - (-c_0+c_1+c_5) ;

i30 : Eq_3 = D_0 - (-c_2*c_3+c_0*c_5) ;

i31 : Eq_4 = D_1 - (-c_1*c_3+c_2*c_3+c_0*c_4-c_0*c_5) ;

i32 : Eq_5 = D_2 - (c_2*c_3-c_2*c_4-c_0*c_5+c_1*c_5) ;

i33 : Eq_6 = L*(-c_0^2*c_1^2 + 4*c_0^3*c_2 + 27*c_2^2*c_3^2 - 4*c_2*c_4^3 + 4*c_3*c_5^3 - (c_1^2 - 12*c_0*c_2)*c_4^2 - (c_0^2 + 12*c_1*c_3 - 2*c_0*c_4 + c_4^2)*c_5^2 - 2*(2*c_1^3 - 9*c_0*c_1*c_2)*c_3 + 2*(c_0*c_1^2 - 6*c_0^2*c_2 - 9*c_1*c_2*c_3)*c_4 + 2*(c_0^2*c_1 + c_1*c_4^2 + 3*(2*c_1^2 - 3*c_0*c_2)*c_3 - (2*c_0*c_1 - 9*c_2*c_3)*c_4)*c_5) - (c_2^2*c_3^2 - c_1*c_2*c_3*c_4 + c_0*c_2*c_4^2 + c_0^2*c_5^2 - (c_0*c_1*c_4 - (c_1^2 - 2*c_0*c_2)*c_3)*c_5);

i34 : 
      J = ideal(Eq_0,Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Eq_6) + Z;

o34 : Ideal of R

i35 : I = eliminate({c_0,c_1,c_2,c_3,c_4,c_5}, J);

o35 : Ideal of R

i36 : GB = gens I; --first generator is H, the second comes from Z

              1       2
o36 : Matrix R  <--- R

i37 : H = GB_(0,0);

i38 : 
      -- if H = u+Xv then h = (u+Xv)(u-Xv) = u^2-Disc*v^2
      u = sub(H, X=>0);

i39 : v = sub(diff(X,H), X=>0);

i40 : ideal(u^2 - (v^2)*Disc);

o40 : Ideal of R

i41 : mingens oo;

              1       1
o41 : Matrix R  <--- R

i42 : h = oo_(0,0);

i43 : 
      --FINAL-RESULT--
      print("OUTPUT", toString factor h, sub(h, L=>Lambda) == 0)
(OUTPUT, (49*L-12)^2*(1787977*L-608076)^2, true)

i44 : exit
