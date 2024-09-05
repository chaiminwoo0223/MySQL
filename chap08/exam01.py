# 파이썬과 MySQL 연동
import pymysql

# MySQL 연결하기
conn = pymysql.connect(host="127.0.0.1", user="root", password="비밀번호", db="solo_db", charset="utf8")

# 커서 생성하기
cur = conn.cursor()

# 테이블 만들기
cur.execute("CREATE TABLE userTable(id char(4), userName char(15), email char(20), birthYear int)")

# 데이터 입력하기
cur.execute("INSERT INTO userTable VALUES('hong', '홍지윤', 'hong@naver.com', 1996)")
cur.execute("INSERT INTO userTable VALUES('kim', '김태연', 'kim@daum.net', 2011)")
cur.execute("INSERT INTO userTable VALUES('star', '별사랑', 'star@paran.com', 1990)")
cur.execute("INSERT INTO userTable VALUES('yang', '양지은', 'yang@gmail.com', 1993)")

# 입력한 데이터 저장하기
conn.commit()

# MySQL 연결 종료하기
conn.close()
