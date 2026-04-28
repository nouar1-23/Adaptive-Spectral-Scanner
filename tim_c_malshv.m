function[]=tim_c_malshv(n)
k=10:5:n;
c=3;
m=length(k);
   for j=1:m
       w1=[];
       w2=[];
        for j1=1:c
            mat_x(k(j));
            w1=Mal111(1,2);
            w2=scan_with_trace_v777(1,2);
             ww1(j1)=w1;
             ww2(j1)=w2;
            
        end
         z1{j}=ww1;
         z2{j}=ww2;
       
   end
save_filename = 'Simulation_Results.mat';
save(save_filename, 'k', 'c', 'z1', 'z2');
% load('Simulation_Results.mat');
% ---------------------------
figure;
hold on;
mean_z1 = cellfun(@mean, z1);
mean_z2 = cellfun(@mean, z2);

for j = 1:length(k)
    plot(ones(1,c)*k(j), z1{j}, 'b+', 'MarkerSize', 6, 'HandleVisibility', 'off');
    
    plot(ones(1,c)*k(j), z2{j}, 'ro', 'MarkerSize', 5,  'HandleVisibility', 'off');
end

p1 = plot(k, mean_z1, 'b-', 'LineWidth', 2, 'MarkerSize', 10);
p2 = plot(k, mean_z2, 'r-', 'LineWidth', 2, 'MarkerSize', 9, 'MarkerFaceColor', 'r');

xlabel('Размерность матрицы, n');
ylabel('Время (сек)');

 legend('Метод М','Новый метод', 'Location', 'northwest');

grid on;
xticks(k);
set(gca, 'FontSize', 25);



