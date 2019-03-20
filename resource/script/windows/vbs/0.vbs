
dim wsnet
set wsnet=wscript.createobject("wscript.network")
CreateObject("SAPI.SpVoice").Speak "正在校验当前用户是否合法！！"
CreateObject("SAPI.SpVoice").Speak "欢迎"+wsnet.username+"运行smartx的python一键安装程序！！"
