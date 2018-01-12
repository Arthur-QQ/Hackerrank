import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int arr[] = new int[n];
        int zeroes = 0;
        int positive = 0;
        int negative = 0;
        for(int arr_i=0; arr_i < n; arr_i++){
            arr[arr_i] = in.nextInt();
            if (arr[arr_i] == 0) {
                zeroes ++;
            } else if (arr[arr_i] > 0) {
                positive ++;
            } else {
                negative ++;
            }
        }
        DecimalFormat df = new DecimalFormat("0.000000");
        System.out.println(df.format((positive+0.0) / n) + "\n" + df.format((negative+0.0) / n) + "\n" + df.format((zeroes+0.0) / n));
        
    }
}
