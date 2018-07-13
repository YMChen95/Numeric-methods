function [ L,U ] = myLU( A )
    size_a=size(A);
    [M1,L]=elimMat(A,1);
    M=M1*A;
    for i =2:size_a
        [Mi,Li]=elimMat(M,i);
        M=Mi*M;
        L=L*Li;
    end
    U=M;
end
