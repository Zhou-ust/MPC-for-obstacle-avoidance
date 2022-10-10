function [obstacle, v, w] = dynamic_obs(obstacle,i)   
   obs_v = [
    0.0002    0.1696    0.3326    0.4909    0.6450    0.7953    0.9416    1.0839    1.2228    1.3576    1.3576    1.4703 ...
    1.5556    1.6508    1.7450    1.8370    1.9250    2.0085    2.0890    2.1661    2.1661    2.2234    2.2830    2.3399 ...
    2.3953    2.4492    2.5018    2.5530    2.6023    2.6491    2.6491    2.6803    2.7106    2.7403    2.7694    2.7980 ...
    2.8258    2.8525    2.8778    2.9015    2.9015    2.9281    2.9538    2.9785    3.0022    3.0248    3.0464    3.0672 ...
    3.0871    3.1063    3.1063    3.1136    3.1206    3.1273    3.1336    3.1393    3.1446    3.1494    3.1540    3.1587 ...
    3.1587    3.1272    3.0968    3.0674    3.0392    3.0121    2.9860    2.9610    2.9375    2.9158    2.9157    2.8697 ...
    2.8267    2.7856    2.7460    2.7071    2.6692    2.6322    2.5968    2.5630    2.5631    2.5087    2.4568    2.4075 ...
    2.3610    2.3175    2.2768    2.2388    2.2034    2.1702    2.1703    2.1270    2.0854    2.0455    2.0071    1.9707 ...
    1.9363    1.9040    1.8735    1.8440    1.8440    1.8158    1.7875    1.7597    1.7321    1.7044    1.6766    1.6493 ...
    1.6231    1.5981    1.5981    1.5733    1.5486];

    obs_w = [
    -0.0000    0.0002    0.0003    0.0004    0.0005    0.0006    0.0006    0.0007    0.0007    0.0008    0.0008    0.0009 ...
    0.0011    0.0013    0.0015    0.0016    0.0018    0.0019    0.0020    0.0022    0.0022    0.0025    0.0027    0.0030 ...
    0.0032    0.0035    0.0037    0.0039    0.0041    0.0043    0.0043    0.0088    0.0136    0.0183    0.0227    0.0266 ...
    0.0300    0.0329    0.0354    0.0374    0.0374    0.0369    0.0365    0.0360    0.0356    0.0353    0.0349    0.0347 ...
    0.0344    0.0342    0.0341    0.0326    0.0312    0.0299    0.0287    0.0275    0.0264    0.0254    0.0244    0.0236 ...
    0.0235    0.0224    0.0213    0.0203    0.0193    0.0184    0.0175    0.0166    0.0158    0.0150    0.0150    0.0148 ...
    0.0146    0.0145    0.0144    0.0143    0.0141    0.0140    0.0139    0.0138    0.0135    0.0141    0.0147    0.0152 ...
    0.0156    0.0160    0.0163    0.0165    0.0168    0.0169    0.0169    0.0170    0.0170    0.0170    0.0169    0.0168 ...
    0.0166    0.0164    0.0162    0.0161    0.0160    0.0160    0.0159    0.0159    0.0159    0.0159    0.0159    0.0159 ...
    0.0159    0.0159    0.0156    0.0154    0.0152];
    r = size(obs_v);
    if(i>r(2))
        obstacle = nonhn_update(obstacle,0,0,0);
        v = 0;
        w = 0;
    else
        obstacle = nonhn_update(obstacle,obs_v(i),obs_w(i),0.1);
        v = obs_v(i);
        w = obs_w(i);
    end
    
end