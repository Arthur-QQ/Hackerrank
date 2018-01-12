import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        String A=sc.next();
        String B=sc.next();
        int fl = A.length() + B.length();
        String sl = A.compareTo(B) > 0 ? "Yes" : "No";
        String CA = A.substring(0, 1).toUpperCase();
        String CB = B.substring(0, 1).toUpperCase();
        A = CA + A.substring(1, A.length());
        B = CB + B.substring(1, B.length());
        System.out.println(fl);
        System.out.println(sl);
        System.out.println(A + " " + B);
    }
}
