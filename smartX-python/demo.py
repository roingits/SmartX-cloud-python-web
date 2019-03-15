# -*- coding: utf-8 -*-
# 

# 检测人脸
import face_recognition
import cv2
from skimage import io,data

imgPath = "test.jpg"

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
