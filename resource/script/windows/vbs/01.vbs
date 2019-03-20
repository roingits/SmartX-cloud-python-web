
dim wsnet
set wsnet=wscript.createobject("wscript.network")

CreateObject("SAPI.SpVoice").Speak "尊敬的"+wsnet.username+"！接下来由我来指引你进行环境安装！请严格按照语音所示进行操作"
