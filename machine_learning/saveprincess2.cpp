#include <iostream>
#include <vector>
using namespace std;
void nextMove(int n, int r, int c, vector <string> grid){
    int prx, pry;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (grid[i][j] == 'p') {
                prx = i; pry = j;
            }
        }
    }
    int difx = prx - r;
    int dify = pry - c;
    if (difx > 0) {
        difx--;
        cout << "DOWN\n";
    } else if (difx < 0) {
        difx++;
        cout << "UP\n";
    } else if (dify > 0) {
        dify--;
        cout << "RIGHT\n";
    } else if (dify < 0) {
        dify++;
        cout << "LEFT\n";
    }
}
int main(void) {

    int n, r, c;
    vector <string> grid;

    cin >> n;
    cin >> r;
    cin >> c;

    for(int i=0; i<n; i++) {
        string s; cin >> s;
        grid.push_back(s);
    }

    nextMove(n, r, c, grid);
    return 0;
}
