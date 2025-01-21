#!/usr/local/bin/python3
#### @martysama0134 start scripts ####
import os
import sys
import subprocess
from gen import IsWindows

def fecho(text): print(text) if IsWindows() else print("\033[35m" + text + "\033[0m")
def _fecho(text): print(text) if IsWindows() else print("\033[4;35m" + text + "\033[0m")
def f_echo(text): print(text) if IsWindows() else print("\033[1;35m" + text + "\033[0m")
def becho(text): print(text) if IsWindows() else print("\033[34m" + text + "\033[0m")
def yecho(text): print(text) if IsWindows() else print("\033[33m" + text + "\033[0m")
def _yecho(text): print(text) if IsWindows() else print("\033[4;33m" + text + "\033[0m")
def y_echo(text): print(text) if IsWindows() else print("\033[1;33m" + text + "\033[0m")
def gecho(text): print(text) if IsWindows() else print("\033[32m" + text + "\033[0m")
def recho(text): print(text) if IsWindows() else print("\033[31m" + text + "\033[0m")
def _recho(text): print(text) if IsWindows() else print("\033[4;31m" + text + "\033[0m")
def r_echo(text): print(text) if IsWindows() else print("\033[1;31m" + text + "\033[0m")
def cecho(text): print(text) if IsWindows() else print("\033[36m" + text + "\033[0m")
def ruecho(text): print(text) if IsWindows() else print("\033[1;4;33;41m" + text + "\033[0m")
def bnecho(text): print(text) if IsWindows() else print("\033[1;4;30;47m" + text + "\033[0m")
def rnecho(text): print(text) if IsWindows() else print("\033[1;4;30;41m" + text + "\033[0m")
def abio(text): print(text) if IsWindows() else print("\033[31m" + text + "\033[32m" + text + "\033[33m" + text + "\033[34m" + text + "\033[35m" + text + "\033[36m" + text + "\033[37m" + text + "\033[0m")

def run_command(cmd):
    subprocess.run(cmd.split())

def search_for_port_in_configs(path):
    for root, dirs, files in os.walk(path):
        for file in files:
            if file == "CONFIG":
                config_file_path = os.path.join(root, file)
                with open(config_file_path, 'r') as f:
                    for line in f:
                        if "PORT" in line:
                            print(line.strip())

def delete_file(filepath):
    if os.path.exists(filepath):
        if os.path.islink(filepath):
            os.unlink(filepath)
        else:
            os.remove(filepath)

def delete_symlink(filepath):
    try:
        os.unlink(filepath)
    except FileNotFoundError:
        pass

v_base = os.getcwd()
v_mt2f = v_base
v_bakf = os.path.join(v_base, '..', 'baks')
v_dbf = os.path.join(v_bakf, 'db')
v_dbrevf = os.path.join(v_bakf, 'dbrev')
v_fsf = os.path.join(v_bakf, 'fs')
v_foldername = 'srv1'
v_localename = 'germany'
v_bin = 'python3'
if IsWindows():
    v_bin = 'python'

r_echo(".:. AdminPanel .:.")
gecho("Ne Yapmak istiyorsun?")
recho("1. Oyunu baslat (start)")
recho("1i. Start Interactive (starti)")
recho("111. Oyunu tekrar baslat (restart)")
recho("111a. Restart+Daemon (restartall)")
recho("111b. Restart+Gen+Quest (fullrestart)")
recho("2. Oyunu kapat (stop|close)")
recho("2i. Stop Interactive (stopi|closei)")
recho("3. Loglari sil (clean|clear)")
recho("33. Bütün loglari sil (cleanall|clearall)")
recho("4. Backup mysql/db (bak1|db|db_backup)")
recho("4b. Backup mysql no user-data (dbrev)")
recho("5. Backup game/fs (bak2|fs|fs_backup)")
recho("666. Kurulum yap (gen)")
recho("777. Quest derle (quest)")
recho("888. Game & Db kisayolu oluştur. Her source derlemesi sonrasi bu islemi yap. (symlink)")
recho("999. Ara (search)")
_yecho("1a. Start+Daemon (startall)")
_yecho("2a. Stop+Daemon (stopall|closeall)")
_recho("0. Çıkış (quit)")


if len(sys.argv) < 2:
    ret = input('Enter a phase: ').split()
    phase = ret[0]
    commands = ret[1:] if len(ret) >= 2 else []
else:
    phase = sys.argv[1]
    commands = sys.argv[2:] if len(sys.argv) >= 3 else []
    # print(" ".join(sys.argv[1:]))

commands = " ".join(commands)

if phase in ['111', 'restart']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} stop.py')
    run_command(f'{v_bin} start.py')
    os.chdir(v_base)
    cecho('restart completed')

elif phase in ['111a', 'restartall']:
    p = subprocess.run(['ps', 'afx'], stdout=subprocess.PIPE)
    ps_output = p.stdout.decode()
    for line in ps_output.split('\n'):
        if 'python daemon_srv1.py' in line and 'grep' not in line:
            pid = line.split()[0]
            os.kill(pid, 9)
    os.chdir(v_mt2f)
    run_command(f'{v_bin} stop.py')
    run_command(f'{v_bin} start.py')
    os.system(f'{v_bin} daemon_srv1.py &')
    # subprocess.Popen(["python", "daemon_srv1.py"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE, shell=False, preexec_fn=os.setsid)
    os.chdir(v_base)
    cecho('restartall completed')

elif phase in ['111b', 'fullrestart']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} admin_panel.py clear')
    run_command(f'{v_bin} admin_panel.py gen')
    run_command(f'{v_bin} admin_panel.py quest')
    run_command(f'{v_bin} admin_panel.py restart')
    os.chdir(v_base)
    cecho('restart completed')

elif phase in ['1', 'start']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} start.py {commands}')
    os.chdir(v_base)
    cecho('start completed')

elif phase in ['1i', 'starti']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} start.py --prompt')
    os.chdir(v_base)
    cecho('starti completed')

elif phase in ['1a', 'startall']:
    os.chdir(v_mt2f)
    os.system(f'{v_bin} daemon_srv1.py &')
    # subprocess.Popen(["python", "daemon_srv1.py"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE, shell=False, preexec_fn=os.setsid)
    os.chdir(v_base)
    cecho('startall completed')

elif phase in ['2', 'stop', 'close']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} stop.py {commands}')
    os.chdir(v_base)
    cecho('stop completed')

elif phase in ['2i', 'stopi', 'closei']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} stop.py --prompt')
    os.chdir(v_base)
    cecho('stopi completed')

elif phase in ['2a', 'stopall', 'closeall']:
    p = subprocess.run(['ps', 'afx'], stdout=subprocess.PIPE)
    ps_output = p.stdout.decode()
    for line in ps_output.split('\n'):
        if 'daemon_srv1.py' in line and 'grep' not in line:
            pid = int(line.split()[0])
            print(f"Killing process {pid}")
            os.kill(pid, 9)
    os.chdir(v_mt2f)
    run_command(f'{v_bin} stop.py')
    os.chdir(v_base)
    cecho('stopall completed')

elif phase in ['3', 'clean', 'clear']:
    os.chdir(v_mt2f)
    run_command(f'{v_bin} clear.py')
    os.chdir(v_base)
    cecho('clean completed')

elif phase in ['33', 'cleanall', 'clearall']:
    os.chdir(v_mt2f)
    response = input("Are you sure you want to delete the backups as well? [Ny] ")
    if response.lower() == 'y':
        run_command(f'{v_bin} clear.py')
        os.chdir(v_base)
        run_command(f'make -C {v_dbf} clean')
        run_command(f'make -C {v_fsf} clean')
        cecho('cleanall completed')
    else:
        cecho('cleanall cancelled')

elif phase in ['4', 'bak1', 'db', 'db_backup']:
    run_command(f'make -C {v_dbf} dump')
    cecho('bak db completed')

elif phase in ['4b','dbrev']:
    run_command(f'make -C {v_dbrevf} dump')
    cecho('bak dbrev completed')

elif phase in ['5', 'bak2', 'fs', 'fs_backup']:
    run_command(f'make -C {v_fsf} dump')
    cecho('bak fs completed')

elif phase in ['666', 'gen']:
    os.chdir(v_mt2f)
    # run_command(f'rm -rf {v_foldername}/logs {v_foldername}/auth {v_foldername}/chan {v_foldername}/db')
    run_command(f'{v_bin} gen.py')
    os.chdir(v_base)
    cecho('gen completed')

