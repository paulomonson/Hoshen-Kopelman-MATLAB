function EucDist = EucDist(D1, D2)
   
    EucDist = sqrt( ...
            (D1(1) - D2(1)) ^ 2 + ...
            (D1(2) - D2(2)) ^ 2 ...
        );

end



