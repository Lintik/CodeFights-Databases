CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	SELECT id, name, surname
    	FROM Suspect 
    	WHERE LEFT(name, 1) != 'b' OR surname NOT LIKE 'gre_n' OR height <= 170;
END  
