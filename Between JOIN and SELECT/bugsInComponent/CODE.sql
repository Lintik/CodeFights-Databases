CREATE PROCEDURE bugsInComponent()
BEGIN
    SELECT bt.title bug_title, ct.title component_title, 
        (SELECT COUNT(*) FROM BugComponent 
         WHERE component_id = id) bugs_in_component 
    FROM Bug bt, Component ct, BugComponent
    WHERE id = component_id && bug_num = num &&
        (SELECT COUNT(*) FROM BugComponent WHERE bug_num = num) > 1
    ORDER BY bugs_in_component DESC, id, num;
END
