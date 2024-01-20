from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import csv


# 定义账号信息的类
class Account:
    def __init__(self, _account, name, fans_num, follow_num, like_num, play_num, birth, videos_num, list_num, video1,
                 video2, video3, video4, video5):
        self.account = _account
        self.name = name
        self.fans_num = fans_num
        self.follow_num = follow_num
        self.like_num = like_num
        self.play_num = play_num
        self.birth = birth
        self.videos_num = videos_num
        self.list_num = list_num
        self.video1 = video1
        self.video2 = video2
        self.video3 = video3
        self.video4 = video4
        self.video5 = video5


def get_authenticated_accounts(web_driver, start, is_authenticated):
    visited_accounts = set()
    accounts_to_visit = start.copy()

    next_follow = []

    while accounts_to_visit:
        current_account = accounts_to_visit.pop()
        if current_account in visited_accounts:
            continue

        visited_accounts.add(current_account)
        web_driver.get('https://space.bilibili.com/' + current_account + '/fans/follow')

        # 获取关注列表
        while True:
            follow_list = []
            time.sleep(3)
            while True:
                for item in web_driver.find_elements(By.XPATH, '//a[@class="up-cover-components"]'):
                    follow_list.append(item.get_attribute('href').split('/')[-1])
                    next_follow.append(item.get_attribute('href').split('/')[-1])
                next_page = web_driver.find_elements(By.XPATH, '//li[@class="be-pager-next"]')
                if len(next_page) == 1:
                    next_page[0].click()
                    time.sleep(1)
                else:
                    break
            if follow_list or is_authenticated:
                break

    authenticated_accounts.extend(next_follow)

    print("已有认证账号：", authenticated_accounts)
    print("cnt: ", len(authenticated_accounts))

    # if len(authenticated_accounts) > 200:
    #     return

    # get_authenticated_accounts(web_driver, next_follow, True)

    return


def get_account_infor(web_driver, _account):
    web_driver.get('https://space.bilibili.com/' + _account)
    time.sleep(3)

    # 获取认证账号基本信息，存为Account类
    statistics = web_driver.find_element(By.XPATH, '//div[@class="n-statistics"]')
    name = web_driver.find_element(By.XPATH, '//span[@id="h-name"]').text
    fans_num = statistics.find_element(By.XPATH, './/p[@class="n-data-v space-fans"]').text
    follow_num = statistics.find_element(By.XPATH, './/p[@class="n-data-v space-attention"]').text
    like_num = 0
    play_num = 0
    for item in statistics.find_elements(By.XPATH, './/div[@class="n-data n-bf"]'):
        if item.find_element(By.XPATH, './/p[@class="n-data-k"]').text == '获赞数':
            like_num = item.find_element(By.XPATH, './/p[@class="n-data-v"]').text
        if item.find_element(By.XPATH, './/p[@class="n-data-k"]').text == '播放数':
            play_num = item.find_element(By.XPATH, './/p[@class="n-data-v"]').text

    birth = ''
    user_info = web_driver.find_element(By.XPATH, '//div[@class="info-personal"]')
    for wrap in user_info.find_elements(By.XPATH, './/div[@class="info-wrap"]'):
        if wrap.find_element(By.XPATH, './/span[@class="info-command"]') == '生日':
            birth = wrap.find_element(By.XPATH, './/span[@class="info-value"]').text

    video_father = web_driver.find_element(By.XPATH, '//a[@class="n-btn n-video n-audio n-article n-album"]')
    videos_num = video_father.find_element(By.XPATH, './/span[@class="n-num"]').text
    list_father = web_driver.find_element(By.XPATH, '//a[@class="n-btn n-channel"]')
    list_num = list_father.find_element(By.XPATH, './/span[@class="n-num"]').text

    web_driver.find_element(By.XPATH, '//a[@class="n-btn n-video n-audio n-article n-album"]').click()
    time.sleep(2)

    video = []
    for item in web_driver.find_elements(By.XPATH, '//li[@class="small-item fakeDanmu-item"]'):
        bv = item.get_attribute('data-aid')
        title = item.find_element(By.XPATH, './/a[@class="title"]').text
        play = item.find_element(By.XPATH, './/span[@class="play"]').text
        video_time = item.find_element(By.XPATH, './/span[@class="time"]').text
        video.append("bv号: " + bv + "\n 视频名字: " + title + "\n 播放数: " + play + "\n 日期:" + video_time)
        if len(video) == 5:
            break
    while len(video) < 5:
        video.append("")
    video_information = Account(_account, name, fans_num, follow_num, like_num, play_num, birth, videos_num, list_num,
                                video[0], video[1], video[2], video[3], video[4])
    print(video_information.account, video_information.name, video_information.fans_num, video_information.follow_num,
          video_information.like_num,
          video_information.play_num, video_information.birth, video_information.videos_num, video_information.list_num,
          video_information.video1, video_information.video2, video_information.video3, video_information.video4,
          video_information.video5)
    return video_information


# 设置Selenium WebDriver
driver = webdriver.Edge()

authenticated_accounts = []

# 从一个特定账号开始
start_account = ['448162155']
# 获取所有认证账号
get_authenticated_accounts(driver, start_account, False)

# 去重
authenticated_accounts = list(set(authenticated_accounts))

# csv文件的表头
with open('bilibili.csv', 'w', newline='', encoding='utf-8-sig') as f:
    writer = csv.writer(f)
    writer.writerow(
        ['UID', '名称', '粉丝数', '关注数', '点赞数', '播放数', '投稿数', '合集数', '投稿1', '投稿2', '投稿3', '投稿4',
         '投稿5'])

# 输出认证账号
information = []
for account in authenticated_accounts:
    # 获取认证账号基本信息
    infor = get_account_infor(driver, account)
    information.append(infor)

# 写入csv文件的新一行
with open('bilibili.csv', 'a', newline='', encoding='utf-8-sig') as f:
    writer = csv.writer(f)
    for infor in information:
        writer.writerow([infor.account, infor.name, infor.fans_num, infor.follow_num, infor.like_num, infor.play_num,
                         infor.videos_num, infor.list_num, infor.video1, infor.video2, infor.video3, infor.video4,
                         infor.video5])

driver.quit()
