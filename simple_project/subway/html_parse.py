
# 각 노선의 역, 역간 거리를 위키백과 html에서 읽어옴

import requests                 # 웹 페이지의 HTML을 가져오는 모듈
from bs4 import BeautifulSoup   # HTML을 파싱하는 모듈

# 웹 페이지를 가져온 뒤 BeautifulSoup 객체를 만듦
response = requests.get('https://ko.wikipedia.org/wiki/%EC%88%98%EB%8F%84%EA%B6%8C_%EC%A0%84%EC%B2%A0_1%ED%98%B8%EC%84%A0')
soup = BeautifulSoup(response.content, 'html.parser')

result = list(soup.find_all('table', {'class': 'wikitable'}))
table = result[2]
data = []       # 데이터를 저장할 리스트 생성

for tr in table.find_all('tr'):     # 모든 <tr>태그를 찾아서 반복

    try:
        no = tr.find('th').text
    except AttributeError:
        no = 'unknown'
    # 각 지점의 데이터를 가져옴  
    tds = list(tr.find_all('td'))   # 모든 <td> 태그를 찾아서 리스트로 만듦
    
    # 각 날씨 값을 리스트로 만듦
    for td in tds[1:]:
        if td.find('a'):        # <td> 안에 <a> 태그가 있으면
            point = td.find('a').text   # <a> 태그 안에서 지점을 가져옴
            distance = tds[4].text   # <td> 태그 리스트 중 6번 째, 역간거리. 표 상에서 바로 윗 역과의 거리
            sum_dis = tds[5].text      # <td> 태그 리스트 중 7번 째, 누적거리
            
            data.append([no, point, distance, sum_dis])
            
data
