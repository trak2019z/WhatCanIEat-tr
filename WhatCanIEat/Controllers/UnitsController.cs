using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WhatCanIEat.Controllers
{
    public class UnitsController : Controller
    {
        // GET: Units
        public ActionResult Index()
        {
            return View();
        }

        // GET: Units/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Units/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Units/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Units/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Units/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Units/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Units/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