elif phase in ['777', 'quest']:
    os.chdir(os.path.join(v_mt2f, v_foldername, 'share', 'locale', v_localename, 'quest'))
    if not IsWindows():
        run_command('chmod u+x qc')
    run_command(f'{v_bin} pre_qc.py -ac')
    os.chdir(v_base)
    cecho('quest completed')

elif phase in ['888', 'symlink']:
    os.chdir(os.path.join(v_mt2f, v_foldername, 'share', 'bin'))
    delete_symlink('game')
    delete_symlink('db')
    run_command('ln -s /home/gdb_server_source/Srcs/Server/game/game_symlink game')
    run_command('ln -s /home/gdb_server_source/Srcs/Server/db/db_symlink db')
    cecho('symlink completed')

elif phase in ['999', 'search']:
    search_for_port_in_configs(v_base)

elif phase in ['0', 'quit']:
    abio('.:|:.')
    sys.exit()

else:
    cecho(f'{phase} not found')











#!/usr/local/bin/python3
#### @martysama0134 start scripts ####
from subprocess import check_output as sp_co, call as sp_call, CalledProcessError as sp_CalledProcessError
from os import getcwd as os_getcwd, chdir as os_chdir
from platform import system as p_system
from gen import ClearFolder, DeleteFilesVerbose, CreateEmptyFile, IsWindows

def fShell(szCmd, bRet=False):
	try:
		if bRet:
			return sp_co(szCmd, shell=True)[:-1]	# remove final \n
		else:
			return sp_call(szCmd, shell=True)
	except sp_CalledProcessError:
		return -1

def cleStart():
	## base
	from json import load as j_loads
	v_lst=[
		"p2p_packet_info.txt","packet_info.txt","profile.txt","stdout","syslog","syserr",
		"usage.txt","VERSION.txt","DEV_LOG.log","mob_count","*.core"
	]
	if IsWindows():
		v_lst+=["stdout.txt","syslog.txt","syserr.txt"]
	szPWD=os_getcwd()
	## clear files from alog
	with open(".clear.json", "r") as fList:
		mList = j_loads(fList)
	for dic1 in mList:
		# goto alog path
		# print dic1["path"]
		os_chdir(dic1["path"])
		# clean files
		CreateEmptyFile("PTS")
		ClearFolder("log")
		ClearFolder("cores")
		# goto base again
		os_chdir(szPWD)
	## clean other logs
	with open(".start.json", "r") as fList:
		mList = j_loads(fList)
	for dic1 in mList:
		# goto alog path
		# print dic1["path"]
		os_chdir(dic1["path"])
		fShell("echo --- delete inside '%s' ---"%dic1["path"])
		DeleteFilesVerbose(v_lst)
		# goto base again
		os_chdir(szPWD)

if __name__ == "__main__":
	cleStart()
#











#!/usr/local/bin/python3
#### @martysama0134 start scripts ####
import os
import subprocess
import time

while True:
    # subprocess.run(['python', 'start.py'])
    os.system("python start.py &")
    time.sleep(10)














#### @martysama0134 start scripts ####
from platform import system as p_system
v_system = p_system()

from subprocess import check_output as sp_co, call as sp_call, CalledProcessError as sp_CalledProcessError
def fShell(szCmd, bRet=False):
	try:
		if bRet:
			return sp_co(szCmd, shell=True)[:-1]	# remove final \n
		else:
			return sp_call(szCmd, shell=True)
	except sp_CalledProcessError:
		return -1

DISABLE_TEST_MODE_IN_CH1 = False

if v_system=="FreeBSD":
	v_adminPageLocalIP=fShell("ifconfig em0 | grep -Eo 'inet ([0-9]{1,3}\.){3}([0-9]{1,3})' | awk '{print $2}'", True).decode()
elif v_system=="Linux":
	v_adminPageLocalIP=fShell("ifconfig eth0 | grep -Eo 'inet addr:([0-9]{1,3}\.){3}([0-9]{1,3})' | awk -F':' '{print $2}'", True).decode()
elif v_system=="Windows":
	v_adminPageLocalIP="127.0.0.1"

v_adminPagePassword='58948HG83H4G8H84G'				#adminpage_password
v_serverHostname='127.0.0.1'						#host for sql connections
v_serverUserPass='mt2 mt2'							#user&pwd for sql connections
v_serverData=f"{v_serverHostname} {v_serverUserPass}"	#host, user and pwd for db sql connections

v_bindHostname='192.168.1.56'
v_proxyHostname='192.168.1.56'
v_dbHostname='127.0.0.1'#default hostname for db
v_dbPort=30000		#default port for db (the others will be automatically calculated)
v_mysqlport=3306	#default mysql port (3306 or 0)
v_logFolder='logs'		#name of the all_log path
v_chanFolder='chan/'		#name of the channel path
v_chanPath='../'		#workaround that should be equivalent to $v_charS paths per ../

#############################
## to specify custom ports:
# 1) be sure the key matches "{ServerName}-{FolderName}-{ProcessName}"
# 2) and check if they are still commented
# 3) if you're under NAT, be sure to portforward the new ports
M2PORTS = {
	# "srv1-db":(15000), #db port
	# "srv1-auth1":(11000,12000), #port,p2p_port
	# "srv1-auth2":(11001,12001), #port,p2p_port
	# "srv1-ch1-core1":(13101,14101),
	# "srv1-ch1-core2":(13102,14102),
	# "srv1-ch1-core3":(13103,14103),
	# "srv1-ch1-core4":(13104,14104),
	# "srv1-ch2-core1":(13201,14201),
	# "srv1-ch2-core2":(13202,14202),
	# "srv1-ch2-core3":(13203,14203),
	# "srv1-ch2-core4":(13204,14204),
	# "srv1-ch3-core1":(13301,14301),
	# "srv1-ch3-core2":(13302,14302),
	# "srv1-ch3-core3":(13303,14303),
	# "srv1-ch3-core4":(13304,14304),
	# "srv1-ch4-core1":(13401,14401),
	# "srv1-ch4-core2":(13402,14402),
	# "srv1-ch4-core3":(13403,14403),
	# "srv1-ch4-core4":(13404,14404),
	# "srv1-ch99-core99":(13099,14099),
}

M2SD = {
	"account":		"srv1_account",
	"common":		"srv1_common",
	"hotbackup":	"srv1_hotbackup",
	"log":			"srv1_log",
	"player":		"srv1_player",
}

class M2TYPE:
	SERVER, DB, AUTH, CHANFOLDER, CHANNEL, CORE = range(6)
	NOCHAN = 0

class PORT:
	RANDOMI = v_dbPort	# a random port will start from such value
	PORT, P2P_PORT, DB_PORT, BIND_PORT = range(4)
	lPORT = ("PORT", "P2P_PORT", "DB_PORT", "BIND_PORT")

