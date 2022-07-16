#include<cstdio>
#include<cmath>
#include<cstring>
#include<cstdlib>
#include<iostream>
#include<algorithm>

struct Graph {
    int a[130][130];    //邻接矩阵
    int n = 128;
    int d[130][130];    //d[i][j]: 第i点与第j点之间的最短路长度为d[i][j]
    int f[130][130];    //f[i][j]: 第i点与第j点之间的最短路条数为f[i][j]
    double Lp[130]; //特征路径长度(characteristic path length) Lp的倒数 倒数 倒数! (为了将所有数据范围限制在0~1)
    double Cp[130]; //聚类系数(clustering coefficient) Cp
    double Bc[130]; //介数中心度(betweenness centrality)
    double Cd[130]; //度中心性(Degree Centrality)
    double GCp = 0, GLp = 0, GBc = 0, GCd = 0;    //全图各项参数的均值
    int t[130]; //temp临时用

    Graph(const char *file) {   //根据传入的文件名初始化
        freopen(file, "r", stdin);

        //初始化
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                scanf("%d,", &a[i][j]);
                d[i][j] = 1 << 29;
                if (a[i][j]) {
                    d[i][j] = 1;
                    f[i][j] = 1;
                }
                if (i == j) {
                    d[i][j] = 0;
                    f[i][j] = 0;
                }
            }
        }

        //Floyd计算最短路以及最短路条数
        for (int k = 1; k <= n; k++) {
            for (int i = 1; i <= n; i++) {
                for (int j = 1; j <= n; j++) {
                    if (d[i][j] > d[i][k] + d[k][j]) {  //新的最短路径
                        d[i][j] = d[i][k] + d[k][j];    //更新最短怒
                        f[i][j] = f[i][k] * f[k][j];    //更新最短路条数
                    } else if (d[i][j] == d[i][k] + d[k][j]) {  //同样路径最短
                        f[i][j] += f[i][k] * f[k][j];   //添加最短路条数
                    }
                }
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
            GCp += Cp[i];
            Cd[i] = cnt *1.0 / (n - 1); //计算第i个点的度中心性Cd[i]
            GCd += Cd[i];
        }
        GCp /= n;
        GCd /= n;

        for (int i = 1; i <= n; i++) {  //计算第i个点的特征路径长度的倒数Lp[i]
            int res = 0;
            for (int j = 1; j <= n; j++) {  //枚举终点j
                if (i == j) continue;
                res += d[i][j];
            }
            Lp[i] = res * 1.0 / (n - 1);
            Lp[i] = 1.0 / Lp[i];
            GLp += Lp[i];
        }
        GLp /= n;

        for (int k = 1; k <= n; k++) {  //计算第k个节点的介数中心度
            for (int i = 1; i <= n; i++) {
                for (int j = i + 1; j <= n; j++) {
                    if (i == k || j == k) continue;
                    if (d[i][k] + d[k][j] == d[i][j]) { //如果k点在i->j的最短路上
                        Bc[k] += f[i][k] * f[k][j] * 1.0 / f[i][j];
                    }
                }
            }
            Bc[k] = Bc[k] / (n * (n - 1));
            GBc += Bc[k];
        }
        GBc /= n;

        freopen("/dev/tty", "r", stdin);
    }    

};

double x[10], y[10];
double corr(Graph &g1, Graph &g2, int n) {
    x[1] = g1.Bc[n], x[2] = g1.Cd[n], x[3] = g1.Cp[n], x[4] = g1.Lp[n], x[5] = g1.GCp, x[6] = g1.GLp, x[7] = g1.GBc, x[8] = g1.GCd;
    y[1] = g2.Bc[n], y[2] = g2.Cd[n], y[3] = g2.Cp[n], y[4] = g2.Lp[n], y[5] = g2.GCp, y[6] = g2.GLp, y[7] = g2.GBc, y[8] = g2.GCd;

    //用皮尔森相关系数计算相似性
    double xb = 0, yb = 0;  //\bar{x}与\bar{y} x与y的均值
    for (int i = 1; i <= 8; i++) {
        xb += x[i];
        yb += y[i];
    }
    xb /= 8;
    yb /= 8;
    double cov = 0;   //协方差
    double sx = 0, sy = 0;   //\sigma x与\sigma y x与y的标准差
    for (int i = 1; i <= 8; i++) {
        cov += (x[i] - xb) * (y[i] - yb);
        sx += (x[i] - xb) * (x[i] - xb);
        sy += (y[i] - yb) * (y[i] - yb);
    }
    sx = sqrt(sx);
    sy = sqrt(sy);
    return cov / (sx * sy);
}

