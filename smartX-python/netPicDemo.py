# -*- coding: utf-8 -*-
# 

# 检测人脸
import face_recognition
import cv2
from skimage import io,data
import requests
from PIL import Image
from io import BytesIO


imgPath = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552997382725&di=34be149d59da47ac2b2a9b525f526ee5&imgtype=0&src=http%3A%2F%2Fimg.smzy.com%2Fdown%2FUploadPic%2F2014-5%2F20145191534516050.jpg"

response = requests.get(imgPath)
image = Image.open(BytesIO(response.content))
image.save('D:/1.jpg')

imgPath ='D:/1.jpg'

# 读取图片并识别人脸
img = face_recognition.load_image_file(imgPath)
face_locations = face_recognition.face_locations(img)

print(face_locations)

# 调用opencv函数显示图片
img = cv2.imread(imgPath)
cv2.namedWindow("old")
cv2.imshow("old", img)

# 遍历每个人脸，并标注
faceNum = len(face_locations)
print("all people num > ",faceNum)
for i in range(0, faceNum):
    top =  face_locations[i][0]
    right =  face_locations[i][1]
    bottom = face_locations[i][2]
    left = face_locations[i][3]

    start = (left, top)
    end = (right, bottom)

    color = (255,1,1)
    thickness = 3
    cv2.rectangle(img, start, end, color, thickness)

# 显示识别结果
cv2.namedWindow("new")

cv2.imshow("new", img)


cv2.waitKey(0)
cv2.destroyAllWindows()
