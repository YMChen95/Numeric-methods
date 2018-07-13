function tomography( A,B,imsize )
    [~,size_B]=size(B);
    for i = 1:size_B
        x=A\(B(:,i));
        output=reshape(x,imsize);
        output=output';
        subplot(1,size_B,i),imshow(output);
    end
end

