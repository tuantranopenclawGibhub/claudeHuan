# CẤU TRÚC THƯ MỤC TỐI ƯU — KHACH HANG DU AN

## Sơ đồ cây thư mục

```
KHACH_HANG_DU_AN/
│
├── _INDEX_TONG_HOP/                        # Thư mục tổng hợp toàn hệ thống
│   ├── INDEX_KHACH_HANG.xlsx               # Danh sách tất cả khách hàng
│   ├── INDEX_BAO_GIA_TONG_HOP.xlsx         # Tất cả báo giá (mọi khách)
│   ├── THONG_KE_THEO_THANG.xlsx            # Thống kê doanh thu/chốt deal theo tháng
│   └── TY_LE_CHOT_DEAL.xlsx                # Phân tích tỷ lệ chốt
│
├── DANG_TIEN_HANH/                         # Dự án đang chạy
│   │
│   ├── [MA_KH]_[TEN_KHACH_HANG]/
│   │   ├── _PROFILE_KHACH_HANG.md          # Thông tin tổng quan khách hàng
│   │   ├── BAO_GIA/
│   │   │   ├── 2025-03-15_BG001_DRAFT.xlsx
│   │   │   ├── 2025-03-20_BG001_SENT.xlsx
│   │   │   └── 2025-04-01_BG002_APPROVED.xlsx
│   │   ├── HOP_DONG/
│   │   │   ├── 2025-04-05_HD001_SIGNED.pdf
│   │   │   └── 2025-04-05_PHAN_LUC_HD001.pdf
│   │   ├── TRAO_DOI/
│   │   │   ├── 2025-03-10_EMAIL_yeu-cau-ban-dau.pdf
│   │   │   ├── 2025-03-18_ZALO_xac-nhan-bao-gia.png
│   │   │   └── 2025-04-02_MEET_bien-ban-cuoc-hop.docx
│   │   ├── KY_THUAT/
│   │   │   ├── YEU_CAU_KY_THUAT.pdf
│   │   │   └── BAN_VE_THIET_KE.dwg
│   │   └── THANH_TOAN/
│   │       ├── 2025-04-10_HOA_DON_001.pdf
│   │       └── 2025-04-10_BIEN_LAI_TT_001.pdf
│   │
│   └── [MA_KH]_[TEN_KHACH_HANG]/           # Khách hàng tiếp theo...
│
├── HOAN_THANH/                             # Dự án đã xong, đã thanh toán đủ
│   ├── 2024/
│   │   └── [MA_KH]_[TEN_KHACH_HANG]/
│   └── 2025/
│       └── [MA_KH]_[TEN_KHACH_HANG]/
│
├── KHONG_CHOT/                             # Báo giá nhưng không thành deal
│   ├── [MA_KH]_[TEN_KHACH_HANG]/
│   │   ├── _LY_DO_KHONG_CHOT.md            # Ghi rõ lý do để phân tích sau
│   │   └── BAO_GIA/
│   └── ...
│
└── _TEMPLATE/                              # Mẫu dùng chung
    ├── TEMPLATE_BAO_GIA.xlsx
    ├── TEMPLATE_HOP_DONG.docx
    ├── TEMPLATE_PROFILE_KHACH_HANG.md
    └── TEMPLATE_LY_DO_KHONG_CHOT.md
```

---

## Giải thích từng tầng

### Tầng 1 — Trạng thái dự án
| Thư mục | Ý nghĩa |
|---------|---------|
| `DANG_TIEN_HANH/` | Đang báo giá, đang triển khai |
| `HOAN_THANH/` | Dự án xong, lưu trữ theo năm |
| `KHONG_CHOT/` | Đã báo giá nhưng không ký hợp đồng |
| `_INDEX_TONG_HOP/` | File thống kê, AI đọc ở đây trước |
| `_TEMPLATE/` | Mẫu chuẩn, không chỉnh sửa trực tiếp |

### Tầng 2 — Thư mục khách hàng
- Format: `[MA_KH]_[TEN_KHACH_HANG]`
- Ví dụ: `KH001_CONG_TY_ABC`, `KH002_ANH_NGUYEN_VAN_A`

### Tầng 3 — Phân loại tài liệu trong mỗi khách hàng
| Thư mục | Chứa gì |
|---------|---------|
| `BAO_GIA/` | Tất cả phiên bản báo giá |
| `HOP_DONG/` | Hợp đồng, phụ lục |
| `TRAO_DOI/` | Email, Zalo, biên bản họp |
| `KY_THUAT/` | Yêu cầu kỹ thuật, bản vẽ |
| `THANH_TOAN/` | Hóa đơn, biên lai |

---

## Quy trình di chuyển thư mục theo tiến độ

```
Mới tiếp cận → DANG_TIEN_HANH/
     │
     ├─ Ký hợp đồng, hoàn thành → HOAN_THANH/[năm]/
     │
     └─ Không chốt được → KHONG_CHOT/
```
