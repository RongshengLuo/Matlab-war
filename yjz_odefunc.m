%游击战争模型的微分方程组
function dx = yjz_odefunc(t, x)
global yjia_r yjia_sx yjia_s yjia_alpha yjia_yuan  yyi_r yyi_sx yyi_s yyi_alpha yyi_yuan
dx = zeros(2, 1);
try
   dx(1,1)=-yyi_r*yyi_sx*x(1)*x(2)/yjia_s-yjia_alpha*x(1)+yjia_yuan;
catch
    dx(1,1)=-yyi_r*yyi_sx*x(1)*x(2)/yjia_s-yjia_alpha*x(1)+yjia_yuan(t);
end

try
   dx(2,1)=-yjia_r*yjia_sx*x(1)*x(2)/yyi_s-yyi_alpha*x(2)+yyi_yuan;
catch
   dx(2,1)=-yjia_r*yjia_sx*x(1)*x(2)/yyi_s-yyi_alpha*x(2)+yyi_yuan(t);
end

end

