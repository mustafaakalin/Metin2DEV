process_list = [
    {
        "path": "srv1/db",
        "name": "srv1-db",
        "type": 1,  # DB
        "chan": 0,
        "serv": "srv1"
    },
    {
        "path": "srv1/auth1",
        "name": "srv1-auth1",
        "type": 2,  # AUTH
        "chan": 0,
        "serv": "srv1"
    },
    {
        "path": "srv1/chan/ch1/core1",
        "name": "srv1-ch1-core1",
        "type": 5,  # CORE
        "chan": 1,
        "serv": "srv1"
    },
    {
        "path": "srv1/chan/ch1/core2",
        "name": "srv1-ch1-core2",
        "type": 5,  # CORE
        "chan": 1,
        "serv": "srv1"
    },
    {
        "path": "srv1/chan/ch99/core99",
        "name": "srv1-ch99-core99",
        "type": 5,  # CORE
        "chan": 99,
        "serv": "srv1"
    }
]
# Süreç kontrol ve başlatma işlevleri
import os
from subprocess import Popen
import psutil



class ProcessManager:
    def __init__(self, process_list):
        self.process_list = process_list

    def is_process_running(self, process_name):
        """Bir sürecin çalışıp çalışmadığını kontrol eder."""
        for proc in psutil.process_iter(['pid', 'name']):
            if proc.info['name'] == process_name:
                return True
        return False

    def start_process(self, process):
        """Bir süreci başlatır."""
        if not self.is_process_running(process["name"]):
            os.chdir(process["path"])  # Sürecin olduğu dizine geçiş yap
            Popen([f"./{process['name']}"], shell=True)  # Süreci başlat
            os.chdir(os.getcwd())  # Eski dizine dön
            print(f"Started: {process['name']}")
        else:
            print(f"Already running: {process['name']}")

    def start_all(self):
        """Tüm süreçleri başlatır."""
        for process in self.process_list:
            self.start_process(process)

# ProcessManager sınıfını kullanarak süreçleri başlatma
if __name__ == "__main__":
    manager = ProcessManager(process_list)
    manager.start_all()
