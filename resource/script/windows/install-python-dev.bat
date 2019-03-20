echo off

echo "[smartX-logger-info]>>>>>>>>>>> ������Init"
start vbs/0.vbs
ping 127.0.0.1 -n 10 > nul
start vbs/01.vbs
ping 127.0.0.1 -n 3 > nul
echo "======================================================"
echo "                                   _          		"
echo "                                  | |         		"
echo "  ___   _ __ ___     __ _   _ __  | |_  __  __        "
echo " / __| | '_ ` _ \   / _` | | '__| | __| \ \/ /        "
echo " \__ \ | | | | | | | (_| | | |    | |_   >  <         "
echo " |___/ |_| |_| |_|  \__,_| |_|     \__| /_/\_\        "
echo "														"
echo "======================================================"

ping 127.0.0.1 -n 10 > nul                                              
start vbs/1.vbs
ping 127.0.0.1 -n 2 > nul
start vbs/2.vbs
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> �����������̣�ȫ�����߰�װ��"
ping 127.0.0.1 -n 12 > nul
start vbs/3.vbs
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ��������ȷ�����Ѿ���װpython������"
ping 127.0.0.1 -n 2 > nul
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ��������ȷ�����Ѿ���װpython������"
ping 127.0.0.1 -n 5 > nul
start vbs/4.vbs
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ��������ȷ�����Ѿ���װGit��"
ping 127.0.0.1 -n 2 > nul
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ��������ȷ�����Ѿ���װGit��"
ping 127.0.0.1 -n 11 > nul
start vbs/5.vbs
color 3
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> �����������桿�����ڰ�װ;�е������Ҽ�������������ܻᵼ����ͣ���أ�"
color 0
color 7
start vbs/6.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ��������>>>>>��װ������5�뿪ʼִ�С���"
ping 127.0.0.1 -n 11 > nul
start vbs/7.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ��������>>>>>��װ������4�뿪ʼִ�С���"
ping 127.0.0.1 -n 3 > nul
start vbs/8.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ��������>>>>>��װ������3�뿪ʼִ�С���"
ping 127.0.0.1 -n 3 > nul
start vbs/9.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ��������>>>>>��װ������2�뿪ʼִ�С���"
ping 127.0.0.1 -n 3 > nul
start vbs/10.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ��������>>>>>��װ������1�뿪ʼִ�С���"
ping 127.0.0.1 -n 3 > nul
start vbs/11.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ���������ڰ�װflask..."
pip install flask
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[success]��װflask�ɹ���"


echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ���������ڰ�װopenCV..."
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ����������ܰ��ʾ��Ԥ����Ҫ10�������ң������ĵȴ���"
pip install opencv-python
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[success]��װopenCV�ɹ���"
ping 127.0.0.1 -n 1 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[success]Python���������Ѿ���װ�ɹ���"

echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[=====��ʼ��װ���Ŀ�====]��"
echo "�������£�"
echo	"1.��git����Դ�� (30s)"
echo	"2.����Դ��(3-5m)"
echo	"3.���밲װpyhton���(5-10m)"
echo "ȫ���Զ�����Ԥ����Ҫʱ�� 10���ӣ������ĵȴ���"
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����1-start]��ʼ��git��¡��Ŀ��"
git clone https://github.com/davisking/dlib.git
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����1-end]��¡��Ŀ�ɹ���"
ping 127.0.0.1 -n 3 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����2-start]��ʼ��װcmake���빤�ߣ�"
pip install cmake
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����2-now]��ʼ��װdlib���빤�ߣ�"
pip install dlib
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����2-now]cmake&dlib��װ�ɹ���"

ping 127.0.0.1 -n 1 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����2-now]��ʼ���룡"
cd dlib
mkdir build
cd build
cmake .. -DDLIB_USE_CUDA=0 -DUSE_AVX_INSTRUCTIONS=1
cmake --build
cd ..
python setup.py install
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����2-end]����ɹ���"
ping 127.0.0.1 -n 3 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����3-start]��ʼ��װ���������"
pip install face_recognition
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������[����3-end]��������ⰲװ�ɹ���"

echo "��ʼ��װ�������"
pip install requests
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������request�ⰲװ�ɹ���"
pip install redis
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������redis�ⰲװ�ɹ���"
pip install pymysql -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������mysql�ⰲװ�ɹ���"
ping 127.0.0.1 -n 3 > nul

echo "[smartX-logger-info]>>>>>>>>>>>>>>>> �������ٴμ����Ŀ⣬�ٴΰ�װ��"
pip install face_recognition
ping 127.0.0.1 -n 3 > nul

echo "======================================================"
echo "                                   _          		"
echo "                                  | |         		"
echo "  ___   _ __ ___     __ _   _ __  | |_  __  __        "
echo " / __| | '_ ` _ \   / _` | | '__| | __| \ \/ /        "
echo " \__ \ | | | | | | | (_| | | |    | |_   >  <         "
echo " |___/ |_| |_| |_|  \__,_| |_|     \__| /_/\_\        "
echo "														"
echo "======================================================"
ping 127.0.0.1 -n 2 > nul
cd ..
start vbs/12.vbs
ping 127.0.0.1 -n 12 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ������python������ɹ���"
echo �����������
pause
exit