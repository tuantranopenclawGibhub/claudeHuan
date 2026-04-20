# HƯỚNG DẪN SỬ DỤNG HỆ THỐNG Claude-NT

## Cấu trúc thư mục hiện tại

```
Claude-NT/
├── _INDEX_TONG_HOP/
│   ├── INDEX_KHACH_HANG.csv          ← Danh sách tất cả khách hàng
│   ├── INDEX_BAO_GIA_TONG_HOP.csv    ← Tất cả báo giá (cập nhật mỗi lần BG)
│   └── THONG_KE_THEO_THANG.csv       ← Thống kê tháng (cập nhật cuối tháng)
│
├── DANG_TIEN_HANH/
│   └── KH001_CONG_TY_DEMO/          ← Ví dụ mẫu
│       ├── _PROFILE_KHACH_HANG.md
│       ├── BAO_GIA/
│       ├── HOP_DONG/
│       ├── TRAO_DOI/
│       ├── KY_THUAT/
│       └── THANH_TOAN/
│
├── HOAN_THANH/
│   ├── 2024/
│   └── 2025/
│
├── KHONG_CHOT/
│
└── _TEMPLATE/
    ├── _PROFILE_KHACH_HANG.md        ← Mẫu profile
    ├── TEMPLATE_BAO_GIA.csv          ← Mẫu báo giá
    ├── TAO_KHACH_HANG_MOI.bat        ← Script Windows (double-click)
    └── TAO_KHACH_HANG_MOI.sh         ← Script Linux/Mac
```

---

## Khi có khách hàng mới

### Windows:
1. Vào thư mục `_TEMPLATE/`
2. Double-click `TAO_KHACH_HANG_MOI.bat`
3. Nhập mã KH và tên → tự động tạo đủ thư mục

### Linux/Mac:
```bash
cd Claude-NT/_TEMPLATE
bash TAO_KHACH_HANG_MOI.sh
```

---

## Khi tạo báo giá

1. Tên file: `YYYY-MM-DD_BG001_DRAFT.xlsx`
2. Lưu vào: `DANG_TIEN_HANH/[KH]/BAO_GIA/`
3. Khi gửi khách: đổi `DRAFT` → `SENT`
4. **Bắt buộc:** Thêm 1 dòng vào `_INDEX_TONG_HOP/INDEX_BAO_GIA_TONG_HOP.csv`

---

## Khi kết thúc dự án

| Kết quả | Hành động |
|---------|-----------|
| Đã ký HĐ, hoàn thành | Di chuyển sang `HOAN_THANH/[năm]/` |
| Không chốt được | Di chuyển sang `KHONG_CHOT/` + tạo `_LY_DO_KHONG_CHOT.md` |

---

## Hỏi AI (Claude) — Upload file nào?

| Muốn hỏi gì | Upload file nào |
|-------------|-----------------|
| Thống kê báo giá tháng X | `INDEX_BAO_GIA_TONG_HOP.csv` |
| Tìm sản phẩm đã báo giá | `INDEX_BAO_GIA_TONG_HOP.csv` |
| Tỷ lệ chốt deal | `THONG_KE_THEO_THANG.csv` |
| Lịch sử 1 khách cụ thể | `_PROFILE_KHACH_HANG.md` + folder `BAO_GIA/` của KH đó |
| Gợi ý giá báo lần sau | `INDEX_BAO_GIA_TONG_HOP.csv` (lọc theo tên sản phẩm) |

---

## Mẫu câu hỏi nhanh cho AI

```
"Đây là file INDEX_BAO_GIA_TONG_HOP.csv của tôi.
Hãy tìm tất cả lần báo giá sản phẩm [TÊN SẢN PHẨM],
liệt kê dạng bảng: khách hàng, ngày, đơn giá, chiết khấu,
kết quả. Gợi ý mức giá hợp lý để báo cho khách mới."
```
