-- rental_availability가 0으로 업데이트될 경우 rent_structure_tb 테이블에서
-- 해당 강의실에 대한 모든 대관을 삭제하는 트리거

DELIMITER //

CREATE TRIGGER after_update_rental_availability
AFTER UPDATE ON lecture_room_tb
FOR EACH ROW
BEGIN
    IF NEW.rental_availability = 0 THEN
        DELETE FROM rent_structure_tb WHERE lecture_room_id = NEW.id;
    END IF;
END;

//
DELIMITER ;

-- 트리거 삭제
-- DROP TRIGGER after_update_rental_availability;

-- test 
-- lecture_room_tb에서 id가 1101인 강의실의 rental_availability가 
-- 0으로 바뀔 경우
UPDATE lecture_room_tb
SET rental_availability = 0
WHERE id = 1102;

-- 조회
SELECT * FROM lecture_room_tb;
SELECT * FROM rent_structure_tb;

-- init
UPDATE lecture_room_tb
SET rental_availability = 1
WHERE id = 1102;