using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using N35_WebBanDT.Models.Entities;
using N35_WebBanDT.Models.Functions;
using System.Net;

namespace N35_WebBanDT.Areas.Admin.Controllers
{
    public class NhanVienController : Controller
    {
        NhanVienF nvf = new NhanVienF();
        // GET: Admin/NhanVien
        public ActionResult DanhSachNhanVien()
        {
            var list = nvf.NhanViens.ToList();
            return View(list);
        }
        public ActionResult ChiTietNhanVien(string id)
        {
            var model = nvf.ChitietNhanVien(id);
            return View(model);
        }
        public ActionResult Them()
        {
            MyDBContext db = new MyDBContext();
            ViewBag.IDNhanVien = new SelectList(db.NhanViens, "IDNhanVien", "TenNhanVien", "GioiTinh_NV", "ChucVu", "SDT_NV");
            ViewBag.TaiKhoan = new SelectList(db.NguoiDungs, "TaiKhoan");
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
                    return RedirectToAction("DanhSachNhanVien ");
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
            var model = nvf.ChitietNhanVien(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Sua(NhanVien model)
        {

            try
            {
                if (nvf.Update(model))
                {
                    return RedirectToAction("DanhSachNhanVien");
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
        //public ActionResult Xoa(string id)
        //{
        //    MyDBContext db = new MyDBContext();
        //   NhanVienF nvf = new NhanVienF();
        //    NhanVien model = nvf.ChitietNhanVien(id);
        //    return View(model);
        //}
        //[HttpPost]
        //public ActionResult Xoa(NhanVien model)
        //{
        //   NhanVienF nvf = new NhanVienF();
        //    try
        //    {
        //        if (nvf.Delete(model.IDNhanVien))
        //        {
        //            return RedirectToAction("DanhSachNhanVien");
        //        }
        //        else
        //        {
        //            return View();
        //        }
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}

        public ActionResult Xoa(string id)
        {
            MyDBContext db = new MyDBContext();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NhanVien ncc = db.NhanViens.Find(id);
            if (ncc == null)
            {
                return HttpNotFound();
            }
            return View(ncc);
        }
        [HttpPost, ActionName("Xoa")]
        [ValidateAntiForgeryToken]
        public ActionResult XoaConfirmed(string id)
        {
            NhanVienF nccf = new NhanVienF();
            try
            {
                if (nccf.Delete(id))
                {
                    return RedirectToAction("DanhSachNhanVien");
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