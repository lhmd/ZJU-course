import matplotlib.pyplot as plt
from matplotlib.font_manager import FontProperties
from math import log

# 设置中文字体
font = FontProperties(fname=r"c:\windows\fonts\simsun.ttc", size=18)

# 数据
x = [10000,
100000,
1000000,
10000000,
20000000
]
x1 = [log(i, 10) for i in x]
y1 = [0.01,
0.118,
0.838,
7.52,
15.021
]
y2 = [0.006,
0.119,
0.721,
7.467,
15.006
]
y3 = [0.005,
0.073,
0.146,
0.92,
1.681
]
z1 = [0.012,
0.095,
0.914,
8.964,
18.531
]
z2 = [0.007,
0.082,
0.809,
8.563,
17.616
]
z3 = [0.01,
0.094,
0.283,
1.461,
2.366
]

# 绘制折线统计图
plt.plot(x1, y3, color='blue', linewidth=2, marker='o', label='skip list')
plt.plot(x1, z3, color='green', linewidth=2, marker='o', label='std::map')

# 添加图例和标题
plt.legend(loc='upper left')
plt.title('Comparation on Deletion', fontproperties=font, fontsize=24)

# 添加坐标轴标签
plt.xlabel('log(DatasetNum)', fontproperties=font, fontsize=20)
plt.ylabel('Time/sec', fontproperties=font, fontsize=20)

# 设置坐标轴范围
plt.xlim(4, 8)
plt.ylim(0, 20)

# 显示图形
plt.show()
