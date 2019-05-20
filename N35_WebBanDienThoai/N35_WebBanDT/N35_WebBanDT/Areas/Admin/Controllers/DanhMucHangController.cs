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
    public class DanhMucHangController : Controller
    {
        // GET: Admin/DanhMucHang
        HangF hf = new HangF();

        public ActionResult DanhSachHang()
        {
            var list = hf.Hangs.ToList();
            return View(list);
        }
        public ActionResult ChiTietHang(string id)
        {
            var model = hf.ChitietHang(id);
            return View(model);
        }
        public ActionResult Them()
        {
            MyDBContext db = new MyDBContext();

            ViewBag.IDHang = new SelectList(db.Hangs, "IDHang", "TenHang");
            return View();
        }
        [HttpPost]
        public ActionResult Them(Hang model)
        {
            HangF hf = new HangF();
            try
            {
                if (hf.InSert(model))
                {
                    return RedirectToAction("DanhSachHang");
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
            var model = hf.ChitietHang(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Sua(Hang model)
        {

            try
            {
                if (hf.Update(model))
                {
                    return RedirectToAction("DanhSachHang");
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
        //    HangF hf = new HangF();
        //    var model = hf.ChitietHang(id);
        //    return View(model);
        //}
        //[HttpPost]
        //public ActionResult Xoa(Hang model)
        //{
        //    HangF hf = new HangF();
        //    try
        //    {
        //        if (hf.Delete(model.IDHang))
        //        {
        //            return RedirectToAction("DanhSachHang");
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
            Hang ncc = db.Hangs.Find(id);
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
            HangF nccf = new HangF();
            try
            {
                if (nccf.Delete(id))
                {
                    return RedirectToAction("DanhSachHang");
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