DELIMITER //

CREATE TRIGGER college_recode_update_after_result_update
    AFTER UPDATE
    ON course_lecture_tb
    FOR EACH ROW
BEGIN
    IF NEW.result_no IS NOT NULL THEN
        UPDATE college_recode_tb
        SET grade_point_avg = (
            SELECT TRUNCATE(AVG(result_no), 2)
            FROM course_lecture_tb
            WHERE college_recode_tb.student_id = course_lecture_tb.student_id
                AND course_lecture_tb.result_no IS NOT NULL
        )
        WHERE student_id IN (SELECT DISTINCT student_id FROM course_lecture_tb);
    END IF;
END//

DELIMITER ;