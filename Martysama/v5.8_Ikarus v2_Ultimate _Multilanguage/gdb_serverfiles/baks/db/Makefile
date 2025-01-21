#### @martysama0134 backup scripts ####
### Inside /etc/crontab paste:
## for automatic backups every hour:
# 0	*	*	*	*	root	make -C /home/serverfiles/baks/db dump
## for automatic clean of backups older than 7 days every week:
# 0	0	*	*	1	root	make -C /home/serverfiles/baks/db wclean

DATE != date +%Y%m%d-%H%M%S

MY_HOST = localhost
MY_USER = root
MY_PASS = your_password
MY_LOGF = log.txt
PREFIX = srv1_
OUTPATH = .

all:
	@echo "available all, dump, recovery, clean, lclean, wclean, cleanall"
	@echo "TEST: -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) > $(PREFIX)$(DATE).sql"

dump:
	@echo "### dump begin $(DATE)" >> $(MY_LOGF)
	@mkdir $(DATE)/
	@/usr/local/bin/mysqldump -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)account | gzip -9 > $(OUTPATH)/$(DATE)/$(PREFIX)account.sql.gz 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)common | gzip -9 > $(OUTPATH)/$(DATE)/$(PREFIX)common.sql.gz 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)player | gzip -9 > $(OUTPATH)/$(DATE)/$(PREFIX)player.sql.gz 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump --no-data -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)log | gzip -9 > $(OUTPATH)/$(DATE)/$(PREFIX)log.sql.gz 2>> $(MY_LOGF)
	@/usr/local/bin/mysqldump -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) mysql | gzip -9 > $(OUTPATH)/$(DATE)/mysql.sql.gz 2>> $(MY_LOGF)
	@echo "### dump end $(DATE)" >> $(MY_LOGF)

recovery:
	@echo "### recovery begin $(DATE)" >> $(MY_LOGF)
	@gunzip < mysql.sql.gz | mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) mysql 2>> $(MY_LOGF)
	@gunzip < $(PREFIX)account.sql.gz | mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)account 2>> $(MY_LOGF)
	@gunzip < $(PREFIX)common.sql.gz | mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)common 2>> $(MY_LOGF)
	@gunzip < $(PREFIX)player.sql.gz | mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)player 2>> $(MY_LOGF)
	@gunzip < $(PREFIX)log.sql.gz | mysql -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST) $(PREFIX)log 2>> $(MY_LOGF)
	@echo "### recovery end $(DATE)" >> $(MY_LOGF)

clean:
	@find $(OUTPATH) ! -name Makefile ! -name $(OUTPATH) -exec rm -rf {} +

lclean:
	@cat /dev/null > $(MY_LOGF)

wclean:
	@echo "### clean week begin $(DATE)" >> $(MY_LOGF)
	@find $(OUTPATH) ! -name Makefile ! -name $(OUTPATH) -type d -mtime +7 -print -exec rm -rf {} + >> $(MY_LOGF)
	@echo "### clean week end $(DATE)" >> $(MY_LOGF)

cleanall: clean lclean
	@echo "### clean all done $(DATE)" >> $(MY_LOGF)












# # Temel değişkenler
# DATE != date +%Y%m%d-%H%M%S
# MYSQL_CMD = /usr/local/bin/mysqldump
# MYSQL = mysql
# GZIP = pigz -9  # Çok çekirdekli sıkıştırma
# BACKUP_DIR = $(OUTPATH)/$(DATE)
# MYSQL_PARAMS = -u $(MY_USER) -p$(MY_PASS) -h $(MY_HOST)

# # Veritabanı listesi
# DBS = account common player log mysql

# # Paralel yedekleme için
# .PARALLEL: $(DBS)

# dump: create_backup_dir $(DBS)
#     @echo "### Yedekleme başladı: $(DATE)" >> $(MY_LOGF)

# create_backup_dir:
#     @mkdir -p $(BACKUP_DIR)

# # Her veritabanı için paralel yedekleme
# $(DBS):
#     @if [ "$@" = "log" ]; then \
#         $(MYSQL_CMD) --no-data $(MYSQL_PARAMS) $(PREFIX)$@ | $(GZIP) > $(BACKUP_DIR)/$(PREFIX)$@.sql.gz 2>> $(MY_LOGF) & \
#     elif [ "$@" = "mysql" ]; then \
#         $(MYSQL_CMD) $(MYSQL_PARAMS) $@ | $(GZIP) > $(BACKUP_DIR)/$@.sql.gz 2>> $(MY_LOGF) & \
#     else \
#         $(MYSQL_CMD) $(MYSQL_PARAMS) $(PREFIX)$@ | $(GZIP) > $(BACKUP_DIR)/$(PREFIX)$@.sql.gz 2>> $(MY_LOGF) & \
#     fi
#     @wait

# # Optimize edilmiş geri yükleme
# recovery:
#     @echo "### Geri yükleme başladı: $(DATE)" >> $(MY_LOGF)
#     @for db in $(DBS); do \
#         if [ "$$db" = "mysql" ]; then \
#             pigz -dc $$db.sql.gz | $(MYSQL) $(MYSQL_PARAMS) $$db 2>> $(MY_LOGF) & \
#         else \
#             pigz -dc $(PREFIX)$$db.sql.gz | $(MYSQL) $(MYSQL_PARAMS) $(PREFIX)$$db 2>> $(MY_LOGF) & \
#         fi \
#     done
#     @wait
#     @echo "### Geri yükleme tamamlandı: $(DATE)" >> $(MY_LOGF)

# # Optimize edilmiş temizlik
# clean:
#     @find $(OUTPATH) -mindepth 1 -maxdepth 1 ! -name "Makefile" -exec rm -rf {} +

# wclean:
#     @echo "### Haftalık temizlik başladı: $(DATE)" >> $(MY_LOGF)
#     @find $(OUTPATH) -mindepth 1 -maxdepth 1 -type d -mtime +7 -exec rm -rf {} +
#     @echo "### Haftalık temizlik tamamlandı: $(DATE)" >> $(MY_LOGF)

# .PHONY: dump recovery clean wclean cleanall create_backup_dir $(DBS)