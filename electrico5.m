function dx = electronico5(t,x)

R1 = 1000;
R2 = 1000;
R3 = 10000;
R4 = 15000;
C1 = 0.1e-6;
C2 = 0.1e-6;

A = (R1*R2*R3*C1*C2)/(R4+R3) ;

vi = 1;   % escalón unitario

dx = zeros(2,1);

dx(1) = x(2);

dx(2) = (1/A) * ( ...
    +vi ...
    - (R1*R3*C1/(R4+R3))*x(2) ...
    - (R1*R3*C2/(R4+R3))*x(2) ...
    - (R1*C2)*x(2) ...
    - (C1*R2*R3/(R4+R3))*x(2) ...
    - (C1*R3*R2/(R4+R3))*x(1) ...
    );end