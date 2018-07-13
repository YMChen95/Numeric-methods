function Y_new = polynomial_interp(X,Y,X_new,n)
    [~,l]=size(X);
    A=zeros(l,n);
    A(:,1)=1;
    for i=1:n
        A(:,i+1) = (X.^i)';
    end
    coe=A\(Y');
    
    [~,l_new]=size(X_new);
    Y_new=zeros(l_new,1);
    if n>l+1
        index=l+1;
    else
        index=n;
    end
    
    for i=0:index
        Y_new = Y_new + (X_new)'.^i*coe(i+1);
   
    end
    
end