M2CONFIG = {
	"db": {
		"general": (
			('SQL_ACCOUNT = "{} {} {} {}"', (v_serverHostname, M2SD["account"], v_serverUserPass, v_mysqlport)),
			('SQL_COMMON = "{} {} {} {}"', (v_serverHostname, M2SD["common"], v_serverUserPass, v_mysqlport)),
			('SQL_PLAYER = "{} {} {} {}"', (v_serverHostname, M2SD["player"], v_serverUserPass, v_mysqlport)),
			('SQL_HOTBACKUP = "{} {} {} {}"', (v_serverHostname, M2SD["hotbackup"], v_serverUserPass, v_mysqlport)),
			('SQL_LOG = "{} {} {} {}"', (v_serverHostname, M2SD["log"], v_serverUserPass, v_mysqlport)),
			#
			('TABLE_POSTFIX = "{}"', ""),
			#
			# ("BIND_PORT = {}", v_dbPort),
			# ("DB_SLEEP_MSEC = 10", ()),
			("CLIENT_HEART_FPS = {}", 25),
			# ("HASH_PLAYER_LIFE_SEC = {}", 600),
			("PLAYER_ID_START = {}", 100),
			("PLAYER_DELETE_LEVEL_LIMIT = {}", 70),
			# ("PLAYER_DELETE_LEVEL_LIMIT_LOWER = {}", 15),
			("ITEM_ID_RANGE = {} {} ", (100000000, 200000000)),
			# ("BACKUP_LIMIT_SEC = {}", 3600),
			("DISABLE_HOTBACKUP = {:d}", True),
			("LOCALE = {}", "latin1"),
		),
		"extra": (
			("PROTO_FROM_DB = {:d}", True),
			("MIRROR2DB = {:d}", False),
		)
	},
	"core": {
		M2TYPE.AUTH: (
			("AUTH_SERVER: {}", "master"),
			("PLAYER_SQL: {} {} {}", (v_serverData, M2SD["account"], v_mysqlport)),
		),
		M2TYPE.CORE: (
			("PLAYER_SQL: {} {} {}", (v_serverData, M2SD["player"], v_mysqlport)),
		),
		"general": (
			# ("TABLE_POSTFIX: {}", ""),
			# ("ITEM_ID_RANGE: {} {}", (5000001, 10000000)),
			("VIEW_RANGE: {}", 10000),
			("PASSES_PER_SEC: {}", 25),
			("SAVE_EVENT_SECOND_CYCLE: {}", 180),
			("PING_EVENT_SECOND_CYCLE: {}", 180),
			#
			("BIND_IP: {}", v_bindHostname),#VPS NAT
			("PROXY_IP: {}", v_proxyHostname),#VPS NAT
			("DB_ADDR: {}", v_dbHostname),
			("COMMON_SQL: {} {} {}", (v_serverData, M2SD["common"], v_mysqlport)),
			("LOG_SQL: {} {} {}", (v_serverData, M2SD["log"], v_mysqlport)),
			("TEST_SERVER: {:d}", False),#TEST ONLY
			# ("PK_SERVER: {:d}", True),
			("ADMINPAGE_IP1: {}", v_adminPageLocalIP),
			("ADMINPAGE_PASSWORD: {}", v_adminPagePassword),
			("MAX_LEVEL: {}", 120),
		),
		"extra": (
			# ("CHECK_VERSION_SERVER: {:d}", True),
			# ("CHECK_VERSION_VALUE: {}", 1215955205),
			("CHANGE_ATTR_TIME_LIMIT: {:d}", False),
			("EMOTION_MASK_REQUIRE: {:d}", False),
			("PRISM_ITEM_REQUIRE: {:d}", False),
			("SHOP_PRICE_3X_TAX: {:d}", False),
			("GLOBAL_SHOUT: {:d}", True),
			("ITEM_COUNT_LIMIT: {}", 250),
			("STATUS_POINT_GET_LEVEL_LIMIT: {}", 120),
			("STATUS_POINT_SET_MAX_VALUE: {}", 90),
			("SHOUT_LIMIT_LEVEL: {}", 15),
			("DB_LOG_LEVEL: {}", 1),
			("EMPIRE_LANGUAGE_CHECK: {:d}", False),
			# ("ITEM_DESTROY_TIME_AUTOGIVE: {}", 30),
			# ("ITEM_DESTROY_TIME_DROPITEM: {}", 30),
			# ("ITEM_DESTROY_TIME_DROPGOLD: {}", 30),
		),
	},
}

COMMONCHAN=(
	{
		"name": "core1",
		"type": M2TYPE.CORE,
		"config": M2CONFIG["core"],
		"maps": "1 21 41 3 23 43 4 24 44 5 25 45 108 109 112 301 302 303 304",
	},
	{
		"name": "core2",
		"type": M2TYPE.CORE,
		"config": M2CONFIG["core"],
		"maps": "61 62 63 64 65 66 67 68 69 70 71 72 73 104 193 206 208 207 216 217 351",
	},
)

CHAN99=(
	{
		"name": "core99",
		"type": M2TYPE.CORE,
		"config": M2CONFIG["core"],
		"maps": "81 103 105 110 111 113 114 118 119 120 121 122 123 124 125 126 127 128 181 182 183 200",
	},
)

M2S=(
	{
		"name": "srv1",
		"type": M2TYPE.SERVER,
		"isextra": True,
		"sub": (
			{
				"name": "db",
				"type": M2TYPE.DB,
				"config": M2CONFIG["db"],
			},
			{
				"name": "auth1",
				"type": M2TYPE.AUTH,
				"config": M2CONFIG["core"],
			},
			# {
			# 	"name": "auth2",
			# 	"type": M2TYPE.AUTH,
			# 	"config": M2CONFIG["core"],
			# },
			{
				"name": "chan",
				"type": M2TYPE.CHANFOLDER,
				"sub": (
					{
						"name": "ch1",
						"type": M2TYPE.CHANNEL,
						"chan": 1,
						"sub": COMMONCHAN,
					},
					# {
					# 	"name": "ch2",
					# 	"type": M2TYPE.CHANNEL,
					# 	"chan": 2,
					# 	"sub": COMMONCHAN,
					# },
					# {
						# "name": "ch3",
						# "type": M2TYPE.CHANNEL,
						# "chan": 3,
						# "sub": COMMONCHAN,
					# },
					# {
                        # "name": "ch4",
						# "type": M2TYPE.CHANNEL,
						# "chan": 4,
						# "sub": COMMONCHAN,
					# },
					{
						"name": "ch99",
						"type": M2TYPE.CHANNEL,
						"chan": 99,
						"sub": CHAN99,
					},
				)
			}
		)
	},
)

CustIpfwList="""#!/bin/sh
IPF="ipfw -q add"
ipfw -q -f flush

#loopback
$IPF 10 allow all from any to any via lo0
$IPF 20 deny all from any to 127.0.0.0/8
$IPF 30 deny all from 127.0.0.0/8 to any
$IPF 40 deny tcp from any to any frag

# stateful
$IPF 50 check-state
$IPF 60 allow tcp from any to any established
$IPF 70 allow all from any to any out keep-state
$IPF 80 allow icmp from any to any

# open port ftp (20, 21), ssh (22), mail (25)
# http (80), https (443), dns (53), mysql (3306)
default_udp_allowed_ports='53'
default_tcp_allowed_ports='22 53 3306'
default_tcp_blocked_ports=''

# here auth PORTs for "NORM"/"..." thing
metin2_udp_allowed_ports='{udp_allowed_ports}'
# here PORTs
metin2_tcp_allowed_ports='{tcp_allowed_ports}'
# here DB_PORTs and P2P_PORTs
metin2_tcp_blocked_ports='{tcp_blocked_ports}'

# merge lists
udp_allowed_ports="$default_udp_allowed_ports $metin2_udp_allowed_ports"
tcp_allowed_ports="$default_tcp_allowed_ports $metin2_tcp_allowed_ports"
tcp_blocked_ports="$default_tcp_blocked_ports $metin2_tcp_blocked_ports"

# white ip list
white_sites=''

# block tcp/udp ports
for val in $tcp_blocked_ports; do
	$IPF 2220 allow all from 127.0.0.0/8 to any $val
	for whitez in $white_sites; do
		$IPF 2210 allow tcp from $whitez to any $val in
		$IPF 2210 allow tcp from 127.0.0.0/8 to $whitez $val out
	done
	$IPF 2230 deny all from any to me $val
done
# unblock tcp ports
for val in $tcp_allowed_ports; do
	$IPF 2200 allow tcp from any to any $val in limit src-addr 20
	$IPF 2210 allow tcp from any to any $val out
done
# unblock udp ports
for val in $udp_allowed_ports; do
	$IPF 2200 allow udp from any to any $val in limit src-addr 20
	$IPF 2210 allow udp from any to any $val out
done
"""

CustServerInfo="""
import app
import localeInfo
from constInfo import TextColor
app.ServerName = None

ENABLE_RANDOM_AUTH_NO_LIB = True
if ENABLE_RANDOM_AUTH_NO_LIB:
	from time import time as time_time
	def get_random_number(upper_limit):
		_timestamp = time_time()
		_timestamp = int(_timestamp*1000000)
		return _timestamp % upper_limit

	def get_item_from_list(_list):
		choice = get_random_number(len(_list))
		assert choice < len(_list), "Index should be less than length of list"
		return _list[choice]
else:
	from random import choice as random_choice
	def get_item_from_list(_list):
		return random_choice(_list)

SRV1 = {{
	"name":TextColor("ServerName", "ffd500"), #GOLD
	"host":"{hostname}",
{portlist}
	"authlist": [ {authlist} ],
}}

STATE_NONE = TextColor(localeInfo.CHANNEL_STATUS_OFFLINE, "FF0000") #RED

STATE_DICT = {{
	0: TextColor(localeInfo.CHANNEL_STATUS_OFFLINE, "FF0000"), #RED
	1: TextColor(localeInfo.CHANNEL_STATUS_RECOMMENDED, "00ff00"), #GREEN
	2: TextColor(localeInfo.CHANNEL_STATUS_BUSY, "ffff00"), #YELLOW
	3: TextColor(localeInfo.CHANNEL_STATUS_FULL, "ff8a08") #ORANGE
}}

SERVER1_CHANNEL_DICT = {{
{channel_dict}
}}

REGION_NAME_DICT = {{
	0: SRV1["name"],
}}

REGION_AUTH_SERVER_DICT = {{
	0: {{
{auth_dict}
	}}
}}

REGION_DICT = {{
	0: {{
		1: {{"name": SRV1["name"], "channel": SERVER1_CHANNEL_DICT,}},
	}},
}}

MARKADDR_DICT = {{
	10: {{"ip": SRV1["host"], "tcp_port": SRV1["ch1"], "mark": "10.tga", "symbol_path": "10",}},
}}

TESTADDR = {{"ip": SRV1["host"], "tcp_port": SRV1["ch1"], "udp_port": SRV1["ch1"],}}
"""



















