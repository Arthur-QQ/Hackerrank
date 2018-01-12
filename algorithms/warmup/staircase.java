import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for (int i = 1;i<=n;i++) {
            System.out.println(multiply_string(" ", n - i) + multiply_string("#", i));
        }
    }
    public static String multiply_string(String s,int a) {
        String out = "";
        for (int i = 0;i<a;i++) {
            out += s;
        }
        return out;
    }
}
