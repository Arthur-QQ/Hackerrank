#include<iostream>
#include<vector>
using namespace std;

int getdist(int a, int b, int c, int d) {
    return abs(a - b) + abs(c - d);
}

void nextMove(int posr, int posc, vector <string> board) {
    int mindist = 0x3f3f3f3f;
    int x, y;
    if (board[posr][posc] == 'd') {
        cout << "CLEAN\n";
        return;
    }
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (board[i][j] == 'd') {
                int the_distance = getdist(posr, posc, i, j);
                if (the_distance < mindist) {
                    x = i; y = j;
                    mindist = the_distance;
                }
            }
        }
    }
    int difx = x - posr;
    int dify = y - posc;
    if (dify != 0) {
        if (dify < 0) {
            cout << "LEFT\n";
        } else {
            cout << "RIGHT\n";
        }
    } else if (difx != 0) {
        if (difx < 0) {
            cout << "UP\n";
        } else {
            cout << "DOWN\n";
        }
    }
}
int main(void) {
    int pos[2];
    vector <string> board;
    cin>>pos[0]>>pos[1];
    for(int i=0;i<5;i++) {
        string s;
        cin >> s;
        board.push_back(s);
    }
    nextMove(pos[0], pos[1], board);
    return 0;
}
