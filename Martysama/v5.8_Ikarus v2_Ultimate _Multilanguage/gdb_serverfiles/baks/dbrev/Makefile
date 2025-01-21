#### @martysama0134 backup scripts ####
### Inside /etc/crontab paste:
## for automatic backups every hour:
# 0	*	*	*	*	root	make -C /home/metin2/baks/db-rev dump

DATE != date +%Y%m%d-%H%M%S

MY_HOST = localhost
MY_USER = root
MY_PASS = password
MY_LOGF = /dev/null #log.txt
PREFIX = srv1_
ACCOUNT_TABLES = block_exception GameTime GameTimeIP iptocountry string
PLAYER_TABLES = banword item_attr item_attr_rare item_proto land mob_proto object_proto refine_proto shop shop_item skill_proto string
OUTPATH = .

all:
	@echo "available all, dump, recovery, clean, lclean, cleanall"
	@echo "TEST: -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) > $(PREFIX)$(DATE).sql"

dump:
	@echo "### dump begin $(DATE)" >> $(MY_LOGF)
	@### struct only
	@/usr/local/bin/mysqldump --no-data --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)account > $(OUTPATH)/$(PREFIX)account-schema.sql 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump --no-data --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)common > $(OUTPATH)/$(PREFIX)common-schema.sql 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump --no-data --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)player > $(OUTPATH)/$(PREFIX)player-schema.sql 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump --no-data --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)log > $(OUTPATH)/$(PREFIX)log-schema.sql 2>> $(MY_LOGF)
	@### data only
	@/usr/local/bin/mysqldump --no-create-info --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)account $(ACCOUNT_TABLES) > $(OUTPATH)/$(PREFIX)common-data.sql 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump --no-create-info --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)common > $(OUTPATH)/$(PREFIX)common-data.sql 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump --no-create-info --skip-extended-insert --skip-dump-date -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)player $(PLAYER_TABLES) > $(OUTPATH)/$(PREFIX)player-data.sql 2>> $(MY_LOGF)
	@echo "### dump end $(DATE)" >> $(MY_LOGF)

recovery:
	@echo "### recovery begin $(DATE)" >> $(MY_LOGF)
	@# schema
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)account 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)account-schema.sql
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)common 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)common-schema.sql
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)log 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)log-schema.sql
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)player 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)player-schema.sql
	@# data
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)account 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)account-data.sql
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)common 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)common-data.sql
	@# @mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)log 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)log-data.sql
	@mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)player 2>> $(MY_LOGF) < $(OUTPATH)/$(PREFIX)player-data.sql
	@echo "### recovery end $(DATE)" >> $(MY_LOGF)

clean:
	@rm -f $(OUTPATH)/*.sql

lclean:
	@cat /dev/null > $(MY_LOGF)

cleanall: clean lclean
	@echo "### clean all done $(DATE)" >> $(MY_LOGF)








# # Değişkenler
# DATE != date +%Y%m%d-%H%M%S
# MYSQL_CMD = /usr/local/bin/mysqldump
# MYSQL = mysql
# MY_HOST ?= localhost
# MY_USER ?= root
# MY_PASS ?= password
# MY_LOGF ?= backup.log
# PREFIX ?= srv1_
# OUTPATH ?= backups

# # Ortak MySQL parametreleri
# MYSQL_PARAMS = -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST)
# DUMP_PARAMS = --skip-extended-insert --skip-dump-date $(MYSQL_PARAMS)

# # Veritabanları
# DBS = account common player log

# # Paralel işlem için
# .PARALLEL: dump-schema dump-data

# all: help

# help:
#     @echo "Kullanılabilir komutlar:"
#     @echo "  make dump      - Tüm veritabanlarını yedekle"
#     @echo "  make recovery  - Yedekleri geri yükle"
#     @echo "  make clean     - Yedek dosyalarını temizle"

# # Dizin oluşturma
# $(OUTPATH):
#     @mkdir -p $(OUTPATH)

# # Schema yedekleme
# dump-schema: $(OUTPATH)
#     @echo "Schema yedekleme başladı: $(DATE)" | tee -a $(MY_LOGF)
#     @for db in $(DBS); do \
#         $(MYSQL_CMD) --no-data $(DUMP_PARAMS) $(PREFIX)$$db > $(OUTPATH)/$(PREFIX)$$db-schema.sql 2>> $(MY_LOGF) & \
#     done
#     @wait

# # Data yedekleme
# dump-data: $(OUTPATH)
#     @echo "Data yedekleme başladı: $(DATE)" | tee -a $(MY_LOGF)
#     @$(MYSQL_CMD) --no-create-info $(DUMP_PARAMS) $(PREFIX)account $(ACCOUNT_TABLES) > $(OUTPATH)/$(PREFIX)account-data.sql 2>> $(MY_LOGF) &
#     @$(MYSQL_CMD) --no-create-info $(DUMP_PARAMS) $(PREFIX)common > $(OUTPATH)/$(PREFIX)common-data.sql 2>> $(MY_LOGF) &
#     @$(MYSQL_CMD) --no-create-info $(DUMP_PARAMS) $(PREFIX)player $(PLAYER_TABLES) > $(OUTPATH)/$(PREFIX)player-data.sql 2>> $(MY_LOGF) &
#     @wait

# dump: dump-schema dump-data
#     @echo "Yedekleme tamamlandı: $(DATE)" | tee -a $(MY_LOGF)

# # Geri yükleme işlemleri
# recovery: $(OUTPATH)
#     @echo "Geri yükleme başladı: $(DATE)" | tee -a $(MY_LOGF)
#     @for db in $(DBS); do \
#         $(MYSQL) $(MYSQL_PARAMS) $(PREFIX)$$db < $(OUTPATH)/$(PREFIX)$$db-schema.sql 2>> $(MY_LOGF); \
#         [ -f $(OUTPATH)/$(PREFIX)$$db-data.sql ] && $(MYSQL) $(MYSQL_PARAMS) $(PREFIX)$$db < $(OUTPATH)/$(PREFIX)$$db-data.sql 2>> $(MY_LOGF); \
#     done
#     @echo "Geri yükleme tamamlandı: $(DATE)" | tee -a $(MY_LOGF)

# clean:
#     @rm -rf $(OUTPATH)/*.sql
#     @echo "Temizlik tamamlandı: $(DATE)" | tee -a $(MY_LOGF)

# .PHONY: all help dump dump-schema dump-data recovery clean