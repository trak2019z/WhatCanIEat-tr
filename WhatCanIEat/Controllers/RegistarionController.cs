using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WhatCanIEat.Controllers
{
    public class RegistarionController : Controller
    {
        // GET: Registarion
        public ActionResult Registration()
        {
            return View();
        }

        // GET: Registarion/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Registarion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Registarion/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Registration");
            }
            catch
            {
                return View();
            }
        }

        // GET: Registarion/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Registarion/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Registration");
            }
            catch
            {
                return View();
            }
        }

        // GET: Registarion/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Registarion/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Registration");
            }
            catch
            {
                return View();
            }
        }
    }
}
