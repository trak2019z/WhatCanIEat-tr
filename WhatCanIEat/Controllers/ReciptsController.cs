using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WhatCanIEat.Controllers
{
    public class ReciptsController : Controller
    {
        // GET: Recipts
        public ActionResult Index()
        {
            return View();
        }

        // GET: Recipts/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Recipts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Recipts/Create
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

        // GET: Recipts/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Recipts/Edit/5
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

        // GET: Recipts/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Recipts/Delete/5
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
