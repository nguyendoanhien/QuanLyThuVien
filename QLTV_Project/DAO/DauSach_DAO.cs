﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

using System.Data.SqlClient;
using System.Data;
namespace DAO
{
    public class DauSach_DAO: ConnectDatabase
    {
        public static DataTable LoadDauSach()
        {
            try
            {
                // Ket noi
                string conn = ConnectDatabase.GetConnString();

                // Query string - vì mình để TV_ID là identity (giá trị tự tăng dần) nên ko cần fải insert ID
                string sql = "LoadDauSach";
                SqlParameter[] pars = {};
                SqlDataReader soLuongOK = SqlHelper.ExecuteReader(conn, sql, CommandType.StoredProcedure, pars);
            
                var dataTable = new DataTable();
                dataTable.Load(soLuongOK);
                if (dataTable.Rows.Count > 0) return dataTable;

                // Query và kiểm tra


            }
            catch (Exception e)
            {

            }
            return null;
        }

        public static DataSet LoadComBoDauSach(string tenbang)
        {
            try
            {
                // Ket noi
                string conn = ConnectDatabase.GetConnString();

                // Query string - vì mình để TV_ID là identity (giá trị tự tăng dần) nên ko cần fải insert ID
                string sql = "SELECT * from DauSachLoai ";
                return getdataset(sql, tenbang, _conn);

                // Query và kiểm tra


            }
            catch (Exception e)
            {

            }
            return null;
        }

        public static DataTable TimSach(string mucTim, string tenTim)
        {
            try
            {
                // Ket noi
                string conn = ConnectDatabase.GetConnString();

                // Query string - vì mình để TV_ID là identity (giá trị tự tăng dần) nên ko cần fải insert ID
                string sql = "TimSachDeMuon";
                SqlParameter[] pars = 
                {
                    new SqlParameter ("@mucTim", SqlDbType.NVarChar) {Value = mucTim},
                    new SqlParameter ("@tenTim", SqlDbType.NVarChar) {Value = tenTim},
                };
                SqlDataReader soLuongOK = SqlHelper.ExecuteReader(conn, sql, CommandType.StoredProcedure, pars);

                var dataTable = new DataTable();
                dataTable.Load(soLuongOK);
                if (dataTable.Rows.Count > 0) return dataTable;

                // Query và kiểm tra


            }
            catch (Exception e)
            {

            }
            return null;
        }

        public static DataTable LoadSachMuon(int maDocGia)
        {
            try
            {
                // Ket noi
                string conn = ConnectDatabase.GetConnString();

                // Query string - vì mình để TV_ID là identity (giá trị tự tăng dần) nên ko cần fải insert ID
                string sql = "LoadSachMuon";
                SqlParameter[] pars = 
                    {
                        new SqlParameter ("@maDocGia", SqlDbType.Int) {Value = maDocGia},
                    };
                SqlDataReader soLuongOK = SqlHelper.ExecuteReader(conn, sql, CommandType.StoredProcedure, pars);

                var dataTable = new DataTable();
                dataTable.Load(soLuongOK);
                if (dataTable.Rows.Count > 0) return dataTable;

                // Query và kiểm tra


            }
            catch (Exception e)
            {

            }
            return null;
        }

        public static DataTable LoadDtgvMuon( int maSach, int maDocGia)
        {
            try
            {
                // Ket noi
                string conn = ConnectDatabase.GetConnString();

                // Query string - vì mình để TV_ID là identity (giá trị tự tăng dần) nên ko cần fải insert ID
                string sql = "LoadDtgvMuon";
                SqlParameter[] pars =
                    {
                        new SqlParameter ("@maSach", SqlDbType.Int) {Value = maSach},
                        new SqlParameter ("@maDocGia", SqlDbType.Int) {Value = maDocGia},
                    };
                SqlDataReader soLuongOK = SqlHelper.ExecuteReader(conn, sql, CommandType.StoredProcedure, pars);

                var dataTable = new DataTable();
                dataTable.Load(soLuongOK);
                if (dataTable.Rows.Count > 0) return dataTable;

                // Query và kiểm tra


            }
            catch (Exception e)
            {

            }
            return null;
        }

    }
}



