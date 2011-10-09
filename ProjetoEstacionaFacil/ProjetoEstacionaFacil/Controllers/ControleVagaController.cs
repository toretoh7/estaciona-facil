using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class ControleVagaController : Controller
    {
        //
        // GET: /ControleVaga/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /ControleVaga/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ControleVaga/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /ControleVaga/Create

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
        
        //
        // GET: /ControleVaga/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /ControleVaga/Edit/5

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

        //
        // GET: /ControleVaga/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /ControleVaga/Delete/5

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
