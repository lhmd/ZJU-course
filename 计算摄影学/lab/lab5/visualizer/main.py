import numpy as np

import matplotlib.pyplot as plt

# Read the point cloud data from a file
point_cloud = np.loadtxt('ellipse753.txt')

# Separate the x, y, and z coordinates
x = point_cloud[:, 0]
y = point_cloud[:, 1]
z = point_cloud[:, 2]

# Create a 3D plot
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Plot the points
ax.scatter(x, y, z, color='#9932CD')

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('3D Point Cloud Visualization')


# 椭球参数
a = 2.94405
b = 2.30504
c = 1.79783

# 计算给出点云中有多少点在椭球内
count = 0
for i in range(len(x)):
    if (x[i] ** 2 / a ** 2 + y[i] ** 2 / b ** 2 + z[i] ** 2 / c ** 2) <= 1:
        count += 1

print('Number of points inside the ellipsoid:', count)
print('Total number of points:', len(x))
print('Percentage of points inside the ellipsoid:', count / len(x) * 100, '%')

# 参数范围
u = np.linspace(0, 2 * np.pi, 100)
v = np.linspace(0, np.pi, 100)

# 参数方程
x = a * np.outer(np.cos(u), np.sin(v))
y = b * np.outer(np.sin(u), np.sin(v))
z = c * np.outer(np.ones(np.size(u)), np.cos(v))


# 在保持上面绘制的点云的基础上，绘制椭球
ax.plot_surface(x, y, z, color='#FF7F00', alpha=1)

# 设置坐标轴
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Show the plot
plt.show()

