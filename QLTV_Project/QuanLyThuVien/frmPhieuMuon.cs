using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BUS;
using DTO;
namespace QuanLyThuVien
{
    public partial class frmPhieuMuon : Form
    {
        PhieuMuon_BUS phieumuon_bus = new PhieuMuon_BUS();
        public frmPhieuMuon()
        {
            InitializeComponent();
            HienThiMaPhieuMuon();
            HienThiMaNhanVien();
        }
        

        public void HienThiMaPhieuMuon()
        {
            lblMaPhieuMuon.Text = phieumuon_bus.LayMaPhieuMuon() + "";
        }

      

        public void HienThiMaNhanVien()
        {
            //Load "m� nh�n vi�n" ??ng nh?p
            //NhanVien nv = (NhanVien)MySessions.Sessions["user"];
            //txtMaNhanVien.Text = nv.MaNhanVien+"";

            
        }

        private void KT_DocGia_Click(object sender, EventArgs e)
        {
            DocGia_BUS docGia_BUS = new DocGia_BUS();
            if (txtMaDocGia.Text == "")
            {
                MessageBox.Show("Nh?p m� ??c gi?!!!");
                txtMaDocGia.Focus();
            }
            else if (docGia_BUS.Kt_DocGia(int.Parse(txtMaDocGia.Text)) == 1)
            {
                MessageBox.Show("C� th? m??n s�ch");
            }
            else if (docGia_BUS.Kt_DocGia(int.Parse(txtMaDocGia.Text)) == 0)
            {
                MessageBox.Show("?�y kh�ng ph?i l� ??c gi?");
            }
            else
            { 
                MessageBox.Show("Kh�ng ???c m??n s�ch nha","C?nh b�o",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                txtMaDocGia.Text = "";
                txtMaDocGia.Focus();
            }
        }

        private void btnChiTietSach_Click(object sender, EventArgs e)
        {
            frmDauSachDuocMuon frm = new frmDauSachDuocMuon();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                string MaDauSach = frm.MaDauSach;
                lblMaDauSach.Text = MaDauSach;
                string MaSach = frm.MaSach;
                lblMaSach.Text = MaSach;
                string TenDauSach = frm.TenDauSach;
                lblTenSach.Text = TenDauSach;
                int ngayThem = frm.NgayTra1;
                dateTra.Value = dateMuon.Value.AddDays(ngayThem);
            }
        }

        private void txtMaDocGia_TextChanged(object sender, EventArgs e)
        {

        }

        //private void dtgvDsSachMuon_KhoiTao()
        //{
        //    if (dgvSachMuon != null)
        //    {
        //        dgvSachMuon.Columns[0].HeaderText = "M� s�ch";
        //        dgvSachMuon.Columns[1].HeaderText = "M� ??u s�ch";
        //        dgvSachMuon.Columns[2].HeaderText = "T�n ??u s�ch";
        //        dgvSachMuon.Columns[3].HeaderText = "Ng�y h?n tr?";
        //    }
        //}

        private void btnThemSach_Click(object sender, EventArgs e)
        {
            dgvSachMuon.Columns[0].HeaderText = "M� s�ch";
            dgvSachMuon.Columns[1].HeaderText = "M� ??u s�ch";
            dgvSachMuon.Columns[2].HeaderText = "T�n ??u s�ch";
            dgvSachMuon.Columns[3].HeaderText = "Ng�y h?n tr?";
            var index = dgvSachMuon.Rows.Add();
            dgvSachMuon.Rows[index].Cells["M� s�ch"].Value = lblMaSach.Text;
            dgvSachMuon.Rows[index].Cells["M� ??u s�ch"].Value = lblMaDauSach.Text;
        }

        private void btnXoaSach_Click(object sender, EventArgs e)
        {

        }

        private void btnLuu_Click(object sender, EventArgs e)
        {

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

    }
}
