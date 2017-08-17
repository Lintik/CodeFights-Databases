/*Please add ; after each select statement*/
CREATE PROCEDURE soccerGameSeries()
BEGIN
    select elt(
               sign( 
                   sum(
                       sign((@a:=first_team_score) - @b:=second_team_score) * 1e4 + 
                       (@a - @b) * 1e2 + 
                       (2 = @c:=match_host) * @a - (@c = 1) * @b
                   )
               ) + 2, 2, 0, 1
           ) winner
        from scores;
END