#!/usr/local/bin/python3
#### @martysama0134 start scripts ####
### TODO:
## clean how rawly CONFIG is shown in code
## separate code for multiple SRV
import fnmatch
import os
import pathlib
import shutil
import time
from gen_settings import *

portlist={}
clearlist=[]
startlist=[]
serverinfolist=[]

def IsWindows():
	return v_system=="Windows"

def IsLinuxOrBSD():
	return v_system in ("FreeBSD", "Linux")

def SlashFix(pathname):
	if v_system in ("FreeBSD", "Linux"):
		return pathname.replace("\\", "/")
	elif v_system=="Windows":
		return pathname.replace("/", "\\")
	return pathname

def EscapeString(txt):
	if v_system in ("FreeBSD", "Linux"):
		txt = txt.replace('"', '\\\"')
	return txt

def DeleteFilesVerbose(file_list):
	for pattern in file_list:
		if "*" in pattern:
			for filename in os.listdir('.'):
				if fnmatch.fnmatch(filename, pattern):
					if os.path.exists(filename):
						os.remove(filename)
						print(filename)
		else:
			if os.path.exists(pattern):
				os.remove(pattern)
				print(pattern)

def ClearFolder(folder_path):
	for filename in os.listdir(folder_path):
		file_path = os.path.join(folder_path, filename)
		try:
			if os.path.isfile(file_path) or os.path.islink(file_path):
				os.unlink(file_path)
			elif os.path.isdir(file_path):
				shutil.rmtree(file_path)
		except Exception as e:
			print(f"Failed to delete {file_path}. Reason: {e}")

def CreateFolder(foldername):
	os.makedirs(foldername, exist_ok=True)

def CreateEmptyFile(file_path, overwrite = True):
	if not overwrite and os.path.exists(file_path):
		return
	with open(file_path, 'w'):
		pass

def TouchFile(file_path):
	try:
		with open(file_path, 'a'):
			os.utime(file_path, None)
	except OSError:
		pass

def Append2File(text, file_path):
	with open(file_path, 'a') as f:
		f.write(text)
		f.write('\n')

def DeleteFolder(path):
	shutil.rmtree(path)

def SymLinkCreate(src, dst, is_file):
	src = SlashFix(src)
	dst = SlashFix(dst)
	if v_system=="FreeBSD":
		fShell(f"ln -Ffnsw {src} {dst}")
	elif v_system=="Linux":
		fShell(f"ln -Ffns {src} {dst}")
	elif v_system=="Windows":
		if is_file:
			fShell(f"mklink {dst} {src}")
		else:
			fShell(f"mklink /D {dst} {src}")

def SymLinkCreateDir(src, dst):
	SymLinkCreate(src, dst, is_file=False)

def SymLinkCreateFile(src, dst):
	SymLinkCreate(src, dst, is_file=True)

def SymLinkCreateFileExe(src, dst):
	if v_system=="Windows":
		src+=".exe"
		dst+=".exe"
	SymLinkCreate(src, dst, is_file=True)

def WriteHostConfig(szConfFile, szGameName):
	Append2File(f"HOSTNAME: {szGameName}", szConfFile)

def WriteChannelConfig(szConfFile, dwChannel):
	if dwChannel==M2TYPE.NOCHAN:
		dwChannel=1
	Append2File(f"CHANNEL: {dwChannel}", szConfFile)

def WriteMapConfig(szConfFile, szMapList):
	if len(szMapList.split())>=32:
		print(f"WARNING: MORE THAN 32 MAPS INSIDE: {szConfFile}")
	Append2File(f"MAP_ALLOW: {szMapList}", szConfFile)

def WritePortConfig(szConfFile, wGenPort, dwType, dwPortType=None):
	if dwType==M2TYPE.DB:
		Append2File(f"{PORT.lPORT[PORT.BIND_PORT]} = {wGenPort}", szConfFile)
	elif dwType==M2TYPE.CORE or dwType==M2TYPE.AUTH:
		Append2File(f"{PORT.lPORT[dwPortType]}: {wGenPort}", szConfFile)

def genWriteConfig(szConfFile, tuSubConfTable):
	for val1 in tuSubConfTable:
		try:
			if isinstance(val1[1], (list, tuple)):
				configValue = val1[0].format(*val1[1])
			else:
				configValue = val1[0].format(val1[1])
		except IndexError:
			print(repr(val1))
			raise IndexError
		#skip test server in ch1
		if DISABLE_TEST_MODE_IN_CH1 and configValue.strip()=="TEST_SERVER: 1" and "/ch1/" in szConfFile:
			continue

		try:
			Append2File(f"{configValue}", szConfFile)
		except TypeError:
			print(f"WARNING: WRONG CONFIG OPTION FORMAT: {val1}")

def genMakeConfig(szConfFile, diConfTable, bIsExtra=False, dwType=None):
	genWriteConfig(szConfFile, diConfTable["general"])
	if bIsExtra:
		genWriteConfig(szConfFile, diConfTable["extra"])
	if dwType!=None:
		genWriteConfig(szConfFile, diConfTable[dwType])

def genGetRandPort(dwType):
	wTmpPort = PORT.RANDOMI
	while(True):
		if wTmpPort in portlist:
			wTmpPort+=1
			continue
		else:
			portlist[wTmpPort]=dwType
			break
	return wTmpPort

def genGenM2List():
	from json import dumps as j_dumps
	startFilename = ".start.json"
	clearFilename = ".clear.json"
	with open(startFilename, "w") as fList: # b for Unix end line
		fList.write(j_dumps(startlist, indent=4))
	with open(clearFilename, "w") as fList: # b for Unix end line
		fList.write(j_dumps(clearlist, indent=4))
	print(f"Generated starting files {startFilename} {clearFilename}")

def genGenIpfwList():
	def Joi(mList):
		return ' '.join(str(v) for v in mList)
	szRules=CustIpfwList.format(udp_allowed_ports=Joi(udp_yes_ports), tcp_allowed_ports=Joi(tcp_yes_ports), tcp_blocked_ports=Joi(tcp_nop_ports))
	filename = "ipfw.rules"
	with open(filename, "w") as fIpfw: #b for unix end line
		fIpfw.write(szRules)
	print(f"Generated IPFW rules inside {filename}")

