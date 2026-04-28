function[A]=mat(f)
%     A = [f+1, f,3; f,f+4,f+2*f^2;4,6,f^3];
%               A = [2*f, f^3+2; f^2, f+4];
%                  A =[f/2-1, f;2*f,cos(f)];
%               A =[f^3, f^2;
%                  0,f^3 ];
% %               A =[f/2-1, f*2;f+1i*f,tan(f)];
load('mydata.mat','G');
A = cellfun(@(y) y(f), G);

end