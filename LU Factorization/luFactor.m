function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
%A =[9 8 7; 6 5 8; 12 56 4]  %COEFF MATRIX IMPUT 
%b=[] another input 
%x=A\b                                            %% all put in command 
%test the function:::: [L, U, P] = luFactor(A)
row =length(A);
L=eye(row)
U=zeros(row)
P= L

        if nargin ~=1
            error ('not enough inputs')
        end
for z= 1:row-1
    [~,r] = max(abs(A(z:row,z)));
        r = row-(row-z+1)+r;
        A([z r],:) = A([r z],:);
        P([z r],:) = P([r z],:);
        for i = z+1:row
            L(i,z) = A(i,z) / A(z,z);
            
            for o = 1:row
                U(z,o) = A(z,o);
                A(i,o) = A(i,o) - L(i,z)*A(z,o);
            end
        end
    end
    U(:,:) = A(:,:);
    return 
    

if P*A~=L*U
    error ('code does not work correctly')
end

end