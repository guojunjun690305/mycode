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

% ����˵��
% Data_rp Ϊ 9996*6 ����
% ʱ�䳤��Ϊ5s��ÿ��2k������
% ����ϵ���壺����Ϊ����ԭ�㣬x����Ϊǰ�������ң�yΪǰ������zΪ��ֱ����
% ������������Ϊxyz�����ϣ���ŵ�xyz���ݣ��ҽŵ�xyz����
% 
%% ѡȡ���������Թ켣 �켣����Ϊ 1283 ʱ�䳤��ԼΪ 0.64s
% 8408 9698 ѡΪ����

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
