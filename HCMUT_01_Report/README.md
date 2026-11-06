# Mẫu báo cáo HCMUT — `documentclass{report}` (Tiếng Việt, XeLaTeX)

Mẫu báo cáo bài tập lớn / tiểu luận / đồ án dựng theo báo cáo mẫu CO2001, có **bản cá nhân** và **bản nhóm** chuyển bằng một lệnh.

## 1. Bắt đầu nhanh

1. Sửa thông tin trong `config/metadata.tex` (môn học, đề tài, GVHD, thành viên). Chân trang tự in dạng **"Môn `\TenMon` - Học kỳ `\HocKy`"** (mặc định: *Môn XYZ - Học kỳ T*).
2. Chọn chế độ ở đầu `main.tex`:
   ```latex
   \BaoCaoNhom        % bản nhóm
   % \BaoCaoCaNhan    % bản cá nhân
   ```
3. Biên dịch bằng **XeLaTeX**: nhấp đúp `compile.bat` (Windows) hoặc `make`.
4. Trước khi nộp: xóa dòng `\input{appendix/B-cam-nang-thanh-phan}` trong `main.tex`.

## 2. Cá nhân / nhóm

| | Bản nhóm (`\BaoCaoNhom`) | Bản cá nhân (`\BaoCaoCaNhan`) |
|---|---|---|
| Trang bìa | Nhóm, lớp, toàn bộ thành viên | Lớp, chỉ **thành viên đầu tiên** |
| Bảng phân công nhiệm vụ | Có (tự sinh từ `\ThanhVien`) | Không |
| Xưng hô (`\ChungToi`, `\nhom`...) | Chúng tôi / nhóm | Tôi |
| Ký tên lời cam đoan | Đại diện nhóm | Sinh viên thực hiện |

Thành viên khai báo một lần trong `metadata.tex`:
```latex
\ThanhVien{Họ và tên}{MSSV}{Nhiệm vụ}{Mức đóng góp}
```
Muốn viết câu khác nhau cho hai bản: `\NhomCaNhan{câu bản nhóm}{câu bản cá nhân}`.

Xuất cả hai bản mà không sửa file:
```bat
compile.bat nhom      &REM -> BaoCao_Nhom.pdf
compile.bat canhan    &REM -> BaoCao_CaNhan.pdf
```
(hoặc `make nhom`, `make canhan`).

## 3. Bố cục và đánh số trang

| Phần | File | Số trang |
|---|---|---|
| Trang bìa | `frontmatter/trang-bia.tex` | không đánh số |
| Lời cam đoan, Lời cảm ơn, Tóm tắt, Phân công | `frontmatter/*.tex` | i, ii, iii... |
| Mục lục, Danh mục hình, Danh mục bảng, Viết tắt | `\MucLuc`, `\DanhMucHinh`, `\DanhMucBang`, `viet-tat.tex` | tiếp i, ii, iii... |
| Chương 1–5, Tài liệu tham khảo | `chapters/*.tex`, `references/references.bib` | 1, 2, 3... (chân trang "Trang x/N") |
| Phụ lục A, B... | `appendix/*.tex` | đánh tiếp số La Mã của phần đầu |

Việc chuyển kiểu số do `\BatDauPhanDau`, `\BatDauNoiDung`, `\BatDauPhuLuc` trong `main.tex` đảm nhiệm.
Chương mới: thêm file vào `chapters/` và `\input` vào `main.tex`.

## 4. Thành phần nhanh

Bản PDF có **Phụ lục B – Cẩm nang thành phần nhanh** hiển thị mã và kết quả của từng thành phần.

