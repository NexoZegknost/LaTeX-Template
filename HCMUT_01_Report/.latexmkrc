# Biên dịch bằng XeLaTeX, file phụ để trong build/
$pdf_mode    = 5;          # 5 = xelatex
$out_dir     = 'build';
$bibtex_use  = 2;
$interaction = 'nonstopmode';
$xelatex     = 'xelatex -synctex=1 -file-line-error %O %P';
