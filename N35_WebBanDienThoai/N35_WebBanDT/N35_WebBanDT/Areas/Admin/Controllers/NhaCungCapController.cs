using N35_WebBanDT.Models.Entities;
using N35_WebBanDT.Models.Functions;
using N35_WebBanDT.Models.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace N35_WebBanDT.Areas.Admin.Controllers
{
    [CustomAuthorize(Roles = "Admin")]
    public class NhaCungCapController : Controller
    {
        // GET: Admin/NhaCC
        NhaCungCapF nccf = new NhaCungCapF();
        
        public ActionResult DanhSachNhaCungCap()
        {
            var list = nccf.NhaCungCaps.ToList();
            return View(list);
        }
        public ActionResult ChiTietNhaCungCap(string id)
        {
            var model = nccf.ChitietNhaCungCap(id);
            return View(model);
        }
        public ActionResult Them()
        {
            MyDBContext db = new MyDBContext();

            ViewBag.IDNCC = new SelectList(db.NhaCungCaps, "IDNCC", "TenNCC");
            return View();
        }
        [HttpPost]
        public ActionResult Them(NhaCungCap model)
        {
            NhaCungCapF spf = new NhaCungCapF();
            try
            {
                if (spf.InSert(model))
                {
                    return RedirectToAction("DanhSachNhaCungCap");
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
            var model = nccf.ChitietNhaCungCap(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Sua(NhaCungCap model)
        {

            try
            {
                if (nccf.Update(model))
                {
                    return RedirectToAction("DanhSachNhaCungCap");
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
            NhaCungCap ncc = db.NhaCungCaps.Find(id);
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
            NhaCungCapF nccf = new NhaCungCapF();
            try
            {
                if (nccf.Delete(id))
                {
                    return RedirectToAction("DanhSachNhaCungCap");
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