def genGenServerInfo():
	# print("serverinfolist:\n", serverinfolist)

	def calcPortList():
		_portlist={}
		_pickedchannels={}
		_pickedauths={}
		for elem in serverinfolist:
			if elem["type"]==M2TYPE.AUTH:
				newpath = elem["path"].replace("/", "-")
				_portlist[newpath] = elem["port"]
				_pickedauths[newpath] = elem
			elif elem["type"]==M2TYPE.CORE:
				if elem["chan"] == 99:
					continue
				newpath = "ch{}".format(elem["chan"])
				if newpath not in _portlist:
					_portlist[newpath] = elem["port"]
					_pickedchannels[newpath] = elem

		_portlistSTR = ""
		for elem in _portlist:
			_portlistSTR += '\t"{}":{},\n'.format(elem, _portlist[elem])
		return _portlist,_portlistSTR,_pickedchannels,_pickedauths
	(portlist,portlistSTR,pickedchannels,pickedauths) = calcPortList()

	def calcChannelDict():
		_channelDictSTR = ""
		for elem in pickedchannels:
			# print("elem:",elem, pickedchannels[elem])
			chan = pickedchannels[elem]["chan"]
			serverID = 1
			chanID = chan - 1
			keyID = serverID * 10 + chanID
			chanName = "CH-{}".format(chan)
			_channelDictSTR += '\t{chanID}: {{"key":{keyID}, "name":TextColor("{chanName}", "FFffFF"), "ip":SRV1["host"], "tcp_port":SRV1["{elem}"], "udp_port":SRV1["{elem}"], "state":STATE_NONE,}},\n'.format(
				chanID=chanID, keyID=keyID, chanName=chanName, elem=elem
			)
		return _channelDictSTR
	channelDictSTR = calcChannelDict()

	def calcAuthDict():
		_authDictSTR = ""
		ENABLE_RANDOM_AUTH = True
		if ENABLE_RANDOM_AUTH:
			for elem in pickedchannels:
				chan = pickedchannels[elem]["chan"]
				chanID = chan
				_authDictSTR += '\t\t{chanID}: {{"ip": SRV1["host"], "port": get_item_from_list(SRV1["authlist"]),}},\n'.format(
					chanID=chanID
				)
		else:
			_firstauth = next(iter(pickedauths))
			for elem in pickedchannels:
				# print("elem:",elem, pickedauths[_firstauth])
				chan = pickedchannels[elem]["chan"]
				chanID = chan - 1
				_authDictSTR += '\t\t{chanID}: {{"ip": SRV1["host"], "port": SRV1["{_firstauth}"],}},\n'.format(
					chanID=chanID, _firstauth=_firstauth
				)
		return _authDictSTR
	authDictSTR = calcAuthDict()

	def calcAuthList():
		_authListSTR = ""
		for elem in pickedauths:
			_authListSTR += "{},".format(pickedauths[elem]['port'])
		return _authListSTR
	authListSTR = calcAuthList()

	# print("authListSTR:\n", authListSTR)
	# print("portlistSTR:\n", portlistSTR)
	# print("channelDictSTR:\n", channelDictSTR)
	# print("authDictSTR:\n", authDictSTR)
	hostnameSTR = "127.0.0.1"

	filename = "serverinfo.py"
	with open(filename, "w") as fSI: #b for unix end line
		fSI.write(CustServerInfo.format(
			hostname=hostnameSTR,
			portlist=portlistSTR,
			channel_dict=channelDictSTR,
			auth_dict=authDictSTR,
			authlist=authListSTR
		))
	print("Generated serverinfo details inside {}".format(filename))

def genInit():
	# clean port list
	global portlist
	portlist.clear()
	# clean start/clear list
	global startlist, clearlist
	del startlist[:]
	del clearlist[:]
	# clean ipfw list
	global udp_yes_ports,tcp_yes_ports,tcp_nop_ports
	del udp_yes_ports[:]
	del tcp_yes_ports[:]
	del tcp_nop_ports[:]

def genInitSrv(szSvr):
	#
	for val1 in ("share/data","share/locale","share/package","share/panama","share/conf","share/bin"):
		CreateFolder("%s/%s"%(szSvr, val1))
		# print "%s/%s"%(szSvr, val1)
	#
	for val1 in ("share/conf/BANIP","share/conf/CMD","share/conf/CRC","share/conf/VERSION","share/conf/state_user_count","share/bin/db","share/bin/game"):
		TouchFile("%s/%s" % (szSvr, val1))
		# print "%s/%s"%(szSvr, val1)
	#
	for val1 in ("share/conf/item_names.txt","share/conf/item_proto.txt","share/conf/mob_names.txt","share/conf/mob_proto.txt"):
		TouchFile("%s/%s" % (szSvr, val1))
		# print "%s/%s"%(szSvr, val1)
#global single server rules
genConfig = {}
genConfig["all"] = {}
#for ipfw rules
udp_yes_ports=[]
tcp_yes_ports=[]
tcp_nop_ports=[]

def genCalcParentRet(szParentName):
	return szParentName.count("/")*v_chanPath

