import java.util.*;
import java.io.*;

class Solution{
    public static void main(String []argh){
        Scanner in = new Scanner(System.in);
        int t=in.nextInt();
        for(int i=0;i<t;i++){
            int a = in.nextInt();
            int b = in.nextInt();
            int n = in.nextInt();
            for (int limit = 0; limit < n; limit++) {
                int sum_b = 0;
                for (int j = 0; j <= limit; j++) {
                    sum_b += Math.pow(2, j) * b;
                }
                if (limit != n - 1) {
                    System.out.print((sum_b + a) + " ");
                } else {
                    System.out.println(sum_b + a);
                }
            }
        }
        in.close();
    }
}
