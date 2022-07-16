#include<cstdio>
#include<cmath>
#include<cstring>
#include<cstdlib>
#include<iostream>
#include<algorithm>

struct Graph {
    int a[130][130];    //邻接表
    int n = 128;
    double Cp[130]; //聚类系数(clustering coefficient) Cp
    int t[130]; //temp临时用

    Graph(const char *file) {   //根据传入的文件名进行初始化
        freopen(file, "r", stdin);

        //初始化
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                scanf("%d,", &a[i][j]);
            }
        }

        for (int i = 1; i <= n; i++) {  //计算第i个点的聚类系数
            int cnt = 0;    //第i个点与cnt个点直接相连
            for (int j = 1; j <= n; j++) {
                if (i == j) continue;
                if (a[i][j]) t[++cnt] = j;  //暂时保存相连的点
            }
            int res = 0;    //相连的cnt个点中有res条边
            for (int j = 1; j <= cnt; j++) {
                for (int k = 1; k < j; k++) {
                    if (a[t[j]][t[k]]) res++;   //两点间有连边，res++
                }
            }
            if (cnt <= 1) Cp[i] = 0;
            else Cp[i] = res * 1.0 / (cnt * (cnt - 1) / 2); //计算第i个点的聚类系数Cp[i]
        }

        freopen("/dev/tty", "r", stdin);
    }    

};


int main() {

    Graph *g1 = new Graph("Answer2.csv");
    freopen("Answer3.csv", "w", stdout);
    printf("节点,聚类系数\n");
    for (int i = 1; i <= 128; i++) {
        printf("\"%d\t\",%.8lf\n", i, g1->Cp[i]);
    }

    return 0;
}

/*
7
1,1,1,1,0,1,1
1,1,1,0,0,0,0
1,1,1,0,0,0,0
1,0,0,1,1,0,0
0,0,0,1,1,1,0
1,0,0,0,1,1,0
1,0,0,0,0,0,1
*/