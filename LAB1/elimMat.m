function [ M,L ] = elimMat( A,k )
    size_a=size(A);
    a=A(:,k);
    I=eye(size_a);
    
    m=a/a(k);
    m=[zeros(k,1);m(k+1:end)];
    
    e=I(:,k);
    M=I-m*(e');
    L=inv(M);
end

