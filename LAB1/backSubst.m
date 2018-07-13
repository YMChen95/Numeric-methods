function X = backSubst(U,y,k )
[m,n]=size(U);
    if ~exist('k')  % If first call no k param given, but k=1
        k=n;
    end
    
    X=y(k)/U(k,k);
    if k >1  
        l = [U(1:k-1,k);zeros(m-k+1,1)];
        X = [backSubst(U,y-X*l,k-1);X];

end

