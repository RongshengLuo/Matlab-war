%正规战争模型的微分方程组
function dx = zgz_odefunc(t, x)
global jia_r jia_p jia_alpha jia_yuan  yi_r yi_p yi_alpha yi_yuan
dx = zeros(2, 1);
try
   dx(1,1)=-yi_r*yi_p*x(2)-jia_alpha*x(1)+jia_yuan;
catch
    dx(1,1)=-yi_r*yi_p*x(2)-jia_alpha*x(1)+jia_yuan(t);
end

try
   dx(2,1)=-jia_r*jia_p*x(1)-yi_alpha*x(2)+yi_yuan;
   
catch
   dx(2,1)=-jia_r*jia_p*x(1)-yi_alpha*x(2)+yi_yuan(t);
end
end