def genMain(oSub={}, szParentName=[]):
	global genConfig
	global startlist, clearlist
	global udp_yes_ports, tcp_yes_ports, tcp_nop_ports
	global serverinfolist
	if not oSub:
		oSub=M2S
		genInit()
	for v1 in oSub:
		k1=v1["name"]
		listTmpParentName=list(szParentName)	# list() to bypass variable passed by reference to value
		listTmpParentName.append(k1)
		szTmpParentName=("/".join(listTmpParentName))
		# DeleteFolder("%s" % szTmpParentName) # completely unsafe
		CreateFolder("%s" % szTmpParentName)
		# print szTmpParentName
		if v1["type"]==M2TYPE.DB:
			k1s=genConfig["active"]
			#logs make paths
			CreateFolder("%s/%s/%s/cores" % (k1s, v_logFolder, szTmpParentName))
			CreateFolder("%s/%s/%s/log" % (k1s, v_logFolder, szTmpParentName))
			TouchFile("%s/%s/%s/PTS" % (k1s, v_logFolder, szTmpParentName))
			#logs sym paths
			SymLinkCreateDir("../%s/%s/cores" % (v_logFolder, szTmpParentName), "%s/cores" % (szTmpParentName))
			SymLinkCreateDir("../%s/%s/log" % (v_logFolder, szTmpParentName), "%s/log" % (szTmpParentName))
			SymLinkCreateFile("../%s/%s/PTS" % (v_logFolder, szTmpParentName), "%s/PTS" % (szTmpParentName))
			szDbName="%s-%s"%(genConfig["active"], k1)
			SymLinkCreateFileExe("../share/bin/db", "%s/%s" % (szTmpParentName,szDbName))
			if IsWindows():
				SymLinkCreateFile("../share/bin/libmysql.dll", "%s/libmysql.dll" % (szTmpParentName))
			#start/logs track
			startlist.append(
				{
					"path":szTmpParentName,
					"name":szDbName,
					"type":M2TYPE.DB,
					"chan":M2TYPE.NOCHAN,
					"serv":genConfig["active"],
				}
			)
			clearlist.append(
				{
					"path":"%s/%s/%s"%(k1s, v_logFolder, szTmpParentName),
					"type":M2TYPE.DB,
					"chan":M2TYPE.NOCHAN,
					"serv":genConfig["active"],
				}
			)
			#@item/mob protos .txt
			SymLinkCreateFile("../share/conf/item_names.txt", "%s/item_names.txt" % (szTmpParentName))
			SymLinkCreateFile("../share/conf/item_proto.txt", "%s/item_proto.txt" % (szTmpParentName))
			SymLinkCreateFile("../share/conf/mob_names.txt", "%s/mob_names.txt" % (szTmpParentName))
			SymLinkCreateFile("../share/conf/mob_proto.txt", "%s/mob_proto.txt" % (szTmpParentName))
			#@CONFIG details
			CreateEmptyFile("%s/conf.txt"%(szTmpParentName))
			genMakeConfig("%s/conf.txt"%szTmpParentName, v1["config"], genConfig["all"][genConfig["active"]]["isextra"])
			try:
				genConfig["all"][genConfig["active"]]["db_port"]=M2PORTS[szDbName]
			except KeyError:
				genConfig["all"][genConfig["active"]]["db_port"]=genGetRandPort(v1["type"])
			WritePortConfig("%s/conf.txt"%szTmpParentName, genConfig["all"][genConfig["active"]]["db_port"], v1["type"], PORT.BIND_PORT)
			#add to ipfw rules
			tcp_nop_ports.append(genConfig["all"][genConfig["active"]]["db_port"])
		elif v1["type"]==M2TYPE.CHANFOLDER or v1["type"]==M2TYPE.CHANNEL:
			if v1["type"]==M2TYPE.CHANNEL:
				genConfig["all"][genConfig["active"]]["chan"]=v1["chan"]
			if v1["type"]==M2TYPE.CHANFOLDER:
				genConfig["all"][genConfig["active"]]["mark"]="%s/mark"%szTmpParentName
				CreateFolder("%s" % genConfig["all"][genConfig["active"]]["mark"])
			genMain(v1["sub"], listTmpParentName)
		elif v1["type"]==M2TYPE.SERVER:
			genInitSrv(szTmpParentName)
			genConfig["active"]=v1["name"]
			genConfig["all"][v1["name"]]={}
			genConfig["all"][v1["name"]]["isextra"]=v1["isextra"]
			genConfig["all"][v1["name"]]["mark"]="%s/mark"%szTmpParentName
			genMain(v1["sub"], listTmpParentName)
		elif v1["type"]==M2TYPE.AUTH or v1["type"]==M2TYPE.CORE:
			k1s=genConfig["active"]
			#logs make paths
			CreateFolder("%s/%s/%s/cores" % (k1s, v_logFolder, szTmpParentName))
			CreateFolder("%s/%s/%s/log" % (k1s, v_logFolder, szTmpParentName))
			TouchFile("%s/%s/%s/PTS" % (k1s, v_logFolder, szTmpParentName))
			#logs sym paths
			gCPR=genCalcParentRet(szTmpParentName)
			SymLinkCreateDir("%s%s/%s/cores" % (gCPR,v_logFolder,szTmpParentName), "%s/cores" % (szTmpParentName))
			SymLinkCreateDir("%s%s/%s/log" % (gCPR,v_logFolder,szTmpParentName), "%s/log" % (szTmpParentName))
			SymLinkCreateFile("%s%s/%s/PTS" % (gCPR,v_logFolder,szTmpParentName), "%s/PTS" % (szTmpParentName))
			#dirs sym paths
			SymLinkCreateDir("%sshare/data" % (gCPR), "%s/data" % (szTmpParentName))
			SymLinkCreateDir("%sshare/locale" % (gCPR), "%s/locale" % (szTmpParentName))
			SymLinkCreateDir("%sshare/package" % (gCPR), "%s/package" % (szTmpParentName))
			SymLinkCreateDir("%sshare/panama" % (gCPR), "%s/panama" % (szTmpParentName))
			#files sym paths
			SymLinkCreateFile("%sshare/conf/CMD" % (gCPR), "%s/CMD" % (szTmpParentName))
			SymLinkCreateFile("%sshare/conf/CRC" % (gCPR), "%s/CRC" % (szTmpParentName))
			SymLinkCreateFile("%sshare/conf/VERSION" % (gCPR), "%s/VERSION" % (szTmpParentName))
			SymLinkCreateFile("%sshare/conf/state_user_count" % (gCPR), "%s/state_user_count" % (szTmpParentName))
			if v1["type"]==M2TYPE.AUTH:
				SymLinkCreateFile("%sshare/conf/BANIP" % (gCPR), "%s/BANIP" % (szTmpParentName))
			if v1["type"]==M2TYPE.AUTH:
				szGameName="%s-%s"%(genConfig["active"], k1)
			else:
				szGameName="%s-ch%u-%s"%(genConfig["active"], genConfig["all"][genConfig["active"]]["chan"], k1)
			#mark sym path
			if v1["type"]==M2TYPE.CORE:
				gCPR2=genCalcParentRet(genConfig["all"][genConfig["active"]]["mark"])
				SymLinkCreateDir("%smark" % gCPR2, "%s/mark" % (szTmpParentName))
			#core sym path
			SymLinkCreateFileExe("%sshare/bin/game" % (gCPR), "%s/%s" % (szTmpParentName, szGameName))
			if IsWindows():
				SymLinkCreateFile("%sshare/bin/libmysql.dll" % (gCPR), "%s/libmysql.dll" % (szTmpParentName))
				SymLinkCreateFile("%sshare/bin/DeviL-1.7.8.dll" % (gCPR), "%s/DeviL-1.7.8.dll" % (szTmpParentName))
				SymLinkCreateFile("%sshare/bin/DeviL-1.7.8d.dll" % (gCPR), "%s/DeviL-1.7.8d.dll" % (szTmpParentName))
			#start/logs track
			if v1["type"]==M2TYPE.AUTH:
				kh1=M2TYPE.NOCHAN
			else:
				kh1=genConfig["all"][genConfig["active"]]["chan"]
			startlist.append(
				{
					"path":szTmpParentName,
					"name":szGameName,
					"type":v1["type"],
					"chan":kh1,
					"serv":genConfig["active"],
				}
			)
			clearlist.append(
				{
					"path":"%s/%s/%s"%(k1s, v_logFolder, szTmpParentName),
					"type":v1["type"],
					"chan":kh1,
					"serv":genConfig["active"],
				}
			)
			#@CONFIG details
			CreateEmptyFile("%s/CONFIG" % (szTmpParentName))
			genMakeConfig("%s/CONFIG"%szTmpParentName, v1["config"], genConfig["all"][genConfig["active"]]["isextra"], v1["type"])
			WriteHostConfig("%s/CONFIG"%szTmpParentName, szGameName)
			WriteChannelConfig("%s/CONFIG"%szTmpParentName, kh1)
			if not v1["type"]==M2TYPE.AUTH:
				WriteMapConfig("%s/CONFIG"%szTmpParentName, v1["maps"])
			# w/o array, only if
			wTmpPort={}
			# PORT process
			try:
				wTmpPort[PORT.PORT]=M2PORTS[szGameName][0]
			except KeyError:
				wTmpPort[PORT.PORT]=genGetRandPort(v1["type"])
			WritePortConfig("%s/CONFIG"%szTmpParentName, wTmpPort[PORT.PORT], v1["type"], PORT.PORT)
			# P2P_PORT process
			try:
				wTmpPort[PORT.P2P_PORT]=M2PORTS[szGameName][1]
			except KeyError:
				wTmpPort[PORT.P2P_PORT]=genGetRandPort(v1["type"])
			WritePortConfig("%s/CONFIG"%szTmpParentName, wTmpPort[PORT.P2P_PORT], v1["type"], PORT.P2P_PORT)
			# DB_PORT process
			wTmpPort[PORT.DB_PORT]=genConfig["all"][genConfig["active"]]["db_port"]
			WritePortConfig("%s/CONFIG"%szTmpParentName, wTmpPort[PORT.DB_PORT], v1["type"], PORT.DB_PORT)
			#add to ipfw rules
			if v1["type"]==M2TYPE.AUTH:
				udp_yes_ports.append(wTmpPort[PORT.PORT])
			tcp_yes_ports.append(wTmpPort[PORT.PORT])
			tcp_nop_ports.append(wTmpPort[PORT.P2P_PORT])
			#add to serverinfo
			serverinfolist.append(
				{
					"path":szTmpParentName,
					"port":wTmpPort[PORT.PORT],
					"type":v1["type"],
					"chan":kh1,
					"serv":genConfig["active"],
				}
			)
		else:
			print("unrecognized type %u"%v1["type"])
	#end

def genList(bIsVerbose=False):
	if bIsVerbose:
		print("startlist:")
		for i in startlist:
			print("---", i, "---")
		print("clearlist:")
		for i in clearlist:
			print("---", i, "---")
		print("udp_yes_ports:")
		for i in udp_yes_ports:
			print("---", i, "---")
		print("tcp_yes_ports:")
		for i in tcp_yes_ports:
			print("---", i, "---")
		print("tcp_nop_ports:")
		for i in tcp_nop_ports:
			print("---", i, "---")
	genGenM2List()
	genGenIpfwList()
	genGenServerInfo()

def genGen():
	genMain()
	genList(True)


if __name__ == "__main__":
	genGen()
#















#!/bin/sh
IPF="ipfw -q add"
ipfw -q -f flush

#loopback
$IPF 10 allow all from any to any via lo0
$IPF 20 deny all from any to 127.0.0.0/8
$IPF 30 deny all from 127.0.0.0/8 to any
$IPF 40 deny tcp from any to any frag

# stateful
$IPF 50 check-state
$IPF 60 allow tcp from any to any established
$IPF 70 allow all from any to any out keep-state
$IPF 80 allow icmp from any to any

# open port ftp (20, 21), ssh (22), mail (25)
# http (80), https (443), dns (53), mysql (3306)
default_udp_allowed_ports='53'
default_tcp_allowed_ports='22 53 3306'
default_tcp_blocked_ports=''

# here auth PORTs for "NORM"/"..." thing
metin2_udp_allowed_ports='30001'
# here PORTs
metin2_tcp_allowed_ports='30001 30003 30005 30007'
# here DB_PORTs and P2P_PORTs
metin2_tcp_blocked_ports='30000 30002 30004 30006 30008'

# merge lists
udp_allowed_ports="$default_udp_allowed_ports $metin2_udp_allowed_ports"
tcp_allowed_ports="$default_tcp_allowed_ports $metin2_tcp_allowed_ports"
tcp_blocked_ports="$default_tcp_blocked_ports $metin2_tcp_blocked_ports"

# white ip list
white_sites=''

# block tcp/udp ports
for val in $tcp_blocked_ports; do
	$IPF 2220 allow all from 127.0.0.0/8 to any $val
	for whitez in $white_sites; do
		$IPF 2210 allow tcp from $whitez to any $val in
		$IPF 2210 allow tcp from 127.0.0.0/8 to $whitez $val out
	done
	$IPF 2230 deny all from any to me $val
