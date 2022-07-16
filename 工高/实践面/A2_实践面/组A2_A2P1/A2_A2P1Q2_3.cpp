#include<cstdio>
#include<cmath>
#include<cstring>
#include<cstdlib>
#include<iostream>
#include<algorithm>

struct Edge {
    int u, v;   //边连接的两个点
    double w;   //边权
    bool operator< (const Edge &a) const {
        return w > a.w;
    }
}e[130*130];    //存边

int f[150]; //f[i]: 第i个点的父亲节点
int find(int x) {   //查找点x的父亲节点编号
    return x == f[x] ? x : f[x] = find(f[x]);   //并查集路径压缩
}

double a[130][130]; //邻接矩阵存边

int main() {

    freopen("Answer1.csv","r",stdin);   //读取数据
    freopen("Answer2.csv","w",stdout);  //保存答案

    int m = 0, n = 128; //m条边，n个点
    //读取数据
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            double w;
            scanf("%lf", &w);
            if (j != n) scanf(",");
            if (j < i) {
                m++;
                e[m] = (Edge){i, j, w};
            }
            a[i][j] = w;  
        }
    }

    //按照边权从大到小排序
    std::sort(e + 1, e + m + 1);

    //初始化并查集
    for (int i = 1; i <= n; i++) {
        f[i] = i;
    }
    
    //魔改Kruscal最小生成树贪心算法，从边权最大的开始加边，使得边权最小值最大
    int cnt = 1;    //目前一共cnt个点和其他点形成连通块
    double threshold = -1;  //边权最小值
    for (int i = 1; i <= m; i++) {
        int fu = find(e[i].u), fv = find(e[i].v);   //分别寻找边所连的u, v两点编号
        if (fu == fv) continue; //在同一个并查集内就跳过
        cnt++;
        f[fu] = fv; //合并两个连通块
        if (cnt == n) { //所有点都在同一个连通块内，结束
            threshold = e[i].w;
            break;
        }
    }
    //打印数据
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            printf("%d", i == j ? 0 : a[i][j] >= threshold ? 1 : 0);
            if (j != n) printf(",");
        }
        puts("");
    }

    return 0;
}