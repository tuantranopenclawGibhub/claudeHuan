# HỆ THỐNG QUẢN TRỊ DỮ LIỆU KHÁCH HÀNG & DỰ ÁN

> Tài liệu hướng dẫn tái cấu trúc và chuẩn hóa thư mục "KHACH HANG DU AN"  
> Mục tiêu: Khoa học – Dễ truy xuất – Hỗ trợ phân tích báo giá bằng AI

---

## Nội dung tài liệu

| File | Mô tả |
|------|-------|
| `CAU_TRUC_THU_MUC.md` | Sơ đồ cây thư mục tối ưu |
| `QUY_TAC_DAT_TEN.md` | Quy tắc đặt tên file và folder |
| `HUONG_DAN_AI_QUERY.md` | Chuẩn hóa dữ liệu + mẫu truy vấn AI |
| `MAU_BAO_GIA_INDEX.md` | Bảng index báo giá tổng hợp |

---

## Vấn đề thường gặp khi KHÔNG có cấu trúc chuẩn

- Tên file tùy tiện: `bao gia final v3 (1) moi nhat.xlsx` → không biết file nào đúng
- Thư mục lẫn lộn khách hàng cũ/mới, dự án đang chạy/đã đóng
- Không tìm được lịch sử báo giá khi cần báo lại cho khách
- Không thống kê được tỷ lệ chốt, doanh thu theo tháng
- AI không đọc được dữ liệu vì format không nhất quán
- Trùng lặp file, mất dữ liệu khi copy thư mục

---

## Nguyên tắc cốt lõi

1. **Một khách hàng – Một thư mục** (không bao giờ lẫn)
2. **Tên file chứa ngày tháng** theo chuẩn `YYYY-MM-DD`
3. **Trạng thái rõ ràng** trong tên file: `DRAFT`, `SENT`, `APPROVED`, `REJECTED`
4. **File index tổng hợp** ở mỗi cấp thư mục để AI đọc nhanh
5. **Không dùng tiếng Việt có dấu** trong tên file/folder
