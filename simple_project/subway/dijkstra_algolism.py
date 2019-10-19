
from collections import defaultdict


mtrx = {'충정로': {'아현': 1.5, '서대문': 2.1, '시청': 1.4, '애오개': 1.5},
        '서대문': {'광화문': 2.0, '충정로': 2.1},
        '광화문': {'종로3가': 2.3, '서대문': 2.0},
        '종로3가': {'종각': 1.2, '광화문': 2.3, '안국': 2.9, '종로5가': 0.9, '을지로4가': 2.7, '을지로3가': 2.6},
        '종각': {'시청': 0.8, '종로3가': 1.2},
        '시청': {'충정로': 1.4, '종각': 0.8, '서울역': 3.0},
        '종로5가': {'종로3가': 0.9},
        '아현': {'충정로':1.5},
        '애오개': {'충정로':1.5}
        }

mtrx2 = {'0': {'1': 7, '4': 3, '5': 10},
         '1': {'0': 7, '2': 4, '3': 10},
         '2': {'1': 4, '3': 2},
         '3': {'1': 10, '2': 2, '4':11, '5':9, '6':4},
         '4': {'0': 3, '1':2, '3':11, '6':5},
         '5': {'0':10, '1':6, '3':9},
         '6': {'3':4, '4':5}
         }
# 2차원 가중치 그래프가 주어지면
# 한 정점으로부터 다른 모든 정점까지의
# 최단거리를 구하는 다이직스트라 알고리즘.

def dijkstra(weight_mtrx, start):
    visited = [start]                   # 방문했던 노드
    distance = weight_mtrx.get(start)   # 시작노드의 가중치
    
    # 모든 정점을 방문할 때까지 반복
    while set(visited) != set(weight_mtrx.keys()):
        
        min_key = ''
        min_value = 100
        for k, v in distance.items():
            if k in visited:
                continue
            if v < min_value:
                min_value = v
                min_key = k         # 딕셔너리 중 최소값을 가지는 키
        visited.append(min_key)

        for k, v in weight_mtrx.get(min_key).items():
            if k not in visited:
                if distance.get(k) == None:
                    distance.setdefault(k, 100)
                if distance[min_key] + v < distance.get(k):
                    del distance[k]
                    distance.setdefault(k, round(distance[min_key] + v, 2))
                
    print(visited)
    print(distance)

dijkstra(mtrx, '아현')
