cd C:\Users\Public\project\Train\ %PLEASE CHANGE PATH FILE TO FOLDER 'Train'

num = randi([0 20])
rand = int2str(num);
randomImage = strcat(rand,'.PNG');
X = imread(randomImage);

cd C:\Users\Public\project\ %PLEASE CHANGE PATH FILE WITH THE FILE testNN
testNN(X)

%For checking
if(num>10)
    fprintf('Real: Traffic\n');
else
    fprintf('Real: Not Traffic\n');
end