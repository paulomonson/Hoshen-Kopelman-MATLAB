D1 = [70 40];
D2 = [330 228];

disp("Euclidian distance: " + EucDist(D1, D2))
disp("City-block (D4) distance: " + Dist4(D1, D2))
disp("Chessboard (D8) distance: " + Dist8(D1, D2))

disp("Euclidian distance: " + pdist2(D1, D2, "euclidean"))
disp("City-block (D4) distance: " + pdist2(D1, D2, "cityblock"))
disp("Chessboard (D8) distance: " + pdist2(D1, D2, "chebychev"))

%%

lattice = [1   0   0   0   1 
           1   0   1   0   0
           0   1   1   1   1
           1   1   0   1   1
           1   1   1   1   1];

[trueLabels, nClusters] = bwlabel(lattice, 4);

trueLabels

for cluster = 1:nClusters
    [rows, cols] = find(trueLabels == cluster);
    
    [centroid(cluster, 1), centroid(cluster, 2)] = deal( ...
            sum(rows)/numel(rows), ...
            sum(cols)/numel(cols) ...
        );
    centroid
end
