//NEWTON-RAPHSON METHOD ALGORITHM
//Mary Elizabeth E. Chua

//For the function f=(x), we have,

function f=f(x)     
    f= x^3 + 2*x^2 -x - 1
endfunction

function f1=f1(x)
    f1 = 3*x^2 + 4*x -1
endfunction

//true value
tv=0.80193773580483825247220463901489010

x0 = 1
es = 0.0001
ea = 100
et = 100
imax = 20

xr=x0
iter = 0

et=abs((tv-xr)/tv)*100

mprintf("\n i\t xi\t\t ea\t\t et\t")

while ((ea>es)&(iter<=imax))
    
    if(iter==0) then
        mprintf("\n %d\t %d\t\t  \t\t %.5f", iter, xr, et)
    else
        mprintf("\n %d\t %.10f\t %.10f\t %.5f", iter, xr, ea, et)
    end
    
    xrold = xr
    xr = xrold - f(xrold)/f1(xrold)
    iter = iter + 1
    if (xr~=0) then
        ea = abs((xr-xrold)/xr) * 100;
    end
    et=abs((tv-xr)/tv)*100
end

if (iter~=imax) then
    mprintf("\n %d\t %.10f\t %.10f\t %.5f", iter, xr, ea, et)
end

disp(xr)
