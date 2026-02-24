function dx = electronico5(t,x)

R1 = 1000;
R2 = 1000;
R3 = 10000;
R4 = 15000;
C1 = 1e-6;
C2 = 1e-6;

vi = 1;   % escalón unitario

A = R3/(R3 + R4);

dx = zeros(2,1);

dx(1) = x(2);

dx(2) = ( vi/(R1*R2*C1*C2*A) ) - ( (C1*R2*A + R1*C1*A + R1*C2*A - R1*C2)/(R1*R2*C1*C2*A) ) * x(2) - ( 1/(R1*R2*C1*C2) ) * x(1);

  
end
