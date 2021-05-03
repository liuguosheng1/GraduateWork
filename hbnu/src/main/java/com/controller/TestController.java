package com.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Scanner;

public class TestController {
    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        String l=scanner.next();
        StringBuilder sqls=null;
        Scanner scanner1=new Scanner(l);
        while(scanner1.hasNextLine()){
            sqls.append(scanner.next());
        }
        //将输入的SQL语句转换为数组 遍历  from后一个元素 若为‘（’则舍去，否则添加到ArrayList中
        ArrayList<String> array=search(sqls);
        for(int j =0;j<array.size();j++){
            System.out.println(array.get(j));
        }
    }

    private static ArrayList<String> search(StringBuilder sqls) {
        ArrayList<String> list=new ArrayList<>();
        String[] array=sqls.toString().split(" ");
        for(int i=0;i<array.length;i++){
            if(array[i].equals("from")){
                if(!array[i+1].equals("(")){
                    list.add(array[i+1]);
                }
            }
        }
        return list;
    }
}
