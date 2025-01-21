import os
import sys
import subprocess
from enum import Enum
from typing import Dict, List
from platform import system 
import os
import sys
import json
import time
import logging
import asyncio
import platform
from typing import Dict, Set, List, Optional, Union
from dataclasses import dataclass
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

CurrentDirFullPath = os.getcwd()
BackupDir = os.path.join(CurrentDirFullPath, 'Backups')
DBDir = os.path.join(BackupDir, 'Database')
DBRevDir = os.path.join(BackupDir, 'DBRevisions')
FS = os.path.join(BackupDir, 'Filesystem')
GameDir = 'GameServerBackend'
LocalName = 'turkiye'


# input fonksiyonu ile alınan veriye göre işlem yapar. Args: [1,"1i",111,"111a","111b",2,"2i",3,33,4,4b,5,666,777,888,999,"1a","2a",0] , Returns: None

print("1. Oyunu baslat (start)\n1i. Start Interactive (starti)\n111. Oyunu tekrar baslat (restart)\n111a. Restart+Daemon (restartall)\n111b. Restart+Gen+Quest (fullrestart)\n2. Oyunu kapat (stop|close)\n2i. Stop Interactive (stopi|closei)\n3. Loglari sil (clean|clear)\n33. Bütün loglari sil (cleanall|clearall)\n4. Backup mysql/db (bak1|db|db_backup)\n4b. Backup mysql no user-data (dbrev)\n5. Backup game/fs (bak2|fs|fs_backup)\n666. Kurulum yap (gen)\n777. Quest derle (quest)\n888. Game & Db kisayolu oluştur. Her source derlemesi sonrasi bu islemi yap. (symlink)\n999. Ara (search)\n1a. Start+Daemon (startall)\n2a. Stop+Daemon (stopall|closeall)\n0. Çıkış (quit)")
input_phase = input('Enter a phase: ').split()

# run command fuction
def process_input(input_phase):
    phase = input_phase[0]
    commands = input_phase[1:] if len(input_phase) >= 2 else []
    if phase == '1':
        start_game()
    elif phase == '1i':
        start_interactive()
    elif phase == '111':
        restart_game()
    elif phase == '111a':
        restart_daemon()
    elif phase == '111b':
        restart_gen_quest()
    elif phase == '2':
        stop_game()
    elif phase == '2i':
        stop_interactive()
    elif phase == '3':
        clean_logs()
    elif phase == '33':
        clean_all_logs()
    elif phase == '4':
        backup_db()
    elif phase == '4b':
        backup_db_no_userdata()
    elif phase == '5':
        backup_game_fs()
    elif phase == '666':
        setup()
    elif phase == '777':
        compile_quest()
    elif phase == '888':
        create_symlinks()
    elif phase == '999':
        search()
    elif phase == '1a':
        start_daemon()
    elif phase == '2a':
        stop_daemon()
    elif phase == '0':
        sys.exit()
    else:
        print("Geçersiz giriş")



# in proccess_input functions
def start_game():
    os.system('python start.py')
    print('Game started')

def start_interactive():
    print('Interactive started')

def restart_game():
    print('Game restarted')

def restart_daemon():
    print('Daemon restarted')

def restart_gen_quest():
    print('Gen and Quest restarted')

def stop_game():
    print('Game stopped')

def stop_interactive():
    print('Interactive stopped')

def clean_logs():
    print('Logs cleaned')

def clean_all_logs():
    print('All logs cleaned')

def backup_db():
    print('DB backed up')

def backup_db_no_userdata():
    print('DB no user data backed up')

def backup_game_fs():
    print('Game FS backed up')

def setup():
    print('Setup completed')

def compile_quest():
    print('Quest compiled')

def create_symlinks():
    print('Symlinks created')

def search():
    print('Search completed')

def start_daemon():
    print('Daemon started')

def stop_daemon():
    print('Daemon stopped')








#Bu fonksiyon, belirtilen dizin yolunda tüm "CONFIG" adlı dosyaları bulur ve bu dosyalardaki "PORT" içeren satırları ekrana yazdırır. Performansı artırmak için `os.walk` yerine `os.scandir` kullanılabilir ve dosya okuma işlemi daha verimli hale getirilebilir.
def search_for_port_in_configs(path):
    for entry in os.scandir(path):
        if entry.is_dir():
            search_for_port_in_configs(entry.path)
        elif entry.is_file() and entry.name == "CONFIG":
            with open(entry.path, 'r') as f:
                for line in f:
                    if "PORT" in line:
                        print(line.strip())


# Dosya veya sembolik bağlantıyı siler. Args: filepath (str): Silinecek dosya yolu , Returns: bool: Silme işlemi başarılı ise True, değilse False
def delete_file(filepath):
    try:
        # os.remove hem normal dosyaları hem de symlink'leri silebilir
        # ekstra kontrol gerektirmez
        os.remove(filepath)
        return True
    except FileNotFoundError:
        return False
    except (PermissionError, OSError) as e:
        print(f"Silme hatası: {e}")
        return False
# Birden fazla dosyayı toplu şekilde siler. Args: filepaths (list): Silinecek dosya yolları listesi , Returns: dict: Başarılı/başarısız silinen dosyaların durumu
def delete_files(filepaths):
    results = {'success': [], 'failed': []}
    for path in filepaths:
        if delete_file(path):
            results['success'].append(path)
        else:
            results['failed'].append(path)
    return results


