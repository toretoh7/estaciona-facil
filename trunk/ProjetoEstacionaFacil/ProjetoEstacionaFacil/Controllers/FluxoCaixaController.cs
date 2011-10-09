using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class FluxoCaixaController : Controller
    {
        //
        // GET: /FluxoCaixa/

        public ActionResult Index()
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbFluxoCaixa = estacionaFacil.TB_FLUXO_CAIXAs;

            return View(tbFluxoCaixa);
        }

        //
        // GET: /FluxoCaixa/Details/5

        public ActionResult Details(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbFluxoCaixa = estacionaFacil.TB_FLUXO_CAIXAs;

            return View(tbFluxoCaixa);
        }

        //
        // GET: /FluxoCaixa/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /FluxoCaixa/Create

        [HttpPost]
        public ActionResult Create(TB_FLUXO_CAIXA tbFluxoCaixa)
        {
            CrudEstacionaFacil estacionaFacil = new CrudEstacionaFacil();

            try
            {
                // TODO: Add insert logic here
                    estacionaFacil.TB_FLUXO_CAIXAs.InsertOnSubmit(tbFluxoCaixa);
                    estacionaFacil.SubmitChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /FluxoCaixa/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_FLUXO_CAIXA tbFluxoCaixa = estacionaFacil.TB_FLUXO_CAIXAs.Where(fluxocaixa => fluxocaixa.ID_Fluxo_Caixa == id).FirstOrDefault();

            return View(tbFluxoCaixa);
        }

        //
        // POST: /FluxoCaixa/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_FLUXO_CAIXA tbFluxoCaixa = estacionaFacil.TB_FLUXO_CAIXAs.Where(fluxocaixa => fluxocaixa.ID_Fluxo_Caixa == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbFluxoCaixa, collection.ToValueProvider());

                estacionaFacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /FluxoCaixa/Delete/5
 
        public ActionResult Delete(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_FLUXO_CAIXA tbFluxoCaixa = estacionaFacil.TB_FLUXO_CAIXAs.SingleOrDefault(fluxocaixa => fluxocaixa.ID_Fluxo_Caixa == id);

            return View(tbFluxoCaixa);
        }

        //
        // POST: /FluxoCaixa/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_FLUXO_CAIXA tbFluxoCaixa = estacionaFacil.TB_FLUXO_CAIXAs.SingleOrDefault(fluxocaixa => fluxocaixa.ID_Fluxo_Caixa == id);

            try
            {
                // TODO: Add delete logic here
                estacionaFacil.TB_FLUXO_CAIXAs.DeleteOnSubmit(tbFluxoCaixa);

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
