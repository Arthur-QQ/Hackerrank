import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int dcount = 1;
        while (sc.hasNextLine()) {
            String s = sc.nextLine();
            System.out.println(dcount + " " + s);
            dcount++;
        }
    }
}