done
# unblock tcp ports
for val in $tcp_allowed_ports; do
	$IPF 2200 allow tcp from any to any $val in limit src-addr 20
	$IPF 2210 allow tcp from any to any $val out
done
# unblock udp ports
for val in $udp_allowed_ports; do
	$IPF 2200 allow udp from any to any $val in limit src-addr 20
	$IPF 2210 allow udp from any to any $val out
done






















import app
import localeInfo
from constInfo import TextColor
app.ServerName = None

ENABLE_RANDOM_AUTH_NO_LIB = True
if ENABLE_RANDOM_AUTH_NO_LIB:
	from time import time as time_time
	def get_random_number(upper_limit):
		_timestamp = time_time()
		_timestamp = int(_timestamp*1000000)
		return _timestamp % upper_limit

	def get_item_from_list(_list):
		choice = get_random_number(len(_list))
		assert choice < len(_list), "Index should be less than length of list"
		return _list[choice]
else:
	from random import choice as random_choice
	def get_item_from_list(_list):
		return random_choice(_list)

SRV1 = {
	"name":TextColor("ServerName", "ffd500"), #GOLD
	"host":"127.0.0.1",
	"srv1-auth1":30001,
	"ch1":30003,

	"authlist": [ 30001, ],
}

STATE_NONE = TextColor(localeInfo.CHANNEL_STATUS_OFFLINE, "FF0000") #RED

STATE_DICT = {
	0: TextColor(localeInfo.CHANNEL_STATUS_OFFLINE, "FF0000"), #RED
	1: TextColor(localeInfo.CHANNEL_STATUS_RECOMMENDED, "00ff00"), #GREEN
	2: TextColor(localeInfo.CHANNEL_STATUS_BUSY, "ffff00"), #YELLOW
	3: TextColor(localeInfo.CHANNEL_STATUS_FULL, "ff8a08") #ORANGE
}

SERVER1_CHANNEL_DICT = {
	0: {"key":10, "name":TextColor("CH-1", "FFffFF"), "ip":SRV1["host"], "tcp_port":SRV1["ch1"], "udp_port":SRV1["ch1"], "state":STATE_NONE,},

}

REGION_NAME_DICT = {
	0: SRV1["name"],
}

REGION_AUTH_SERVER_DICT = {
	0: {
		1: {"ip": SRV1["host"], "port": get_item_from_list(SRV1["authlist"]),},

	}
}

REGION_DICT = {
	0: {
		1: {"name": SRV1["name"], "channel": SERVER1_CHANNEL_DICT,},
	},
}

MARKADDR_DICT = {
	10: {"ip": SRV1["host"], "tcp_port": SRV1["ch1"], "mark": "10.tga", "symbol_path": "10",},
}

TESTADDR = {"ip": SRV1["host"], "tcp_port": SRV1["ch1"], "udp_port": SRV1["ch1"],}



















#!/usr/local/bin/python3
#### @martysama0134 start scripts ####
### TODO fix -s -w for srvr and not only channels
from subprocess import check_output as sp_co, call as sp_call, CalledProcessError as sp_CalledProcessError
from os import getcwd as os_getcwd, chdir as os_chdir

from platform import system as p_system
v_system = p_system()

class M2TYPE:
	SERVER, DB, AUTH, CHANFOLDER, CHANNEL, CORE = range(6)
	NOCHAN = 0

def fShell(szCmd, bRet=False):
	try:
		if bRet:
			return sp_co(szCmd, shell=True)[:-1]	# remove final \n
		else:
			return sp_call(szCmd, shell=True)
	except sp_CalledProcessError:
		return -1

def keyCheck(dict, key, elem={}):
	try:
		dict[key]
	except KeyError:
		dict[key]=elem

proclist={}
whichlist={"serv":[], "chan":[]}
def staInit():
	global proclist
	## base
	from json import load as j_loads
	with open(".start.json", "r") as fList:
		mList = j_loads(fList)
	proclist.clear()
	for dic1 in mList:
		keyCheck(proclist, dic1["serv"])
		if dic1["type"]==M2TYPE.DB:
			keyCheck(proclist[dic1["serv"]], "db", [])
			proclist[dic1["serv"]]["db"].append(dic1)
		elif dic1["type"]==M2TYPE.AUTH or dic1["type"]==M2TYPE.CORE:
			keyCheck(proclist[dic1["serv"]], "core", [])
			proclist[dic1["serv"]]["core"].append(dic1)
			if dic1["type"]==M2TYPE.CORE:
				keyCheck(proclist[dic1["serv"]], "chan", set())
				proclist[dic1["serv"]]["chan"].add(dic1["chan"])

def staStart(serv=(), chan={}):
	from time import sleep as t_sleep
	szPWD=os_getcwd()
	global whichlist
	whichlist["serv"]=serv
	whichlist["chan"]=chan
	keyCheck(whichlist["chan"], "all", ())
	def RunInMe(tmpProcList, bSkipCheck=False):
		addFlags = ""
		if dwLogLevel:
			addFlags += " -l %d " % dwLogLevel
		if dwIP:
			addFlags += " -I %s " % dwIP

		for dic1 in tmpProcList:
			# skip not requested servers
			if (whichlist["serv"]) and (dic1["serv"] not in whichlist["serv"]):
				continue
			if not bSkipCheck and dic1["type"]==M2TYPE.CORE:
				# skip not requested channels
				keyCheck(whichlist["chan"], dic1["serv"], ())
				if whichlist["chan"]["all"]:
					# print "all",whichlist["chan"]["all"]
					if not dic1["chan"] in whichlist["chan"]["all"]:
						continue
				if whichlist["chan"][dic1["serv"]]:
					# print dic1["serv"]
					if not dic1["chan"] in whichlist["chan"][dic1["serv"]]:
						continue
			# print dic1

			if v_system in ("FreeBSD", "Linux"):
				if not fShell("""ps afx | fgrep "./%s" | fgrep -v grep | awk '{print $1}'"""%dic1["name"], True):
					# print dic1["name"], "not found"
					# goto process file
					# print("cd %s"%dic1["path"])
					os_chdir(dic1["path"])
					# set automatically the privs to the binaries
					fShell("chmod u+x %s" % (dic1["name"]))
					# start the processes
					fShell("./%s %s &" % (dic1["name"], addFlags))
					# goto base again
					os_chdir(szPWD)
			elif v_system=="Windows":
				# easy workaround for windows (only for debug purposes)
				# fShell("""tasklist /v | findstr "%s" """%dic1["name"])
				os_chdir(dic1["path"])
				fShell("start /b %s %s" % (dic1["name"], addFlags))
				os_chdir(szPWD)
	for k1 in proclist.keys():
		RunInMe(proclist[k1]["db"])
		# RunInMe(proclist[k1]["db"], True)
		t_sleep(3)
		RunInMe(proclist[k1]["core"])

if __name__ == "__main__":
	from getopt import getopt as g_getopt, GetoptError as g_GetoptError
	from sys import exit as s_exit, argv as s_argv
	try:
		bIsAll = True
		bHasPrompt = False
		# baseChan = [1,99] # ch1 and ch99 are required
		baseChan = []
		listWhich = []
		szWhichServ = ""
		szWhichChan = {}
		dwLogLevel = 0
		dwIP = ""
		optlist, args = g_getopt(s_argv[1:],"psl:I:",('prompt','selective','whichserv=','whichchan=','level=','IP='))
		for o, a in optlist:
			if o in ('-s', '--selective'):
				bIsAll=False
			elif o in ('-p', '--prompt'):
				bHasPrompt=True
			elif o in ('-l', '--level'):
				dwLogLevel=int(a)
			elif o in ('-I', '--IP'):
				dwIP=a
			elif o in ('-ws', '--whichserv'):
				szWhichServ=a
				if szWhichServ:
					bIsAll=False
			elif o in ('-wc', '--whichchan'):
				szWhichChan["all"]=a
				if szWhichChan:
					bIsAll=False
		staInit()
		if bHasPrompt:
			bIsAll=False
			print("Servers available to run:", " ".join(iter(proclist.keys())))
			szTmp1 = input("Enter which servers you want to start: (nothing=all)\ne.g. srv1 srv2 srv3\n>>> ")
			if szTmp1.strip():
				szWhichServ=szTmp1
				for iChan in szTmp1.strip().split():
					if iChan not in iter(proclist.keys()):
						print("Server not found:", iChan)
						continue
					print("Channels available to run for %s:"%iChan, " ".join([str(i) for i in proclist[iChan]["chan"]]))
					szTmp2 = input("Enter which additional channels you want to start: (nothing=all)\ne.g. 1 2 99\n>>> ")
					if szTmp2.strip():
						# print szTmp1, szTmp2
						szWhichChan[iChan]=szTmp2
		# print proclist,whichlist
		if bIsAll:
			staStart()
		else:
			tmpWhichServ,tmpWhichChan=[],{}
			# print "---",szWhichServ,"---"
			# print "---",szWhichChan,"---"
			if szWhichServ:
				tmpWhichServ=szWhichServ.split()
			if szWhichChan:
				for iKey in szWhichChan.keys():
					tmpWhichChan[iKey]=set([int(i) for i in szWhichChan[iKey].split()])
				# tmpWhichChan["all"]=list(set([int(i) for i in szWhichChan["all"].split()] + baseChan))
			# print tmpWhichServ, "\n", tmpWhichChan
			staStart(serv=tmpWhichServ, chan=tmpWhichChan)
	except g_GetoptError as err:
		s_exit(err)
