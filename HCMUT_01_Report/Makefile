# make          -> theo chế độ trong main.tex  (BaoCao.pdf)
# make nhom     -> ép bản nhóm                 (BaoCao_Nhom.pdf)
# make canhan   -> ép bản cá nhân              (BaoCao_CaNhan.pdf)
# make clean    -> xóa thư mục build
LATEXMK = latexmk -xelatex -outdir=build

all:
	$(LATEXMK) main.tex && cp build/main.pdf BaoCao.pdf

nhom:
	$(LATEXMK) -jobname=BaoCao_Nhom -usepretex='\def\CheDoEp{nhom}' main.tex && cp build/BaoCao_Nhom.pdf .

canhan:
	$(LATEXMK) -jobname=BaoCao_CaNhan -usepretex='\def\CheDoEp{canhan}' main.tex && cp build/BaoCao_CaNhan.pdf .

clean:
	rm -rf build

.PHONY: all nhom canhan clean
