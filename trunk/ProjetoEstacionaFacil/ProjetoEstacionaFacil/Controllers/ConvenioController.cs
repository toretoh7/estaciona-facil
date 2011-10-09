using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class ConvenioController : Controller
    {
        //
        // GET: /Convenio/

        public ActionResult Index()
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbConvenio = estacionaFacil.TB_CONVENIOs;

            return View(tbConvenio);
        }

        //
        // GET: /Convenio/Details/5

        public ActionResult Details(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbConvenio = estacionaFacil.TB_CONVENIOs;

            return View(tbConvenio);
        }

        //
        // GET: /Convenio/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Convenio/Create

        [HttpPost]
        public ActionResult Create(TB_CONVENIO tbConvenio)
        {
            CrudEstacionaFacil estacionaFacil = new CrudEstacionaFacil();

            try
            {
                // TODO: Add insert logic here
                if (tbConvenio.ID_Convenio != null)
                {
                    estacionaFacil.TB_CONVENIOs.InsertOnSubmit(tbConvenio);
                    estacionaFacil.SubmitChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Convenio/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONVENIO tbConvenio = estacionaFacil.TB_CONVENIOs.Where(convenio => convenio.ID_Convenio == id).FirstOrDefault();

            return View(tbConvenio);
        }

        //
        // POST: /Convenio/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONVENIO tbConvenio = estacionaFacil.TB_CONVENIOs.Where(convenio => convenio.ID_Convenio == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbConvenio, collection.ToValueProvider());

                estacionaFacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Convenio/Delete/5
 
        public ActionResult Delete(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONVENIO tbConvenio = estacionaFacil.TB_CONVENIOs.SingleOrDefault(convenio => convenio.ID_Convenio == id);

            return View(tbConvenio);
        }

        //
        // POST: /Convenio/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONVENIO tbConvenio = estacionaFacil.TB_CONVENIOs.SingleOrDefault(convenio => convenio.ID_Convenio == id);

            try
            {
                // TODO: Add delete logic here
                estacionaFacil.TB_CONVENIOs.DeleteOnSubmit(tbConvenio);

                estacionaFacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
