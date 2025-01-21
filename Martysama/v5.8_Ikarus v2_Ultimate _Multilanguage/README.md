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
