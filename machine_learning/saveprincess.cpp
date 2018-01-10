#include <iostream>
#include <vector>
using namespace std;
void displayPathtoPrincess(int n, vector <string> grid){
    int rbx, rby, prx, pry;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (grid[i][j] == 'm') {
                rbx = i;
                rby = j;
            } else if (grid[i][j] == 'p') {
                prx = i;
                pry = j;
            }
        }
    }
    int difx = prx - rbx;
    int dify = pry - rby;
    int maximo = max(abs(dify), abs(difx));
    for (int i = 0; i < maximo; i++) {
        if (difx > 0) {
            difx--;
            cout << "DOWN\n";
        } else if (difx < 0) {
            difx++;
            cout << "UP\n";
        }
        if (dify > 0) {
            dify--;
            cout << "RIGHT\n";
        } else if (dify < 0) {
            dify++;
            cout << "LEFT\n";
        }
    }
}
int main(void) {

    int m;
    vector <string> grid;

    cin >> m;

    for(int i=0; i<m; i++) {
        string s; cin >> s;
        grid.push_back(s);
    }

    displayPathtoPrincess(m,grid);

    return 0;
}
