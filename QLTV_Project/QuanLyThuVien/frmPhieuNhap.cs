﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien
{
    public partial class frmPhieuNhap : Form
    {
        public frmPhieuNhap()
        {
            
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();

        }
        private void btnDSNCC_Click(object sender, EventArgs e)
        {
            frmPhieuNhap frmNhap = new frmPhieuNhap();
            if(frmNhap.ShowDialog() == DialogResult.OK )
            {
               
            }

        }


    }
}
