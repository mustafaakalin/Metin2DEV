# 📂 Martysama Server Files v5.8 + Source 🎮

### 🚀 Sürüm Bilgileri:
- **Martysama Server Files**: v5.8 (Sonraki sürümler: v5.9 - v6.0)
- **İkarus Offline Shop**: v2 Ultimate Sürüm 🛒
  - (Basic - Pro - Ultimate sürümleri mevcut)
- **Mali Multi Language**: Ultimate Sürüm 🌐
  - (Lite - Premium - Ultimate sürümleri mevcut)

---

### 🛠 Sistem Bilgileri:
- **FreeBSD**: 14.0 🖥️
- **MariaDB**: 10.11 🛢️
- **Visual Studio**: 2022 v14x 💻

---

### 🔐 Şifreler:
- **Filezilla/Putty/VirtualBox/Navicat** için:
  - Kullanıcı Adı: `root`
  - Şifre: `password`

- **GM Hesap Bilgileri**:
  - ID: `root`
  - Şifre: `12345`

### 📢 Kullanım İpuçları:
- **Y** ve **F8** tuşları ile **Offline Shop** ve **Search** açabilirsiniz.

---

## ⚙️ Server Files Ayarları:

### FileZilla:
1. `/home/gdb_serverfiles/main` dizinini açın.
2. `gen_settings.py` dosyasını Notepad ile açın.
3. Aşağıdaki IP adreslerini kendi IP adresinizle değiştirin:
   ```python
   v_bindHostname='192.168.1.60'
   v_proxyHostname='192.168.1.60'
   ```
4. Kaydedin ve çıkın.

### Putty:
1. Putty ile giriş yapın.
2. Komutları sırasıyla çalıştırın:
   ```bash
   cd /home/gdb_serverfiles/main
   python admin_panel.py
   666
   ```
3. Bu işlem, IP adresinize göre config düzenlemeleri yapar ve kanalları kurar.

---

## 🏗️ Server Source Derleme ve Oyun Açma:

1. **Putty** ile giriş yapın.
2. Aşağıdaki adımları uygulayın:

   **Server Derleme:**
   ```bash
   cd /home/gdb-source-server/Srcs/Server
   gmake clean
   gmake all -j4
   
   cd /home/gdb-source-server/Srcs/Server/game/src/quest
   gmake clean
   gmake
   ```

   **Kanalları Başlatma:**
   ```bash
   cd /home/gdb_serverfiles/main
   python admin_panel.py
   888

   cd /home/gdb_serverfiles/main
   python admin_panel.py
   666
   ```

   **Oyunu Açma:**
   ```bash
   cd /home/gdb_serverfiles/main
   python admin_panel.py
   1
   ```

> **⚠️ NOT:** Server source derleme işlemi yapmadan oyunu açmaya çalışmayın!

---

## 💻 Client Source Derleme:

1. `source-client/Srcs/Client` klasörünü açın.
2. `Metin2Client.sln` dosyasına sağ tıklayın ve **"Visual Studio Version Selector"** ile açın.
3. Gelen uyarılara **Evet/Tamam** diyerek onay verin.
4. `Metin2Client Çözümü (16/16)` kısmına sağ tıklayın:
   - **Çözümü Temizle** seçeneğini seçin.
   - **Toplu Derle > Tümünü Seç > Yeniden Derle** seçeneğini uygulayın. (Sadece release olanları seçebilirsiniz.)

---

## 📥 İndirme Linkleri:
- **Martysama Server Files**: [Tıkla İndir](#)
- **FreeBSD**: [Tıkla İndir](#)

---

## 🛡️ Virüs Total Sonuçları:
- [Virüs Total Linki](https://www.virustotal.com/gui/url/...fc580b27b84b33aba7781369c73d62909cb?nocache=1)

---

## ✨ Yapılan Değişiklikler:

### 🌟 **UPDATE-2.1** (02.11.2024):
- Mini map üzerinden GM'lerin istediği noktaya tıklayarak ışınlanması sağlandı. (M tuşu)

### 🌟 **UPDATE-2.2** (03.11.2024):
- Official karakter bilgi penceresi eklendi. (C tuşu)
- Bonus penceresi eklendi.

### 🌟 **UPDATE-2.3** (03.11.2024):
- Simya sistemindeki hatalar düzeltildi:
  - Efsunlar görünmüyordu (Fix ✅)
  - Tak/çıkar yapınca game.core hatası veriyordu (Fix ✅)
  - Mitsi Simya eklendi.

### 🌟 **UPDATE-2.4** (08.11.2024):
- Multi Language Sistemi Ultimate Sürümüne yükseltildi.
- Official `locale_string` sistemine geçildi. Artık client üzerinden çekiyor.
- Tek bir `translate.lua` dosyası 16 dil destekliyor.
- Shop Search'a Mitsi Simya eklendi.
- Shop Search'ta Kuşak Emiş Oranları'ndan %5 kaldırıldı.

### 🌟 **UPDATE-2.5** (13.11.2024):
- Görüş mesafesi artırıldı. (CONFIG edit 🛠️)
- Max yang sınırı yükseltildi.
- Mob Target sistemi aktif edildi.
- Lycan sınıfı kapatıldı. (Lycan **Disabled** 🐺)

### 🌟 **UPDATE-2.5.1** (06.12.2024):
- + basarken oluşan görüntü hatası düzeltildi (Veri tipi uyumsuzluğu).

### 🌟 **UPDATE-2.5.2** (06.12.2024):
- `CPythonSkill::RegisterSkillDesc` Wolfman Fix ✅

---

## 🐛 Hata ve Bug Bildirimleri:

- `item_proto.txt` ve `.SQL` düzenlenmesi gerekiyor.
- `auth`a düşen paket hatası.
- `LoadMotion: cannot find accumulation data in file`
- Işınlanınca CPU değerinin yükselmesi.
- Offline shop ile won kullanıldığında core hatası.
- `SYSERR: Nov 16 20:40:47 :: GetMoveMotionSpeed: cannot find motion` hatası.
- Ve diğer rapor edilen sorunlar... 🛠️

---

### ❤️ Önemli Not:
- **Destek veya güncelleme sağlanmayacaktır.**
- Bu çalışmadan faydalanan herkese teşekkürler! 🙏
- **Tarih:** 08.12.2024

