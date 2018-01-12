import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int a[][] = new int[n][n];
        for(int a_i=0; a_i < n; a_i++){
            for(int a_j=0; a_j < n; a_j++){
                a[a_i][a_j] = in.nextInt();
            }
        }
        int first_diagonal_sum = 0;
        int second_diagonal_sum = 0;
        for (int i = 0;i < n;i++) {
            for (int ii = 0; ii < n;ii++) {
                if (i == ii) {
                    first_diagonal_sum += a[i][ii];
                }
                int altura = n - i - 1;
                int largura = ii;
                if (altura == largura) {
                    second_diagonal_sum += a[i][ii];
                }
            }
        }
        System.out.println(Math.abs(first_diagonal_sum - second_diagonal_sum));
    }
}
