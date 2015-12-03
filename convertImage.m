
% For traffic 
cd C:\Users\Public\project\Traffic\ % Local path of traffic pics
traffic = dir('*.PNG');
length(traffic)
for k = 1:length(traffic)
    filename_traffic = traffic(k).name;
    I = imread(filename_traffic);
    I = rgb2gray(I); % convert to grayscale
    T(:,k) = reshape(I,1,[]); 
end
clear I k

% For no traffic
cd C:\Users\Public\project\Not_Traffic\ % Local path of not traffic pics
notTraffic = dir('*.PNG');
length(notTraffic)
for k = 1:length(notTraffic)
    filename_notTraffic = notTraffic(k).name;
    I = imread(filename_notTraffic);
    I = rgb2gray(I);
    NT(:,k) = reshape(I,1,[]); 
end
clear I k

trainData = [T NT];