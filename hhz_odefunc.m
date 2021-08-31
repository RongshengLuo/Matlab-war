%混合战争模型的微分方程组
function dx = hhz_odefunc(t, x)
global hjia_r hjia_p hjia_s hjia_alpha hjia_yuan  hyi_r hyi_sx hyi_alpha hyi_yuan
dx = zeros(2, 1);
try
   dx(1,1)=-hyi_r*hyi_sx*x(1)*x(2)/hjia_s-hjia_alpha*x(1)+hjia_yuan;
catch
    dx(1,1)=-hyi_r*hyi_sx*x(1)*x(2)/hjia_s-hjia_alpha*x(1)+hjia_yuan(t);
end

try
   dx(2,1)=-hjia_r*hjia_p*x(1)-hyi_alpha*x(2)+hyi_yuan;
catch
   dx(2,1)=-hjia_r*hjia_p*x(1)-hyi_alpha*x(2)+hyi_yuan(t);
end

end

