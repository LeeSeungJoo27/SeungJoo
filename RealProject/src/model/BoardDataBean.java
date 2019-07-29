package model;

import java.util.Date;

public class BoardDataBean {

   private int num; //글 번호
   private String boardid; // 이 게시판이 공지사항인지 자유게시판인지 구분하는 거  1이면공지사항 2이면 자유게시판
   private String writer; // 작성자
   private String subject; // 제목
   private String email; // e-mail
   private String password; // 비밀번호
   private Date reg_date; // 글 쓴 날짜
   private String reg_date_string;
   private int readcount; // 조회수
   private int ref; // 본문 글 번호
   private int re_level; // 답글 레벨 (답글의 답글)
   private int re_step; // 답글 달리는 순서 먼저 들어온게 뒤로 간다
   private String content; // 내용
   private String ip; //ip
   private String filename; // 업로드할 파일을 의미하는 건가?
   private int filesize; // 업로드할 파일 사이즈??
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public String getBoardid() {
	return boardid;
}
public void setBoardid(String boardid) {
	this.boardid = boardid;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Date getReg_date() {
	return reg_date;
}
public void setReg_date(Date reg_date) {
	this.reg_date = reg_date;
}
public int getReadcount() {
	return readcount;
}
public void setReadcount(int readcount) {
	this.readcount = readcount;
}
public int getRef() {
	return ref;
}
public void setRef(int ref) {
	this.ref = ref;
}
public int getRe_level() {
	return re_level;
}
public void setRe_level(int re_level) {
	this.re_level = re_level;
}
public int getRe_step() {
	return re_step;
}
public void setRe_step(int re_step) {
	this.re_step = re_step;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getIp() {
	return ip;
}
public void setIp(String ip) {
	this.ip = ip;
}
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public int getFilesize() {
	return filesize;
}
public void setFilesize(int filesize) {
	this.filesize = filesize;
}
public String getReg_date_string() {
return reg_date_string;
}
public void setReg_date_string(String reg_date_string) {
	this.reg_date_string = reg_date_string;
}
   
@Override
public String toString() {
	return "BoardDataBean [num=" + num + ", boardid=" + boardid + ", writer=" + writer + ", subject=" + subject
			+ ", email=" + email + ", password=" + password + ", reg_date=" + reg_date + ", readcount=" + readcount
			+ ", ref=" + ref + ", re_level=" + re_level + ", re_step=" + re_step + ", content=" + content + ", ip=" + ip
			+ ", filename=" + filename + ", filesize=" + filesize + "]";
}
 
   
   
   
}