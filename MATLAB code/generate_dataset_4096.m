function [Xtrain, Ytrain] = generate_dataset_4096(min_r,max_r,sigma)
    Ytrain = zeros(10000,12);
    rpart = min_r + (max_r-min_r).*rand(10000,1);
    ipart = min_r + (max_r-min_r).*rand(10000,1);
    Xtrain = horzcat(rpart,ipart);
    for j=1:10000
        c_no = rpart(j) + ipart(j)*i;
        xllr = llr_4096(c_no,sigma);
        Ytrain(j,1) = xllr(1,1);
        Ytrain(j,2) = xllr(1,2);
        Ytrain(j,3) = xllr(1,3);
        Ytrain(j,4) = xllr(1,4);
        Ytrain(j,5) = xllr(1,5);
        Ytrain(j,6) = xllr(1,6);
        Ytrain(j,7) = xllr(1,7);
        Ytrain(j,8) = xllr(1,8);
        Ytrain(j,9) = xllr(1,9);
        Ytrain(j,10) = xllr(1,10);
        Ytrain(j,11) = xllr(1,11);
        Ytrain(j,12) = xllr(1,12);
    end
end