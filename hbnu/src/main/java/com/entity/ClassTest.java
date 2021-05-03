package com.entity;

public class ClassTest {
    private String title;
    private String itemA;
    private String itemB;
    private String itemC;
    private String itemD;
    private String answer;
    private String score;

    @Override
    public String toString() {
        return "ClassTest{" +
                "title='" + title + '\'' +
                ", itemA='" + itemA + '\'' +
                ", itemB='" + itemB + '\'' +
                ", itemC='" + itemC + '\'' +
                ", itemD='" + itemD + '\'' +
                ", answer='" + answer + '\'' +
                ", score='" + score + '\'' +
                '}';
    }

    public ClassTest() {
    }

    public ClassTest(String title, String itemA, String itemB, String itemC, String itemD, String answer, String score) {
        this.title = title;
        this.itemA = itemA;
        this.itemB = itemB;
        this.itemC = itemC;
        this.itemD = itemD;
        this.answer = answer;
        this.score = score;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getItemA() {
        return itemA;
    }

    public void setItemA(String itemA) {
        this.itemA = itemA;
    }

    public String getItemB() {
        return itemB;
    }

    public void setItemB(String itemB) {
        this.itemB = itemB;
    }

    public String getItemC() {
        return itemC;
    }

    public void setItemC(String itemC) {
        this.itemC = itemC;
    }

    public String getItemD() {
        return itemD;
    }

    public void setItemD(String itemD) {
        this.itemD = itemD;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }
}
