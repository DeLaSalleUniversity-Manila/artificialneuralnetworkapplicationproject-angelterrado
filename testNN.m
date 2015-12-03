function Y = testNN(image)
    image = rgb2gray(image);
    x1=reshape(image,1225,1);
    x=double(x1);
    Z=myNeuralNetworkFunctionLMA(x);
    if(Z(1,1)>Z(2,1))
        Y='NN: Traffic';
    else
        Y='NN: Not Traffic';
    end
end