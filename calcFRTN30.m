%% 1.2b)
A = [0, 3, 4, 0, 0, 0;
     1, 0, 0, 0, 0, 0;
     0, 0, 0, 5, 5, 0;
     0, 2, 0, 0, 0, 0;
     4, 0, 0, 0, 0, 1;
     0, 0, 0, 3, 0, 0];
avDeg = ones(length(A),1)'*A*ones(length(A),1)/length(A);
%% 1.4a)
W =[0, 2, 1;
    2, 0, 1;
    1, 1, 0]; 
D = [3, 0, 0;
     0, 3, 0;
     0, 0, 2];
P = D\W;
L = D - W;
check1 = P*ones(3,1);
check2 = L*ones(3,1);
%% 1.4b)
balanced_w = W'*ones(3,1);
avDeg = ones(3,1)'*W*ones(3,1)/3;
regular_w = avDeg*ones(3,1);
% The graph is balanced, but not regular.
