# 🌟 SOURCE FİLES VE SİSTEM BİLGİLERİ 🌟  

### 🎉 **Server Bilgileri**  
- **Martysama Server Files:** v5.8 + Source (Sonraki sürümler: v5.9 - v6.0)  
- **İkarus Offline Shop:** v2 ULTIMATE Sürüm! *(Basic - Pro - Ultimate)*  
- **Mali Multi Language:** ULTIMATE Sürüm! *(Lite - Premium - Ultimate)*  

---

### 💻 **Sürüm Bilgileri**  
- **FreeBSD:** 14.0  
- **MariaDB:** 10.11  
- **Visual Studio:** 2022 v14.x  

---

### 🔐 **Şifreler**  
- **Filezilla/Putty/VirtualBox/Navicat:**  
  - **Kullanıcı adı:** root  
  - **Şifre:** password  

- **GM Hesap:**  
  - **ID:** root  
  - **Şifre:** 12345  

💡 *Y ve F8 tuşu ile offline shop ve search açabilirsiniz.*  

---

## ⚙️ **SERVER FİLES AYARLARI**  

1. **FileZilla:**  
   - `/home/gdb_serverfiles/main` klasörünü açın.  
   - `gen_settings.py` adlı dosyayı Notepad ile açın.  
   - Şu ayarları düzenleyin:  
     ```python
     v_bindHostname = '192.168.1.60'
     v_proxyHostname = '192.168.1.60'
     ```  
   - **IP adresinizi yazın ve kaydedin. 💾**  

2. **Putty:**  
   ```bash
   cd /home/gdb_serverfiles/main
   python admin_panel.py
   666 seç.
   ```  
   🔧 *IP adresine göre config düzenlemeleri yapıldı ve kanallar kuruldu!*  

---

## 🔨 **SERVER SOURCE DERLEME ve OYUNU AÇMA**  

1. **Putty ile login olduktan sonra:**  
   ```bash
   cd /home/gdb-source-server/Srcs/Server
   gmake clean
   gmake all -j4
   ```  

2. **Quest derlemesi için:**  
   ```bash
   cd /home/gdb-source-server/Srcs/Server/game/src/quest
   gmake clean
   gmake
   ```  

3. **Admin panel işlemleri:**  
   ```bash
   cd /home/gdb_serverfiles/main
   python admin_panel.py
   888 seç.
   python admin_panel.py
   666 seç.
   ```  

4. **Oyunu açmak için:**  
   ```bash
   cd /home/gdb_serverfiles/main
   python admin_panel.py
   1 seç.
   ```  

❗ *NOT: Server source derlemesi yapmadan oyunu açmaya çalışmayın!*  

---

## 🛠️ **CLIENT SOURCE DERLEME**  

1. **Client klasörüne gidin:**  
   - `source-client/Srcs/Client`  
   - `Metin2Client.sln` dosyasına sağ tıklayın ve **Visual Studio Version Selector** ile açın.  
   - Gelen uyarılara **Evet / Tamam** diyerek onay verin.  

2. **Proje temizliği ve derleme:**  
   - **Çözümü temizle**  
   - **Toplu Derle > Tümünü Seç > Yeniden Derle** *(Sadece release olanları seçebilirsiniz)*  

---

