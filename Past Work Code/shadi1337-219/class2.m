function [classify2]=class2(all_features)
load('w_hame.mat')
load('net_r_100.mat')
load('net_R_hame_100.mat')
Y=all_features*w_hame;
y1=Y(:,1);

if   y1>=0.014
   
    classify2=-1;

else 
ye=net_R_hame_100(all_features');
 classify2=converter(ye');
 if classify2==1

se=net_r_100(all_features');
 classify2=converter(se');
end
 end