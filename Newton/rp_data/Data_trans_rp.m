% data_rp.mat 
% 
load data_rp.mat

L_x = -A(1,4:end)';
L_y = -A(2,4:end)';
L_z = -A(3,4:end)';

R_x = -B(1,4:end)';
R_y = -B(2,4:end)';
R_z = -B(3,4:end)';

figure(1)
subplot(1,3,1)
plot(L_x,'b');
hold on
plot(R_x,'r');

subplot(1,3,2)
plot(L_y,'b');
hold on
plot(R_y,'r');

subplot(1,3,3)
plot(L_z,'b');
hold on
plot(R_z,'r');

Data_rp = [L_x,L_y,L_z,R_x,R_y,R_z];

% figure(2)
% plot(L_y,L_z);

% 数据说明
% Data_rp 为 9996*6 矩阵
% 时间长度为5s，每秒2k个数据
% 坐标系定义：躯干为坐标原点，x方向为前进方向右，y为前进方向，z为竖直向上
% 各列数据依次为xyz方向上，左脚的xyz数据，右脚的xyz数据
% 
%% 选取两步周期性轨迹 轨迹长度为 1283 时间长度约为 0.64s
% 8408 9698 选为窗口

Data_rp_2_steps = Data_rp(8408:9698,:);

fid = fopen('rp_data_to_C.txt','wt');
[m,n] = size(Data_rp_2_steps);
for i = 1:1:m
    for j = 1:1:n
        if j == n
            fprintf(fid,'%g\n',Data_rp_2_steps(i,j));
        else 
            fprintf(fid,'%g\t',Data_rp_2_steps(i,j));
        end
    end
end
fclose(fid);
