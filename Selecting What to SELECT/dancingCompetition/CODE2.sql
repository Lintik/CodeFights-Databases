CREATE PROCEDURE dancingCompetition()
BEGIN
      select scores.*
      from scores,
      (select 
                min(first_criterion) as min1,
                max(first_criterion) as max1,
                min(second_criterion) as min2,
                max(second_criterion) as max2,
                min(third_criterion) as min3,
                max(third_criterion) as max3
        from scores) as extremes
        where
            if(first_criterion=min1 || first_criterion =max1,1,0)+
            if(second_criterion=min2 || second_criterion =max2,1,0)+
            if(third_criterion=min3 || third_criterion =max3,1,0)<2;

END
