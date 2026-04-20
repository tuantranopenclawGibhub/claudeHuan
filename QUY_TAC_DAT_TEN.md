# QUY TẮC ĐẶT TÊN FILE VÀ FOLDER

## Nguyên tắc bắt buộc

- **KHÔNG dùng tiếng Việt có dấu** trong tên file/folder
- **KHÔNG dùng dấu cách** → thay bằng dấu gạch dưới `_`
- **KHÔNG dùng ký tự đặc biệt**: `/ \ : * ? " < > |`
- **LUÔN bắt đầu bằng ngày** theo chuẩn `YYYY-MM-DD` (cho file tài liệu)
- **Tên VIẾT HOA** cho folder, **viết thường gạch ngang** cho phần mô tả trong tên file

---

## Bảng quy tắc đặt tên FOLDER

| Loại | Format | Ví dụ |
|------|--------|-------|
| Thư mục khách hàng | `[MA_KH]_[TEN_KH_VIET_TAT]` | `KH001_CONG_TY_ABC` |
| Thư mục theo năm | `YYYY` | `2025` |
| Thư mục trạng thái | CHỮ HOA, gạch dưới | `DANG_TIEN_HANH` |
| Thư mục nội dung | CHỮ HOA, gạch dưới | `BAO_GIA`, `HOP_DONG` |
| Thư mục đặc biệt (index, template) | Bắt đầu bằng `_` | `_INDEX_TONG_HOP` |

---

## Bảng quy tắc đặt tên FILE

| Loại file | Format | Ví dụ |
|-----------|--------|-------|
| Báo giá | `YYYY-MM-DD_BG[số]_[TRANG_THAI].xlsx` | `2025-04-01_BG003_SENT.xlsx` |
| Hợp đồng | `YYYY-MM-DD_HD[số]_[TRANG_THAI].pdf` | `2025-04-05_HD001_SIGNED.pdf` |
| Phụ lục hợp đồng | `YYYY-MM-DD_PL[số]_HD[số].pdf` | `2025-04-06_PL001_HD001.pdf` |
| Email | `YYYY-MM-DD_EMAIL_[mo-ta-ngan].pdf` | `2025-03-10_EMAIL_yeu-cau-ban-dau.pdf` |
| Zalo/Chat | `YYYY-MM-DD_ZALO_[mo-ta-ngan].png` | `2025-03-18_ZALO_xac-nhan-don-hang.png` |
| Biên bản họp | `YYYY-MM-DD_MEET_[mo-ta-ngan].docx` | `2025-04-02_MEET_thoa-thuan-gia.docx` |
| Hóa đơn | `YYYY-MM-DD_HOA_DON_[số].pdf` | `2025-04-10_HOA_DON_001.pdf` |
| Yêu cầu kỹ thuật | `YYYY-MM-DD_YCKТ_[mo-ta].pdf` | `2025-03-05_YCKT_he-thong-dieu-hoa.pdf` |
| File profile KH | `_PROFILE_KHACH_HANG.md` | (cố định, không đổi) |

---

## Bảng mã TRẠNG THÁI file báo giá

| Mã | Ý nghĩa |
|----|---------|
| `DRAFT` | Bản nháp, chưa gửi khách |
| `SENT` | Đã gửi khách, chờ phản hồi |
| `NEGOTIATING` | Đang thương lượng giá |
| `APPROVED` | Khách đồng ý, chờ ký hợp đồng |
| `REJECTED` | Khách từ chối |
| `EXPIRED` | Hết hạn báo giá |

---

## Bảng mã TRẠNG THÁI file hợp đồng

| Mã | Ý nghĩa |
|----|---------|
| `DRAFT` | Bản nháp hợp đồng |
| `SENT` | Đã gửi khách ký |
| `SIGNED` | Đã ký đủ 2 bên |
| `LIQUIDATED` | Đã thanh lý |

---

## Quy tắc mã khách hàng (MA_KH)

```
Format: KH + 3 chữ số tăng dần
Ví dụ: KH001, KH002, KH003 ...
```

Lưu tại: `_INDEX_TONG_HOP/INDEX_KHACH_HANG.xlsx` — cột A là mã, cột B là tên đầy đủ.

---

## Ví dụ thực tế

**SAI:**
```
bao gia cong ty abc (moi nhat) final v2.xlsx
Hop dong - ABC - da ky.pdf
zalo chup man hinh.png
```

**ĐÚNG:**
```
2025-04-01_BG003_SENT.xlsx
2025-04-05_HD001_SIGNED.pdf
2025-03-18_ZALO_xac-nhan-don-hang.png
```
