%To solve the ODE using Runge-Kutta method
f = inline('sin(5.0*x)-0.4*y');
diff_fx = f;
h = input('Enter the step size');
x = input('Enter the final point');
x0 = 0;
x1(1,1) = x0;
y0 = 5;
y1(1,1) = y0;
k1(1,1) = f(x0,y0);%Initialising k
for i = x0+h:h:x
    x1(i/h+1,1) =  h + x1(i/h,1);
    k1(i/h+1,1) = f((i/h)*h, y1(i/h,1) + h*k1(i/h,1)); 
    y1(i/h+1,1) = y1(i/h,1) + (h/2)*(k1(i/h,1) +  k1(i/h + 1,1)); 
   
end

disp('Answer is')
y1(x/h+1,1)
T = table(x1,y1);
T


    