# HƯỚNG DẪN CHUẨN HÓA DỮ LIỆU & TRUY VẤN AI

## 1. Chuẩn hóa dữ liệu để AI đọc được

### File `_PROFILE_KHACH_HANG.md` — Đặt trong mỗi thư mục KH

```markdown
# PROFILE KHÁCH HÀNG

## Thông tin cơ bản
- Mã KH: KH001
- Tên công ty: Công ty TNHH ABC
- Người liên hệ: Nguyễn Văn A
- Chức vụ: Giám đốc
- Điện thoại: 0901234567
- Email: a.nguyen@abc.com
- Địa chỉ: 123 Đường XYZ, Quận 1, TP.HCM
- Ngành nghề: Sản xuất / Thương mại / Dịch vụ

## Lịch sử giao dịch
- Ngày tiếp cận đầu tiên: 2025-03-01
- Số lần báo giá: 3
- Số hợp đồng đã ký: 1
- Tổng giá trị đã ký: 450,000,000 VND
- Trạng thái hiện tại: DANG_TIEN_HANH

## Sản phẩm/Dịch vụ quan tâm
- Hệ thống điều hòa trung tâm
- Tủ điện công nghiệp

## Ghi chú quan trọng
- Khách hay yêu cầu chiết khấu >10%
- Quyết định chậm, cần follow-up sau 7 ngày
- Ưu tiên nhà cung cấp có bảo hành dài hạn
```

---

### File `INDEX_BAO_GIA_TONG_HOP.xlsx` — Cột chuẩn bắt buộc

| Cột | Tên cột | Ý nghĩa |
|-----|---------|---------|
| A | MA_KH | Mã khách hàng |
| B | TEN_KHACH_HANG | Tên đầy đủ |
| C | MA_BAO_GIA | BG001, BG002... |
| D | NGAY_BAO_GIA | YYYY-MM-DD |
| E | NGAY_GUI_KHACH | YYYY-MM-DD |
| F | TEN_SAN_PHAM | Tên sản phẩm/dịch vụ |
| G | SO_LUONG | Số lượng |
| H | DON_VI | Cái, bộ, m2, m... |
| I | DON_GIA | Giá chưa VAT |
| J | CHIET_KHAU_% | % chiết khấu |
| K | THANH_TIEN | Sau chiết khấu, chưa VAT |
| L | TONG_CONG | Tổng báo giá (có VAT) |
| M | TRANG_THAI | DRAFT/SENT/APPROVED/REJECTED |
| N | KET_QUA | CHOT / KHONG_CHOT / DANG_XU_LY |
| O | LY_DO_TU_CHOI | Nếu KHONG_CHOT — ghi rõ lý do |
| P | GHI_CHU | Ghi chú thêm |

---

## 2. Mẫu câu hỏi AI — Thống kê theo tháng

**Cách dùng:** Upload file `INDEX_BAO_GIA_TONG_HOP.xlsx` rồi hỏi:

```
Từ file này, hãy thống kê:
- Tổng số báo giá đã gửi trong tháng 3/2025
- Tổng giá trị báo giá theo từng tháng
- Tháng nào có giá trị báo giá cao nhất?
```

---

## 3. Mẫu câu hỏi AI — So sánh giá giữa các dự án

```
Từ file INDEX_BAO_GIA_TONG_HOP.xlsx:
- So sánh đơn giá sản phẩm "Điều hòa Daikin 2HP" 
  qua các lần báo giá khác nhau
- Đơn giá thay đổi như thế nào theo thời gian?
- Dự án nào có chiết khấu cao nhất?
```

---

## 4. Mẫu câu hỏi AI — Phân tích tỷ lệ chốt deal

```
Từ file INDEX_BAO_GIA_TONG_HOP.xlsx:
- Tính tỷ lệ chốt deal tổng thể (CHOT / tổng báo giá)
- Tỷ lệ chốt theo từng tháng
- Những lý do từ chối phổ biến nhất là gì?
- Sản phẩm nào có tỷ lệ chốt cao nhất?
```

---

## 5. Mẫu câu hỏi AI — Tìm kiếm sản phẩm đã báo giá

```
Từ file INDEX_BAO_GIA_TONG_HOP.xlsx:
- Liệt kê tất cả các lần đã báo giá sản phẩm "Máy bơm CNP"
- Bao gồm: tên khách hàng, ngày báo giá, số lượng, 
  đơn giá, chiết khấu, trạng thái, file nguồn
- Trình bày dạng bảng
- Gợi ý mức giá hợp lý để báo cho khách mới
```

---

## 6. Mẫu câu hỏi AI — Lịch sử khách hàng cụ thể

```
Đây là file PROFILE và các báo giá của khách KH001_CONG_TY_ABC.
Hãy tóm tắt:
- Lịch sử giao dịch
- Các sản phẩm đã báo giá và mức giá từng lần
- Xu hướng đàm phán của khách này
- Gợi ý chiến lược báo giá cho lần tiếp theo
```

---

## 7. Workflow chuẩn khi có khách hàng mới

```
Bước 1: Tạo mã KH mới trong INDEX_KHACH_HANG.xlsx
Bước 2: Tạo thư mục [MA_KH]_[TEN_KH] trong DANG_TIEN_HANH/
Bước 3: Copy _TEMPLATE/TEMPLATE_PROFILE_KHACH_HANG.md → điền thông tin
Bước 4: Tạo báo giá từ template, đặt tên chuẩn YYYY-MM-DD_BG001_DRAFT.xlsx
Bước 5: Khi gửi khách → đổi DRAFT → SENT
Bước 6: Cập nhật 1 dòng vào INDEX_BAO_GIA_TONG_HOP.xlsx
Bước 7: Kết quả → cập nhật KET_QUA + di chuyển thư mục nếu cần
```