double corr2(Graph &g1, Graph &g2, int n) {
    x[1] = g1.Bc[n], x[2] = g1.Cd[n], x[3] = g1.Cp[n], x[4] = g1.Lp[n], x[5] = g1.GCp, x[6] = g1.GLp, x[7] = g1.GBc, x[8] = g1.GCd;
    y[1] = g2.Bc[n], y[2] = g2.Cd[n], y[3] = g2.Cp[n], y[4] = g2.Lp[n], y[5] = g2.GCp, y[6] = g2.GLp, y[7] = g2.GBc, y[8] = g2.GCd;

    // 自制相似度衡量
    double res = 0;
    for (int i = 1; i <= 8; i++) {
        if (x[i] == 0 && y[i] == 0) continue;
        res += fabs(x[i] - y[i]) / (x[i] + y[i]);
    }
    res = 1 - res / 8;
    return res;
}

int main() {

    // freopen("Answer2.csv", "r", stdin);
    // freopen("a.out", "w", stdout);

    Graph *g1 = new Graph("Answer2.csv");
    Graph *g2 = new Graph("Graph2.csv");

    freopen("/dev/tty", "r", stdin);

    int n;
    // scanf("%d", &n);
    freopen("a.out", "w", stdout);
    // for (int i = 1; i <= 128 ; i++) {
    //     printf("%d %lf %lf\n", i, corr(*g1, *g2, i), corr2(*g1, *g2, i));
    //     printf("%.8lf %.8lf %.8lf %.8lf %.8lf %.8lf %.8lf %.8lf\n", g1->Bc[i], g1->Cd[i], g1->Cp[i], g1->Lp[i], g1->GCp, g1->GLp, g1->GBc, g1->GCd);
    //     printf("%.8lf %.8lf %.8lf %.8lf %.8lf %.8lf %.8lf %.8lf\n", g2->Bc[i], g2->Cd[i], g2->Cp[i], g2->Lp[i], g2->GCp, g2->GLp, g2->GBc, g2->GCd);
    // }
    for (int i = 1; i <= 10; i++) {
        printf("对于两张图的第 $%d$ 个节点：\n\n\
|      节点指标      |    Graph1    |    Graph2    |\n\
| :----------------: | :----------: | :----------: |\n\
|      $B_c(%d)$      | $%.8lf$  | $%.8lf$ |\n\
|      $C_d(%d)$      | $%.8lf$ | $%.8lf$ |\n\
|      $C_p(%d)$      | $%.8lf$ | $%.8lf$ |\n\
|     $L_p'(%d)$      | $%.8lf$ | $%.8lf$ |\n\
| $\\text{Graph}C_p$  | $%.8lf$ | $%.8lf$ |\n\
| $\\text{Graph}L_p'$ | $%.8lf$ | $%.8lf$ |\n\
| $\\text{Graph}B_c$  | $%.8lf$ | $%.8lf$ |\n\
| $\\text{Graph}C_d$  | $%.8lf$ | $%.8lf$ |\n\
\n\
则由皮尔森系数公式计算可得两张图的第 $%d$ 个节点相似度为 $%2.2lf\\%%$，由自制相似度计算方式可得其相似度为 $%2.2lf\\%%$。\n\n", i, i, g1->Bc[i], g2->Bc[i], i, g1->Cd[i], g2->Cd[i], i, g1->Cp[i], g2->Cp[i], i, g1->Lp[i], g2->Lp[i], g1->GCp, g2->GCp, g1->GLp, g2->GLp, g1->GBc, g2->GBc, g1->GCd, g2->GCd, i, 100 * corr(*g1, *g2, i), 100 * corr2(*g1, *g2, i));
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