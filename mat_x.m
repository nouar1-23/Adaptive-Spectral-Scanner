function [] =mat_x(n)
    for i = 1:n
        for j = 1:n
            F{i,j} = @(x) (x^2-i+j) ;
%             A(i,j) = F{i,j}(x0);
        end
    end
    R = rand(n,n);
        for i = 1:n
        for j = 1:n
            c = R(i,j);        % الثابت
            f = F{i,j};        % الدالة القديمة
            G{i,j} = @(x) f(x) * c;   % الدالة الجديدة
        end
    end
    save('mydata.mat','G');
% A1 = cellfun(@(y) y(x0), G);
% norm(A)
% 
% norm(A1)
% abs(eig(A1))
end
