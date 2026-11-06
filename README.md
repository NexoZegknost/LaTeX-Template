# Bộ mẫu LaTeX (XeLaTeX, tiếng Việt)

Tập hợp các mẫu tài liệu LaTeX dùng XeLaTeX và hỗ trợ tiếng Việt. Mỗi mẫu nằm trong **một thư mục riêng, tự đủ** (không phụ thuộc file ngoài thư mục), nên có thể lấy riêng từng mẫu.

## Danh sách mẫu

| Mẫu | Mô tả | PDF demo |
|---|---|---|
| [`HCMUT_01_Report`](HCMUT_01_Report) | Báo cáo `report`, có bản cá nhân và bản nhóm, chuyển bằng một lệnh | [Nhóm](HCMUT_01_Report/examples/BaoCao_Nhom.pdf) · [Cá nhân](HCMUT_01_Report/examples/BaoCao_CaNhan.pdf) |

Mẫu mới được đặt tên theo dạng `HCMUT_02_...`, `HCMUT_03_...`.

## Lấy đúng một mẫu

Thay `<user>` bằng tên tài khoản GitHub và `HCMUT_01_Report` bằng tên mẫu cần lấy.

**Cách 1 – chỉ lấy file, không kèm lịch sử git (cần Node.js):**

```bash
npx degit <user>/latex-templates/HCMUT_01_Report BaoCao_MonXYZ
```

**Cách 2 – dùng git, chỉ tải thư mục cần dùng:**

```bash
git clone --filter=blob:none --no-checkout https://github.com/<user>/latex-templates.git
cd latex-templates
git sparse-checkout set HCMUT_01_Report
git checkout main
```

**Cách 3 – lấy một phiên bản cố định (theo tag):**

```bash
npx degit <user>/latex-templates/HCMUT_01_Report#HCMUT_01_Report-v1.0 BaoCao_MonXYZ
```

Sau khi lấy về, mở `README.md` bên trong thư mục mẫu để xem cách tùy chỉnh và biên dịch.

## Thêm mẫu mới

1. Tạo thư mục `HCMUT_NN_TenMau/` với đủ file để biên dịch độc lập (`main.tex`, `.latexmkrc`, `README.md`, ...).
2. Không dùng `\input` hoặc đường dẫn trỏ ra ngoài thư mục mẫu.
3. Đặt PDF demo vào `examples/`.
4. Thêm một dòng vào bảng ở trên.

## Phiên bản

Tag theo từng mẫu, ví dụ `HCMUT_01_Report-v1.0`.

## Giấy phép

[MIT](LICENSE)
