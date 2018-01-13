using System;
using System.Collections.Generic;
using System.IO;

class Solution {
    static void next_move(int posr, int posc, String [] board){
        if (board[posr][posc] == 'd') {
            Console.WriteLine("CLEAN");
        } else {
            int menordist = 9;
            int mx = -1;
            int my = -1; int dif_x, dif_y;
            for (int i = posr - 1; i <= posr + 1; i++) {
                for (int j = posc - 1; j <= posc + 1; j++) {
                    if (i >= 0 && j >= 0 && i < 5 && j < 5) {
                        if (board[i][j] == 'd') {
                            dif_x = posr - i;
                            dif_y = posc - j;
                            if (dif_x + dif_y < menordist) {
                                menordist = dif_x + dif_y;
                                mx = i;
                                my = j;
                            }
                        }
                    }
                }
            }
            if (menordist != 9) {
                dif_x = posr - mx;
                dif_y = posc - my;
                if (dif_x > 0) {
                    Console.WriteLine("UP"); return;
                } else if (dif_x < 0) {
                    Console.WriteLine("DOWN"); return;
                } else if (dif_y > 0) {
                    Console.WriteLine("LEFT"); return;
                } else {
                    Console.WriteLine("RIGHT"); return;
                }
            }
            int x = posr;
            int y = posc;
            switch (y) {
                case 0:
                    if (x < 4) {
                        Console.WriteLine("DOWN");
                    } else {
                        Console.WriteLine("RIGHT");
                    }
                    break;
                case 1:
                    if (x > 0) {
                        if (x % 2 == 0) {
                            Console.WriteLine("UP");
                        } else {
                            Console.WriteLine("RIGHT");
                        }
                    } else {
                        Console.WriteLine("LEFT");
                    }
                    break;
                case 4:
                    if (x % 2 == 0) {
                        Console.WriteLine("LEFT");
                    } else {
                        Console.WriteLine("UP");
                    }
                    break;
                default:
                    if (x % 2 == 0) {
                        Console.WriteLine("LEFT");
                    } else {
                        Console.WriteLine("RIGHT");
                    }
                    break;
            }
        }
    }
    static void Main(String[] args) {
        String temp = Console.ReadLine();
        String[] position = temp.Split(' ');
        int[] pos = new int[2];
        String[] board = new String[5];
        for(int i=0;i<5;i++) {
            board[i] = Console.ReadLine();
        }
        for(int i=0;i<2;i++) pos[i] = Convert.ToInt32(position[i]);
        next_move(pos[0], pos[1], board);
    }
}