| Nhóm | Lệnh / môi trường |
|---|---|
| Nhấn mạnh | `\nhanmanh{}` `\quantrong{}` `\danhdau{}` `\thuatngu{Việt}[English]` `\nhan[màu]{}` `\canbosung{}` |
| Hộp thông báo | `ghichu` `luuy` `canhbao` `goiy` `ketqua` `ychinh` |
| Lời giải | `loigiai[Tiêu đề]` — nền trắng xám, chữ xanh dương, kết thúc bằng ■ |
| Hộp đánh số theo chương | `dinhnghia` `dinhly` `vidu` |
| Khung chữ | `khungchu[màu]{Tiêu đề}` `khungnetdut` `trichdan{Tác giả}` |
| Số liệu | `hangchiso` + `\ChiSo[màu]{số}{mô tả}`, `\SoSanh[màu1][màu2]{T1}{N1}{T2}{N2}` |
| Công thức | `khungcongthuc[Tiêu đề]`, `\NoiBat{...}` trong equation, `\R \N \Z \dif \abs \norm` |
| Bảng | `bangbieu` / `bangsoc` `{Chú thích}{nhãn}{cột}`, `\hangtieude`, `\thead{}`, `\otot \oxau \onoibat`, `\nguonbang{}`, cột `L C R Y Z` |
| Hình | `\chenhinh[rộng]{tệp}{chú thích}{nhãn}` (có khung; chưa có ảnh → khung chờ có biểu tượng), `\chenhinh*` (không khung), `\haihinh{...8 tham số}` |
| Mã nguồn | `khungma{tên_tệp.py}{Python}[tùy chọn]` — tên tệp góc trái, badge ngôn ngữ góc phải; `lstlisting` (gõ tiếng Việt có dấu được) |
| Lệnh bash | `khungbash[Tiêu đề]` — khung kiểu cửa sổ terminal, dấu `$` tô xanh |
| Danh sách | `dsdung` (✓) `dssai` (✗) `dssao` (★) |
| Tham chiếu | `\Hinh{}` `\Bang{}` `\PT{}` `\Chuong{}` `\Muc{}` `\PhuLuc{}` |

## 5. Màu sắc (`config/colors.tex`)

Màu trường: `bkxanh`, `bkxanhsang`, `bkxanhnen`, `bkvien`, `bkxam`.
Màu cơ bản: `xanhduong`, `xanhla`, `ngoc`, `do`, `cam`, `vang`, `tim`, `hong`, `nau`, `xam` — mỗi màu có thêm `<tên>dam` và `<tên>nhat`.
Thêm màu: `\definecolor{ten}{HTML}{RRGGBB}\TaoSacDo{ten}`.

## 6. Phông chữ và tiếng Việt

* Phông mặc định của LaTeX: **Latin Modern** (qua `fontspec`), có sẵn các chữ dựng sẵn của tiếng Việt nên dấu không bị lệch.
* Ngôn ngữ: `polyglossia` + `vietnamese`; tên gọi (Mục lục, Hình, Bảng, Phụ lục...) đặt trong `config/style.tex`.
* `config/listings-vi.tex` sửa lỗi gói `listings` in lệch chữ có dấu khi dùng XeLaTeX.
* Overleaf: Menu → Compiler → **XeLaTeX**. (pdfLaTeX được hỗ trợ dự phòng qua T5/vntex nhưng chưa kiểm thử.)

## 7. Cấu trúc thư mục

```text
main.tex                  tệp gốc: chọn chế độ, thứ tự các phần
config/  mode.tex         chế độ cá nhân/nhóm, \ThanhVien
         metadata.tex     thông tin báo cáo (sửa file này)
         preamble.tex     gói lệnh, phông, lề trang
         colors.tex       bảng màu
         style.tex        tiêu đề, header/footer, đánh số trang, mục lục
         commands.tex     thành phần nhanh
         listings-vi.tex  tiếng Việt trong khung mã
frontmatter/              bìa, cam đoan, cảm ơn, tóm tắt, phân công, viết tắt
chapters/                 01-mo-dau ... 05-ket-luan
appendix/                 A-du-lieu-bo-sung, B-cam-nang-thanh-phan
references/references.bib
figures/  tables/
compile.bat  Makefile  .latexmkrc  .vscode/settings.json
```
