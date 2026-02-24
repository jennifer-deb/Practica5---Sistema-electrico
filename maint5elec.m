clear
tspan = [0 0.05];

x0 = [0 0];

[t,x] = ode45(@electrico5, tspan, x0);

vo = x(:,1);

plot(t,vo)
grid on
xlabel('Tiempo')
ylabel('v_o') 