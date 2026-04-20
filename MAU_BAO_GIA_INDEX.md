# MẪU BẢNG INDEX BÁO GIÁ TỔNG HỢP

> Đây là mẫu trình bày dữ liệu báo giá dạng bảng — dùng để tra cứu nhanh  
> và cung cấp cho AI phân tích lần báo giá tiếp theo.

---

## Bảng 1: Index báo giá theo sản phẩm (ví dụ: Máy bơm CNP)

| # | Mã KH | Tên Khách Hàng | Mã BG | Ngày BG | Sản Phẩm | Model | SL | ĐVT | Đơn Giá (VND) | CK% | Thành Tiền | Trạng Thái | Kết Quả | File Nguồn |
|---|-------|----------------|-------|---------|-----------|-------|-----|-----|---------------|-----|------------|------------|---------|------------|
| 1 | KH003 | Cty TNHH DEF | BG001 | 2025-01-10 | Máy bơm CNP | CDL2-20 | 2 | Cái | 4,500,000 | 5% | 8,550,000 | APPROVED | CHOT | `KH003_CONG_TY_DEF/BAO_GIA/2025-01-10_BG001_APPROVED.xlsx` |
| 2 | KH007 | Anh Trần B | BG002 | 2025-02-15 | Máy bơm CNP | CDL2-20 | 1 | Cái | 4,700,000 | 0% | 4,700,000 | REJECTED | KHONG_CHOT | `KH007_ANH_TRAN_B/BAO_GIA/2025-02-15_BG002_REJECTED.xlsx` |
| 3 | KH012 | Cty CP GHI | BG001 | 2025-03-20 | Máy bơm CNP | CDL4-30 | 4 | Cái | 6,200,000 | 8% | 22,816,000 | SENT | DANG_XU_LY | `KH012_CONG_TY_GHI/BAO_GIA/2025-03-20_BG001_SENT.xlsx` |
| 4 | KH001 | Cty TNHH ABC | BG003 | 2025-04-01 | Máy bơm CNP | CDL2-20 | 3 | Cái | 4,550,000 | 7% | 12,694,500 | APPROVED | CHOT | `KH001_CONG_TY_ABC/BAO_GIA/2025-04-01_BG003_APPROVED.xlsx` |

---

## Bảng 2: Phân tích giá theo sản phẩm

| Model | Số lần báo | Giá thấp nhất | Giá cao nhất | Giá trung bình | CK% TB | Tỷ lệ chốt |
|-------|-----------|---------------|--------------|----------------|--------|------------|
| CNP CDL2-20 | 3 | 4,500,000 | 4,700,000 | 4,583,333 | 4% | 67% |
| CNP CDL4-30 | 1 | 6,200,000 | 6,200,000 | 6,200,000 | 8% | Đang xử lý |

---

## Bảng 3: Thống kê báo giá theo tháng

| Tháng | Số BG gửi | Tổng giá trị BG | Số CHOT | Tỷ lệ chốt | Giá trị chốt |
|-------|-----------|-----------------|---------|------------|--------------|
| 2025-01 | 5 | 380,000,000 | 3 | 60% | 210,000,000 |
| 2025-02 | 7 | 520,000,000 | 4 | 57% | 290,000,000 |
| 2025-03 | 6 | 445,000,000 | 2 | 33% | 145,000,000 |
| 2025-04 | 4 | 310,000,000 | 3 | 75% | 240,000,000 |

---

## Bảng 4: Lý do từ chối (để cải thiện chiến lược)

| Lý do | Số lần | Tỷ lệ |
|-------|--------|-------|
| Giá cao hơn đối thủ | 8 | 40% |
| Khách chưa có ngân sách | 5 | 25% |
| Chọn nhà cung cấp khác | 4 | 20% |
| Dự án bị hoãn | 3 | 15% |

---

## Gợi ý giá cho lần báo tiếp (AI tự động tính)

> Khi upload bảng trên cho AI và hỏi:  
> *"Tôi cần báo giá CNP CDL2-20 cho khách KH007 lần 2, gợi ý mức giá?"*

AI sẽ phân tích:
- Lần 1 báo 4,700,000 → bị từ chối (giá cao)
- Mức chốt được thực tế: 4,500,000 – 4,550,000
- Gợi ý: báo **4,500,000 + CK 5%** hoặc **4,300,000 không CK**
- Cần thêm: ưu điểm dịch vụ, bảo hành để cạnh tranh phi giá

---

## Hướng dẫn sử dụng bảng này với AI

```
1. Lưu bảng INDEX_BAO_GIA_TONG_HOP dưới dạng .xlsx hoặc .csv
2. Upload lên Claude (claude.ai) hoặc dán nội dung trực tiếp
3. Hỏi cụ thể:
   - "Tìm tất cả báo giá có sản phẩm [tên sản phẩm]"
   - "Đơn giá trung bình của [sản phẩm] là bao nhiêu?"
   - "Gợi ý mức giá để báo cho [tên khách] dựa trên lịch sử"
   - "Tháng nào tôi chốt được nhiều deal nhất?"
```
