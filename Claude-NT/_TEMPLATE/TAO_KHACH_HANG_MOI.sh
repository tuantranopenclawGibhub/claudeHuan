#!/bin/bash
echo "============================================"
echo "  TAO THU MUC KHACH HANG MOI - Claude-NT"
echo "============================================"
echo ""

read -p "Nhap ma KH (vd: KH002): " MA_KH
read -p "Nhap ten khach hang (khong dau, gach duoi, vd: CONG_TY_XYZ): " TEN_KH

FOLDER_NAME="${MA_KH}_${TEN_KH}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE_PATH="${SCRIPT_DIR}/../DANG_TIEN_HANH/${FOLDER_NAME}"

echo ""
echo "Dang tao thu muc: ${FOLDER_NAME}"

mkdir -p "${BASE_PATH}"/{BAO_GIA,HOP_DONG,TRAO_DOI,KY_THUAT,THANH_TOAN}
cp "${SCRIPT_DIR}/_PROFILE_KHACH_HANG.md" "${BASE_PATH}/_PROFILE_KHACH_HANG.md"

echo ""
echo "[OK] Da tao xong thu muc: DANG_TIEN_HANH/${FOLDER_NAME}"
echo "[OK] Da copy file PROFILE mau vao thu muc"
echo ""
echo "Buoc tiep theo:"
echo "  1. Mo file _PROFILE_KHACH_HANG.md va dien thong tin"
echo "  2. Them 1 dong vao _INDEX_TONG_HOP/INDEX_KHACH_HANG.csv"
