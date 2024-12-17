CREATE TABLE 교수
(
  교번 INT NOT NULL,
  교수명 INT NOT NULL,
  PRIMARY KEY (교번)
);

CREATE TABLE 강의실
(
  강의실번호 INT NOT NULL,
  좌석수 INT NOT NULL,
  PRIMARY KEY (강의실번호)
);


CREATE TABLE 교과목
(
  과목번호 INT NOT NULL,
  과목명 INT NOT NULL,
  PRIMARY KEY (과목번호)
);


CREATE TABLE 강의
(
  FOREIGN KEY (교번) REFERENCES 교수(교번),
  FOREIGN KEY (강의실번호) REFERENCES 강의실(강의실번호),
  FOREIGN KEY (과목번호) REFERENCES 교과목(과목번호)
);


CREATE TABLE 학생
(
  학번 INT NOT NULL,
  학생명 INT NOT NULL,
  PRIMARY KEY (학번)
);


CREATE TABLE 수강취소
(
  취소날짜 INT NOT NULL,
  FOREIGN KEY (괴목번호) REFERENCES 교과목(과목번호),
  FOREIGN KEY (학번) REFERENCES 학생(학번)
);


CREATE TABLE 수강신청
(
  신청날짜 INT NOT NULL,
  FOREIGN KEY (괴목번호) REFERENCES 교과목(과목번호),
  FOREIGN KEY (학번) REFERENCES 학생(학번)
);


CREATE TABLE 멘토링
(
  FOREIGN KEY (학번) REFERENCES 학생(학번),
  FOREIGN KEY (학번) REFERENCES 학생(학번)
);