## 📥 **İndirme Linkleri**  
- **İNDİR:** [Tıkla İndir](#)  
- **FreeBSD:** [Tıkla İndir](#)  

---

## 🛡️ **Virüs Total Sonuçları**  
- [Sonuçları Görüntüle](https://www.virustotal.com/gui/url/...fc580b27b84b33aba7781369c73d62909cb?nocache=1)  

---

## 📝 **Yapılan Değişiklikler**  

### 🆕 **UPDATE-2.1: 02.11.2024**  
- Mini map üzerinde GM'lerin ışınlanması sağlandı. *(M tuşu)*  

### 🆕 **UPDATE-2.2: 03.11.2024**  
- Official karakter bilgi penceresi eklendi *(C tuşu)*  
- Bonus penceresi eklendi.  

### 🆕 **UPDATE-2.3: 03.11.2024**  
- Simya sistemindeki sorunlar fixlendi.  
  - **Efsunlar görünmüyordu:** Fix.  
  - **Tak/çıkar işlemi core veriyordu:** Fix.  
  - **Mitsi Simya eklendi!**  

### 🆕 **UPDATE-2.4: 08.11.2024**  
- Multi Language sistemi **ULTIMATE** sürümüne yükseltildi!  
- 16 dil desteği sağlandı!  
- Shop Search’a Mitsi Simya eklendi.  

### 🆕 **UPDATE-2.5: 13.11.2024**  
- Görüş mesafesi artırıldı.  
- Bazı binek kullanım sorunları fixlendi.  
- **Lycan kapatıldı.**  

### 🆕 **UPDATE-2.5.1: 06.12.2024**  
- + basarken oluşan görüntü hatası fixlendi.  

### 🆕 **UPDATE-2.5.2: 06.12.2024**  
- **CPythonSkill::RegisterSkillDesc Wolfman Fix**  

---

## 🐞 **Hata ve Bug Bildirimleri**  

### 📌 **Düzeltilecek Hatalar:**  
- Max yang uyarlamaları  
- Işınlanınca CPU değerleri  
- Core verme sorunları  
- Simya sisteminde bölme sorunları  

---

💡 *Bir arkadaşımız kurulum videosu çekmiş, teşekkür ederiz!*  
**[Video Linki](#)**  







# 🚀 NAVICAT BAĞLANMAZSA YAPILACAK İŞLEMLER! 🌟  

Eğer NAVICAT'a bağlanabiliyorsanız bu işlemleri yapmanıza gerek yok! 💻  

---

## 🔧 1️⃣ MARİADB 10.6 KURULUMU VE ŞİFRE OLUŞTURMA 🔐  

Her bir kodu sırasıyla uygulayın! 💪  

### 🖥️ **1. AŞAMA: PUTTY PROGRAM**  

```bash
service mysql-server stop  
pkg remove mariadb106-server  
pkg remove mariadb106-client  
pkg autoremove  
cd /var/db  
rm -rf mysql  
cd /usr/local/etc  
rm -rf mysql  
reboot  
```  

---

### 🖥️ **2. AŞAMA: PUTTY PROGRAMI**  

```bash
pkg install mariadb106-client mariadb106-server  
```  

➡️ **Proceed with this action? [y/N]:** çıktısında **Y** tuşuna basın ve ardından **ENTER**! ✅  
**Kurulum tamamlandı! 🎉**  

---

### 🗂️ **3. AŞAMA: FİLLEZİLLA PROGRAMI**  

1. `/usr/local/etc/mysql/conf.d` klasörüne gidin.  
2. `server.cnf` dosyasını Notepad ile açın.  
3. Aşağıdaki satırı değiştirin:  

   **Önceki:**  
   ```  
   bind-address = 127.0.0.1  
   ```  

   **Sonraki:**  
   ```  
   bind-address = 0.0.0.0  
   ```  

4. **Kaydedip çıkın. 💾**  

---

### 🖥️ **4. AŞAMA: PUTTY PROGRAMI**  

```bash
pwd_mkdb -p /etc/master.passwd  
chown -R mysql /var/db/mysql/  
chgrp -R mysql /var/db/mysql/  
echo 'mysql_enable="YES"' >> /etc/rc.conf  
service mysql-server start  
```  

---

### 🔑 **5. AŞAMA: PUTTY PROGRAMI - ŞİFRE OLUŞTURMA!**  

```bash
mysqladmin -uroot -p password  
```  

1. **Enter Password:** Hiçbir şey yazmayın, direkt **ENTER**'a basın.  
2. **New Password:** `password` yazın ve **ENTER**'a basın.  
3. **Confirm New Password:** `password` yazın ve **ENTER**'a basın.  
**Başarılı! 🎉**  

---

### 🖥️ **6. AŞAMA: NAVICAT'A BAĞLANMA AYARLARI!**  

```bash
mysql -p  
password  
CREATE USER 'root'@'%' IDENTIFIED BY 'password';  
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;  
flush privileges;  
quit;  
```  

---

### 🖥️ **7. AŞAMA: NAVICAT PROGRAMI İLE BAĞLANMA!**  

1. **Connection > MariaDB** seçin.  
2. Bilgileri girin:  
   - **Connection Name:** İstediğiniz bir isim  
   - **Host:** İp adresiniz  
   - **Port:** 3306  
   - **User Name:** root  
   - **Şifre:** password  

🎉 **Başarıyla bağlandıysanız kurulum tamam!**  

---

## 🗂️ 2️⃣ TABLOLAR OLUŞTURMA 🛠️  

```bash
cd /home/serverfiles/sql  
sh run.sh  
```  

💤 **Biraz bekleyin...**  

```bash
cd /home/serverfiles/sql  
sh run_proto.sh  
```  

💤 **İşlem tamamlanınca reboot atın!**  

🎯 **Sonuç:** Oyun sorunsuz açıldıysa işlem başarılı! ✅  

---

## 🔄 3️⃣ UPDATE-2.5 GÜNCELLEMESİ KURULUMU! 🚀  

### 🖥️ **SERVER FILES ve SOURCE KURULUMU**  

```bash
cd /home  
rm -rf gdb_serverfiles  
tar zxvf UPDATE-2.5--gdb_serverfiles-update-2.5.tar.gz  

cd /home  
rm -rf gdb_server_source  
tar zxvf UPDATE-2.5--gdb_server_source-update2.5.tar.gz  

cd /var/db  
rm -rf mysql  
tar zxvf UPDATE-2.5--mysql-update-2.5.tar.gz  

cd /home/gdb_serverfiles/sql  
sh run.sh  

cd /home/gdb_serverfiles/sql  
sh run_proto.sh  
```  

---

### 🌐 **IP ADRESİ AYARLARI**  

1. `/home/gdb_serverfiles/main` klasörüne gidin.  
2. `gen_settings.py` dosyasını Notepad ile açın.  
3. Aşağıdaki satırları kendi IP adresinizle değiştirin:  

   ```python  
   v_bindHostname='192.168.1.56'  
   v_proxyHostname='192.168.1.56'  
   ```  

4. **Kaydedin ve çıkın. 💾**  

---

### ⚙️ **SOURCE DERLEME**  

```bash
cd /home/gdb-source-server/Srcs/Server  
gmake clean  
gmake all -j4  
```  

💾 **Derleme tamamlandıktan sonra:**  

```bash
cd /home/gdb_serverfiles/main  
python admin_panel.py  
888 seç.  
```  

---

### 🎮 **OYUNU AÇMAK İÇİN**  

```bash
cd /home/gdb_serverfiles/main  
python admin_panel.py  
1 seç.  
```  

🎉 **Oyununuz hazır! İyi eğlenceler! 🕹️**  
