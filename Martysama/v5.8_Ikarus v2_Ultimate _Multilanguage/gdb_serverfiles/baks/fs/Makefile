#### @martysama0134 backup scripts ####
## Inside /etc/crontab paste: (for automatic backups every hour)
# 0	*	*	*	*	root	make -C /home/serverfiles/baks/fs dump
## for automatic clean of backups older than 7 days every week:
# 0	0	*	*	1	root	make -C /home/serverfiles/baks/fs wclean

DATE != date +%Y%m%d-%H%M%S

CURPATH != pwd
PATH = ../../
FOLD = main
PATH2 = $(PATH)$(FOLD)
OUTPATH = .

all:
	@echo "available all, dump, recovery and clean"

dump:
	@cd $(PATH)$(FOLD) && python clear.py
	@cd $(CURPATH) && cd $(PATH) && tar -czf mt2_$(DATE).tgz $(FOLD)
	@mv $(PATH)mt2_$(DATE).tgz $(OUTPATH)
	@echo "backup di $(PATH2) finito"

recovery:
	@tar -xzf mt2.tgz -C $(PATH)
	@echo "recovery di $(PATH2) finito"

clean:
	@rm -f $(OUTPATH)/*.tgz

lclean:
	@cat /dev/null > $(MY_LOGF)

wclean:
	@echo "### clean week begin $(DATE)" >> $(MY_LOGF)
	@find $(OUTPATH) -name "*.tgz" -type f -mtime +7 -print -delete >> $(MY_LOGF)
	@echo "### clean week end $(DATE)" >> $(MY_LOGF)










# # Değişkenler
# DATE != date +%Y%m%d-%H%M%S
# CURPATH != pwd
# PATH_BASE = ../../
# FOLD = main
# TARGET_DIR = $(PATH_BASE)$(FOLD)
# OUTPATH = .
# LOGFILE = backup.log
# CORES != nproc

# # Komutlar
# TAR = tar
# PIGZ = pigz -p$(CORES)
# PYTHON = python3

# # Yedekleme hedefleri
# .PHONY: all dump recovery clean lclean wclean check_dirs

# all: help

# help:
#     @echo "Kullanılabilir komutlar:"
#     @echo "  make dump     - Dosya sistemi yedekleme"
#     @echo "  make recovery - Yedek geri yükleme"
#     @echo "  make clean    - Tüm yedekleri temizle"
#     @echo "  make wclean   - 7 günden eski yedekleri temizle"

# check_dirs:
#     @mkdir -p $(OUTPATH)
#     @[ -d "$(TARGET_DIR)" ] || (echo "Hedef dizin bulunamadı: $(TARGET_DIR)" && exit 1)

# dump: check_dirs
#     @echo "[$(DATE)] Yedekleme başlıyor..." | tee -a $(LOGFILE)
#     @cd $(TARGET_DIR) && $(PYTHON) clear.py
#     @cd $(PATH_BASE) && \
#     $(TAR) cf - $(FOLD) | $(PIGZ) > $(CURPATH)/$(OUTPATH)/mt2_$(DATE).tgz || \
#     (echo "Yedekleme hatası!" | tee -a $(LOGFILE) && exit 1)
#     @echo "[$(DATE)] Yedekleme tamamlandı: mt2_$(DATE).tgz" | tee -a $(LOGFILE)

# recovery:
#     @echo "[$(DATE)] Geri yükleme başlıyor..." | tee -a $(LOGFILE)
#     @$(PIGZ) -dc mt2.tgz | $(TAR) xf - -C $(PATH_BASE) || \
#     (echo "Geri yükleme hatası!" | tee -a $(LOGFILE) && exit 1)
#     @echo "[$(DATE)] Geri yükleme tamamlandı" | tee -a $(LOGFILE)

# clean:
#     @echo "[$(DATE)] Temizlik başlıyor..." | tee -a $(LOGFILE)
#     @find $(OUTPATH) -name "*.tgz" -type f -delete
#     @echo "[$(DATE)] Temizlik tamamlandı" | tee -a $(LOGFILE)

# wclean:
#     @echo "[$(DATE)] Haftalık temizlik başlıyor..." | tee -a $(LOGFILE)
#     @find $(OUTPATH) -name "*.tgz" -type f -mtime +7 -print -delete | tee -a $(LOGFILE)
#     @echo "[$(DATE)] Haftalık temizlik tamamlandı" | tee -a $(LOGFILE)