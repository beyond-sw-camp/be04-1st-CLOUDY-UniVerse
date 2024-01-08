-- 학적 조회 VIEW
create view student_total_recode as
select
       cr.student_id "학번"
     , st.name "이름"
     , cr.eng_name "영문이름"
     , cr.resident_registration_no "주민등록번호"
     , cr.student_img "프로필_사진"
     , case
        when(cr.gender = 'M') then '남성'
        when(cr.gender = 'F') then '여성'
        else '미입력'
       end as "성별"
     , cr.nationality "국적"
     , cr.email "이메일"
     , cr.phone_no "연락처"
     , cr.address "주소"
     , concat(cr.admission, '년') "입학년도"
     , if(cr.graduation is not null, concat(cr.graduation,'년'), null) "졸업(예정)년도"
     , cr.complete_term "이수학기"
     , cr.grade "학년"
     , cr.status "학적상태"
     , cr.process "과정구분"
     , cr.credit "신청학점"
     , cr.get_credit "이수학점"
     , round(cr.grade_point_avg, 2) "평균성적"
  from college_recode_tb cr
  join student_tb st on st.id = cr.student_id;

select * from student_total_recode;