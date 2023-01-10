#include<stdio.h> 
#define MAXN_EDGE 4005
#define MAXN_POINT 1005
/*We use the adjacency table to represent the graph, 
edge structure to represent an edge, next represents the 
serial number of the next edge from the same starting point 
of this edge, to represents the end point of this edge, 
and w is the weight of this edge*/ 
struct edge {
	int next;
	int to;
	int w;
}Edge[MAXN_EDGE];
/*The head array contains the last 
edge entered starting from the following punctuation*/
int Head[MAXN_POINT];
//Idx is a marking symbol that records how many edges are entered
int idx = 1;

/*The shortest path required from the starting 
point to each point is stored in the min2Dis array, 
and its value is stored in min2Dis every time the 
secondary path is updated*/
int minDis[MAXN_POINT], min2Dis[MAXN_POINT];
/*The shortest path is recorded in the pathmin array, 
and the updated minor path is recorded in pathmin2*/
int pathMin2[MAXN_POINT], pathMin[MAXN_POINT];

//Size is the number of elements in the current heap
int size;
/*Two values are stored in the heap: 
the subscript of the point and the distance from 
the starting point to this point (which may be the 
shortest or the second shortest)*/
struct Heap {
	int dis;
	int endPoint;
} Elements[MAXN_POINT];
/*Change is used to pass the updated value 
and record the shortest path that was changed last time*/
int change;

//This function is used to generate the adjacency list
void addEdge(int u, int v, int w) {
	Edge[idx].next = Head[u];
	Edge[idx].to = v;
	Edge[idx].w = w;
//	Update the value of the head array to point to the latest edge
	Head[u] = idx++;
}

//Update the value of the head array to point to the latest edge
void push(int endpoint, int dis) {
//	Heap size plus one
	size++;
//	Place the new value in the last digit
	Elements[size].endPoint = endpoint;
	Elements[size].dis = dis;
	int i = size;
//	Push the last bit up until the heap conforms to the property of the smallest heap
	for(; Elements[i/2].dis > dis; i /= 2) {
		Elements[i].dis = Elements[i/2].dis;
		Elements[i].endPoint = Elements[i/2].endPoint;
	} 
	Elements[i].dis = dis;
	Elements[i].endPoint = endpoint;
}

//This function is used to delete the first element in the heap
void pop() {
//	Place the last element in the first
	Elements[1].dis = Elements[size].dis;
	Elements[1].endPoint = Elements[size--].endPoint;
//	Record the elements to be moved down
	int LastElementDis = Elements[1].dis;
	int LastElementP = Elements[1].endPoint;
	int i = 1, child;
//	Push the last bit up until the heap conforms to the property of the smallest heap
	for(; i*2 <= size; i = child) {
		child = i*2;
		if (child != size && Elements[child+1].dis < Elements[child].dis)
			child++;
		if ( LastElementDis > Elements[child].dis ) {
			Elements[i].dis = Elements[child].dis;
			Elements[i].endPoint = Elements[child].endPoint;
		}
		else     break;
	}
	Elements[i].dis = LastElementDis;
	Elements[i].endPoint = LastElementP;
}

//Update shortest path
void updateMin(int i, int tempDis, int preP) {
	/*If the distance between the edge 
	and the starting point of the edge is less than 
	the minimum distance between the starting point and 
	the edge, the minimum value will be updated, and the 
	updated minimum value will be recorded to update the 
	secondary short path*/
	if(Edge[i].w + tempDis < minDis[Edge[i].to]) {
//		Record the updated value
		change = minDis[Edge[i].to];
		minDis[Edge[i].to] = Edge[i].w + tempDis;
		int temp = preP;
		preP = pathMin[Edge[i].to];
//		Put the updated node back into the heap
		push(Edge[i].to, minDis[Edge[i].to]);
		int j;
//		Record the shortest path
//		pathMin2[Edge[i].to] = pathMin[Edge[i].to]; 
		pathMin[Edge[i].to] = temp;
	}
}

/*If the updated path value recorded last is between 
the current shortest path and the secondary path, 
the secondary path will be updated*/
void updateMin2(int i, int tempDis, int preP) {
//	Judge whether the update conditions are met
	if(change > minDis[Edge[i].to] && change < min2Dis[Edge[i].to]) {
		min2Dis[Edge[i].to] = change;
//		Put the updated secondary short path into the heap
		push(Edge[i].to, min2Dis[Edge[i].to]);
		pathMin2[Edge[i].to] = preP;
	}
}

//This function is used to execute the Dijkstra algorithm
void dijkstra(int n) {
//	The distance from the starting point to the starting point is set to 0
	minDis[1] = 0;
//	Put the starting point in the pile
	push(1, minDis[1]);
//	When the heap is not empty
	while(size) {
//		Record the smallest element in the current heap
		int tempPoint = Elements[1].endPoint;
		int tempDis = Elements[1].dis;
//		Pop the smallest element out of the heap
		pop();
		/*If the smallest element is larger than the 
		secondary short path, it is directly performed*/
		if(tempDis > min2Dis[tempPoint]) continue;
		int i;
		/*Traverse every edge starting from this point, 
		and update the shortest path and secondary path*/
		for(i = Head[tempPoint]; i != -1; i = Edge[i].next) {
			change = Edge[i].w + tempDis;
			updateMin(i, tempDis, tempPoint);
			updateMin2(i, tempDis, tempPoint);
		}
	}
}

//Recursive output secondary short path
void print(int n, int i, int flag) {
	int res;
//	Judgment of recursive end point
	if(i > 1){
//		Whether the subscripts stored 
//		in the secondary short path and the shortest path are different
		if(flag == 0) {
			/*If the subscripts in the previous shortest path 
			and the secondary path are the same, but this time 
			they are different, output the value stored in the 
			secondary path array, and mark the flag as 1*/
			if(pathMin2[i] != pathMin[i] || pathMin2[i-1] == 0) {
				print(n, pathMin2[i], 1);
				res = pathMin2[i];
			}else{
				print(n, pathMin2[i], 0);
				res = pathMin2[i];
			}
		}else{
//			When the flag is 1, the subscript 
//			stored in the shortest path is directly output
			print(n, pathMin[i], 1);
			res = pathMin[i];
		}
		printf(" %d", res);
	}
	else return;	
}

int main() {
	int m, n, i;
//	Enter map size and number of paths
	scanf("%d%d", &n, &m);
	/*Initialize the path between 
	the points so that they are disconnected from each other*/
	for(i = 0; i < MAXN_POINT; i++) {
//		-1 represents no edge starting from this point
		Head[i] = -1;
		minDis[i] = 65535;
		min2Dis[i] = 65535;
	}
//	Enter each edge
	for(i = 0; i < m; i++) {
		int u, v, w;
		scanf("%d%d%d", &u, &v, &w);
		addEdge(u, v, w);
	}
//	Call Dijkstra function
	dijkstra(n);
	/*If the secondary short path is still initialized after execution, 
	it means that there is no secondary short path*/
	if(min2Dis[n] == 65535)printf("There is no path!\n");
	else{
//		Output results
		printf("%d", min2Dis[n]);
		print(n, n, 0);	
		printf(" %d", n);
	}
} 