#


















#!/usr/local/bin/python3
#### @martysama0134 start scripts ####
### TODO fix -s -w for srvr and not only channels
from subprocess import check_output as sp_co, call as sp_call, CalledProcessError as sp_CalledProcessError
from os import getcwd as os_getcwd, chdir as os_chdir

from platform import system as p_system
v_system = p_system()

class M2TYPE:
	SERVER, DB, AUTH, CHANFOLDER, CHANNEL, CORE = list(range(6))
	NOCHAN = 0

def fShell(szCmd, bRet=False):
	try:
		if bRet:
			return sp_co(szCmd, shell=True)[:-1]	# remove final \n
		else:
			return sp_call(szCmd, shell=True)
	except sp_CalledProcessError:
		return -1

def keyCheck(dict, key, elem={}):
	try:
		dict[key]
	except KeyError:
		dict[key]=elem

proclist={}
whichlist={"serv":[], "chan":[]}
def staInit():
	global proclist
	## base
	from json import load as j_loads
	with open(".start.json", "r") as fList:
		mList = j_loads(fList)
	proclist.clear()
	for dic1 in mList:
		keyCheck(proclist, dic1["serv"])
		if dic1["type"]==M2TYPE.DB:
			keyCheck(proclist[dic1["serv"]], "db", [])
			proclist[dic1["serv"]]["db"].append(dic1)
		elif dic1["type"]==M2TYPE.AUTH or dic1["type"]==M2TYPE.CORE:
			keyCheck(proclist[dic1["serv"]], "core", [])
			proclist[dic1["serv"]]["core"].append(dic1)
			if dic1["type"]==M2TYPE.CORE:
				keyCheck(proclist[dic1["serv"]], "chan", set())
				proclist[dic1["serv"]]["chan"].add(dic1["chan"])

def staStart(serv=(), chan={}, level=1):
	# easy workaround for windows (only for debug purposes)
	if v_system=="Windows":
		levelFlag = ("/F" if level==9 else "")
		fShell("taskkill %s /IM game.exe /T"%(levelFlag))
		fShell("taskkill %s /IM db.exe /T"%(levelFlag))
		return
	from time import sleep as t_sleep
	# szPWD=os_getcwd()
	global whichlist
	whichlist["serv"]=serv
	whichlist["chan"]=chan
	keyCheck(whichlist["chan"], "all", ())
	def RunInMe(tmpProcList, bSkipCheck=False):
		for dic1 in tmpProcList:
			# skip not requested servers
			if (whichlist["serv"]) and (dic1["serv"] not in whichlist["serv"]):
				continue
			if not bSkipCheck and dic1["type"]==M2TYPE.CORE:
				# skip not requested channels
				keyCheck(whichlist["chan"], dic1["serv"], ())
				if whichlist["chan"]["all"]:
					# print("all",whichlist["chan"]["all"])
					if not dic1["chan"] in whichlist["chan"]["all"]:
						continue
				if whichlist["chan"][dic1["serv"]]:
					# print(dic1["serv"])
					if not dic1["chan"] in whichlist["chan"][dic1["serv"]]:
						continue
			# print(dic1)
			szPID=fShell("""ps axf | fgrep "./%s" | fgrep -v grep | awk '{print $1}'"""%dic1["name"], True)
			if szPID:
				dwPID=int(szPID)
				# kill process
				fShell("kill -%u %u"%(level, dwPID))
				print(("%s -> %u"%(dic1["name"], dwPID)))
			else: # do nothing
				print(("%s -> not found"%dic1["name"]))
	def CheckInMe(tmpProcList, bSkipCheck=False):
		for dic1 in tmpProcList:
			if (whichlist["serv"]) and (dic1["serv"] not in whichlist["serv"]):
				continue
			if not bSkipCheck and dic1["type"]==M2TYPE.CORE:
				keyCheck(whichlist["chan"], dic1["serv"], ())
				if whichlist["chan"]["all"]:
					if not dic1["chan"] in whichlist["chan"]["all"]:
						continue
				if whichlist["chan"][dic1["serv"]]:
					if not dic1["chan"] in whichlist["chan"][dic1["serv"]]:
						continue
			szPID=fShell("""ps axf | fgrep "./%s" | fgrep -v grep | awk '{print $1}'"""%dic1["name"], True)
			if szPID:
				dwPID=int(szPID)
				fShell("kill -%u %u"%(level, dwPID))
				print(("still waiting for... %s -> %u"%(dic1["name"], dwPID)))
				return False
		return True
	for k1 in proclist.keys():
		RunInMe(proclist[k1]["core"])
		while not CheckInMe(proclist[k1]["core"]):
			t_sleep(3)
		t_sleep(3)
		RunInMe(proclist[k1]["db"])
		t_sleep(1)
		while not CheckInMe(proclist[k1]["db"]):
			t_sleep(3)

if __name__ == "__main__":
	from getopt import getopt as g_getopt, GetoptError as g_GetoptError
	from sys import exit as s_exit, argv as s_argv
	try:
		bIsAll = True
		bHasPrompt = False
		baseChan = []
		listWhich = []
		szWhichServ = ""
		szWhichChan = {}
		dwLevel=1
		if v_system=="Windows":
			dwLevel=9
		optlist, args = g_getopt(s_argv[1:],"l:ps",('level=','prompt','selective','whichserv=','whichchan='))
		for o, a in optlist:
			if o in ('-s', '--selective'):
				bIsAll=False
			elif o in ('-p', '--prompt'):
				bHasPrompt=True
			elif o in ('-l', '--level'):
				dwTmpLevel=int(a)
				if 1<=dwTmpLevel and dwTmpLevel<=9:
					dwLevel=dwTmpLevel
			elif o in ('-ws', '--whichserv'):
				szWhichServ=a
				if szWhichServ:
					bIsAll=False
			elif o in ('-wc', '--whichchan'):
				szWhichChan["all"]=a
				if szWhichChan:
					bIsAll=False
		staInit()
		if bHasPrompt:
			bIsAll=False
			print(("Servers available to run:", " ".join(iter(proclist.keys()))))
			szTmp1 = input("Enter which servers you want to stop: (nothing=all)\ne.g. srv1 srv2 srv3\n>>> ")
			if szTmp1.strip():
				szWhichServ=szTmp1
				for iChan in szTmp1.strip().split():
					if iChan not in iter(proclist.keys()):
						print(("Server not found:", iChan))
						continue
					print(("Channels available to run for %s:"%iChan, " ".join([str(i) for i in proclist[iChan]["chan"]])))
					szTmp2 = input("Enter which additional channels you want to stop: (nothing=all)\ne.g. 1 2 99\n>>> ")
					if szTmp2.strip():
						# print(szTmp1, szTmp2)
						szWhichChan[iChan]=szTmp2
		# print(proclist,whichlist)
		if bIsAll:
			staStart(level=dwLevel)
		else:
			tmpWhichServ,tmpWhichChan=[],{}
			if szWhichServ:
				tmpWhichServ=szWhichServ.split()
			if szWhichChan:
				for iKey in szWhichChan.keys():
					tmpWhichChan[iKey]=set([int(i) for i in szWhichChan[iKey].split()])
			# print(tmpWhichServ, "\n", tmpWhichChan)
			staStart(serv=tmpWhichServ, chan=tmpWhichChan, level=dwLevel)
	except g_GetoptError as err:
		s_exit(err)
#







