package com.entity;

public class SelectCourse {
private int index;
private String stuId;
private String stuCourse;
private int stuGrade;
private Integer stuRank;

public SelectCourse() {
	// TODO Auto-generated constructor stub
}

public Integer getStuRank() {
	return stuRank;
}



public void setStuRank(Integer stuRank) {
	this.stuRank = stuRank;
}



public SelectCourse(String string, String string2, int i) {
}



public int getIndex() {
	return index;
}



public void setIndex(int index) {
	this.index = index;
}



public String getStuId() {
	return stuId;
}

public void setStuId(String stuId) {
	this.stuId = stuId;
}

public String getStuCourse() {
	return stuCourse;
}

public void setStuCourse(String stuCourse) {
	this.stuCourse = stuCourse;
}

public int getStuGrade() {
	return stuGrade;
}

public void setStuGrade(int stuGrade) {
	this.stuGrade = stuGrade;
}


}
