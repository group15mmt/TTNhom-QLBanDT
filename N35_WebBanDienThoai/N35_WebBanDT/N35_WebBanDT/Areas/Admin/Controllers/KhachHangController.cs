using N35_WebBanDT.Models.Entities;
using N35_WebBanDT.Models.Functions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace N35_WebBanDT.Areas.Admin.Controllers
{
    public class KhachHangController : Controller
    {
        KhachHangF khf = new KhachHangF();
        // GET: Admin/NhanVien
        public ActionResult DanhSachKhachHang()
        {
            var list = khf.KhachHangs.ToList();
            return View(list);
        }
        public ActionResult ChiTietKhachHang(string id)
        {
            var model = khf.ChitietKhachHang(id);
            return View(model);
        }

        public ActionResult Them()
        {
            MyDBContext db = new MyDBContext();
            //ViewBag.IDKhachHang = new SelectList(db.KhachHangs, "IDKhachHang", "TenKhachHang", "GioiTinh_KH", "SDT_NV","DiaChi_KH");
            ViewBag.IDND = new SelectList(db.NguoiDungs, "TaiKhoan", "MatKhau");
            return View();
        }
        [HttpPost]
        public ActionResult Them(NhanVien model)
        {
            NhanVienF nvf = new NhanVienF();
            try
            {
                if (nvf.InSert(model))
                {
                    return RedirectToAction("DanhSachKhachHang ");
                }
                else
                {
                    return View();
                }
            }
            catch
            {
                return View();
            }
        }
        public ActionResult Xoa(string id)
        {

            MyDBContext db = new MyDBContext();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KhachHang sp = db.KhachHangs.Find(id);
            if (sp == null)
            {
                return HttpNotFound();
            }
            return View(sp);
        }
        [HttpPost, ActionName("Xoa")]
        [ValidateAntiForgeryToken]
        public ActionResult XoaConfirmed(string id)
        {
            KhachHangF spf = new KhachHangF();
            try
            {
                if (spf.Delete(id))
                {
                    return RedirectToAction("DanhSachKhachHang");
                }
                else
                {
                    return View();
                }
            }
            catch
            {
                return View();
            }
        }
        public ActionResult Sua(string id)
        {
            MyDBContext db = new MyDBContext();
            var model = khf.ChitietKhachHang(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Sua(KhachHang model)
        {

            try
            {
                if (khf.Update(model))
                {
                    return RedirectToAction("DanhSachKhachHang");
                }
                else
                {
                    return View();
                }
            }
            catch
            {
                return View();
            }
        }
    }
}

