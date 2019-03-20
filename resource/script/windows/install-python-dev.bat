echo off

echo "[smartX-logger-info]>>>>>>>>>>> ———Init"
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
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ———本过程，全程在线安装！"
ping 127.0.0.1 -n 12 > nul
start vbs/3.vbs
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ———请确保您已经安装python环境！"
ping 127.0.0.1 -n 2 > nul
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ———请确保您已经安装python环境！"
ping 127.0.0.1 -n 5 > nul
start vbs/4.vbs
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ———请确保您已经安装Git！"
ping 127.0.0.1 -n 2 > nul
echo "[smartX-logger-warn]>>>>>>>>>>>>>>>> ———请确保您已经安装Git！"
ping 127.0.0.1 -n 11 > nul
start vbs/5.vbs
color 3
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【警告】请勿在安装途中点击鼠标右键或者左键，可能会导致暂停下载！"
color 0
color 7
start vbs/6.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【>>>>>安装程序还有5秒开始执行】！"
ping 127.0.0.1 -n 11 > nul
start vbs/7.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【>>>>>安装程序还有4秒开始执行】！"
ping 127.0.0.1 -n 3 > nul
start vbs/8.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【>>>>>安装程序还有3秒开始执行】！"
ping 127.0.0.1 -n 3 > nul
start vbs/9.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【>>>>>安装程序还有2秒开始执行】！"
ping 127.0.0.1 -n 3 > nul
start vbs/10.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【>>>>>安装程序还有1秒开始执行】！"
ping 127.0.0.1 -n 3 > nul
start vbs/11.vbs
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———正在安装flask..."
pip install flask
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[success]安装flask成功！"


echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———正在安装openCV..."
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———【温馨提示】预计需要10分钟左右，请耐心等待！"
pip install opencv-python
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[success]安装openCV成功！"
ping 127.0.0.1 -n 1 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[success]Python基本环境已经安装成功！"

echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[=====开始安装核心库====]！"
echo "步骤如下："
echo	"1.从git下载源码 (30s)"
echo	"2.编译源码(3-5m)"
echo	"3.编译安装pyhton组件(5-10m)"
echo "全程自动化，预计需要时间 10分钟！请耐心等待！"
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤1-start]开始从git克隆项目！"
git clone https://github.com/davisking/dlib.git
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤1-end]克隆项目成功！"
ping 127.0.0.1 -n 3 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤2-start]开始安装cmake编译工具！"
pip install cmake
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤2-now]开始安装dlib编译工具！"
pip install dlib
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤2-now]cmake&dlib安装成功！"

ping 127.0.0.1 -n 1 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤2-now]开始编译！"
cd dlib
mkdir build
cd build
cmake .. -DDLIB_USE_CUDA=0 -DUSE_AVX_INSTRUCTIONS=1
cmake --build
cd ..
python setup.py install
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤2-end]编译成功！"
ping 127.0.0.1 -n 3 > nul
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤3-start]开始安装核心组件库"
pip install face_recognition
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———[步骤3-end]核心组件库安装成功！"

echo "开始安装备用组件"
pip install requests
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———request库安装成功！"
pip install redis
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———redis库安装成功！"
pip install pymysql -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———mysql库安装成功！"
ping 127.0.0.1 -n 3 > nul

echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———再次检测核心库，再次安装中"
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
echo "[smartX-logger-info]>>>>>>>>>>>>>>>> ———python环境搭建成功！"
echo 按任意键结束
pause
exit