using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class FluxoEntradaSaidaController : Controller
    {
        //
        // GET: /FluxoEntradaSaida/

        public ActionResult Index()
        {
            var estacionafacil = new CrudEstacionaFacil();

            var tbFluxoEntradaSaida = estacionafacil.TB_FLUXO_ENTRADA_SAIDAs;

            return View(tbFluxoEntradaSaida);
        }

        //
        // GET: /FluxoEntradaSaida/Details/5

        public ActionResult Details(int id)
        {
            var estacionafacil = new CrudEstacionaFacil();

            var tbFluxoEntradaSaida = estacionafacil.TB_FLUXO_ENTRADA_SAIDAs;

            return View(tbFluxoEntradaSaida);
        }

        //
        // GET: /FluxoEntradaSaida/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /FluxoEntradaSaida/Create

        [HttpPost]
        public ActionResult Create(TB_FLUXO_ENTRADA_SAIDA tbFluxoEntradaSaida)
        {
            CrudEstacionaFacil estacionafacil = new CrudEstacionaFacil();

            try
            {
                // TODO: Add insert logic here
                if ((tbFluxoEntradaSaida.Hora_Entrada != null) && (tbFluxoEntradaSaida.Hora_Saida != null))
                {
                    estacionafacil.TB_FLUXO_ENTRADA_SAIDAs.InsertOnSubmit(tbFluxoEntradaSaida);
                    estacionafacil.SubmitChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /FluxoEntradaSaida/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionafacil = new CrudEstacionaFacil();

            TB_FLUXO_ENTRADA_SAIDA tbFluxoEntradaSaida = estacionafacil.TB_FLUXO_ENTRADA_SAIDAs.Where(fluxo_e_s => fluxo_e_s.ID_Fluxo_E_S == id).FirstOrDefault();

            return View(tbFluxoEntradaSaida);
        }

        //
        // POST: /FluxoEntradaSaida/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionafacil = new CrudEstacionaFacil();

            TB_FLUXO_ENTRADA_SAIDA tbFluxoEntradaSaida = estacionafacil.TB_FLUXO_ENTRADA_SAIDAs.Where(fluxo_e_s => fluxo_e_s.ID_Fluxo_E_S == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbFluxoEntradaSaida, collection.ToValueProvider());

                estacionafacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /FluxoEntradaSaida/Delete/5
 
        public ActionResult Delete(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_FLUXO_ENTRADA_SAIDA tbFluxoEntradasaida = estacionaFacil.TB_FLUXO_ENTRADA_SAIDAs.SingleOrDefault(fluxo_e_s => fluxo_e_s.ID_Fluxo_E_S == id);

            return View(tbFluxoEntradasaida);
        }

        //
        // POST: /FluxoEntradaSaida/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_FLUXO_ENTRADA_SAIDA tbFluxoEntradasaida = estacionaFacil.TB_FLUXO_ENTRADA_SAIDAs.SingleOrDefault(fluxo_e_s => fluxo_e_s.ID_Fluxo_E_S == id);

            try
            {
                // TODO: Add delete logic here
                estacionaFacil.TB_FLUXO_ENTRADA_SAIDAs.DeleteOnSubmit(tbFluxoEntradasaida);

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
