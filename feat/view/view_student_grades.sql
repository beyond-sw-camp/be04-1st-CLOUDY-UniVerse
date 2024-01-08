-- 성적 조회 뷰 생성

CREATE VIEW student_grades_view AS
SELECT
    cl.student_id AS "학번"
  , st.name AS "학생 이름"
  , cl.lecture_id AS "강의 코드"
  , lt.name AS "강의 이름"
  , cl.result_eng AS "성적(영어)"
  , cl.result_no AS "성적(숫자)"
  , cl.complete_year AS "수료 학년"
FROM
    course_lecture_tb cl
JOIN
    student_tb st ON cl.student_id = st.id
JOIN
    lecture_tb lt ON cl.lecture_id = lt.id;

-- test
-- 학번이 20220046인 학생의 전체 성적 살펴보기
SELECT
       *
   FROM student_grades_view
  WHERE 학번 = 20220046;