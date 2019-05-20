using N35_WebBanDT.Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace N35_WebBanDT.Models.Functions
{
    public class KhachHangF
    {
        private MyDBContext context;
        public KhachHangF()
        {
            context = new MyDBContext();
        }
        public IQueryable<KhachHang> KhachHangs
        {
            get { return context.KhachHangs; }
        }
        public KhachHang ChitietKhachHang(string id)
        {
            KhachHang nv = context.KhachHangs.Find(id);
            return nv;
        }
        public bool InSert(KhachHang model)
        {
            KhachHang dbEntry = context.KhachHangs.Find(model.IDKhachHang);
            if (dbEntry != null)
            {
                return false;
            }
            else
            {
                context.KhachHangs.Add(model);
                context.SaveChanges();
                return true;
            }
        }
        public bool Update(KhachHang model)
        {
            KhachHang dbEntry = context.KhachHangs.Find(model.IDKhachHang);
            if (dbEntry == null)
            {
                return false;
            }
            dbEntry.IDKhachHang = model.IDKhachHang;
            dbEntry.TenKhachHang = model.TenKhachHang;
            dbEntry.GioiTinh_KH = model.GioiTinh_KH;
            dbEntry.SDT_KH = model.SDT_KH;
            dbEntry.DiaChi_KH = model.DiaChi_KH;
            dbEntry.TaiKhoan = model.TaiKhoan;
            context.SaveChanges();
            return true;
        }
        public bool Delete(string MaNV)
        {
            KhachHang dbEntry = context.KhachHangs.Find(MaNV);
            if (dbEntry == null)
            {
                return false;
            }
            context.KhachHangs.Remove(dbEntry);
            context.SaveChanges();
            return true;
        }
    }
}
