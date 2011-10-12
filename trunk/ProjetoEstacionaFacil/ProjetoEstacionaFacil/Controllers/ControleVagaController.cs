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
            var estacionaFacil = new CrudEstacionaFacil();

            var tbControleVaga = estacionaFacil.TB_CONTROLE_VAGAs;

            return View(tbControleVaga);
        }

        //
        // GET: /ControleVaga/Details/5

        public ActionResult Details(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbControleVaga = estacionaFacil.TB_CONTROLE_VAGAs;

            return View(tbControleVaga);
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
        public ActionResult Create(TB_CONTROLE_VAGA tbControleVaga)
        {
            CrudEstacionaFacil estacionaFacil = new CrudEstacionaFacil();

            try
            {
                // TODO: Add insert logic here
                if (tbControleVaga.Vaga != null)
                {
                    estacionaFacil.TB_CONTROLE_VAGAs.InsertOnSubmit(tbControleVaga);
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
        // GET: /ControleVaga/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONTROLE_VAGA tbControleVaga = estacionaFacil.TB_CONTROLE_VAGAs.Where(controleVaga => controleVaga.ID_Vagas == id).FirstOrDefault();

            return View(tbControleVaga);
        }

        //
        // POST: /ControleVaga/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONTROLE_VAGA tbControleVaga = estacionaFacil.TB_CONTROLE_VAGAs.Where(controleVaga => controleVaga.ID_Vagas == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbControleVaga, collection.ToValueProvider());

                estacionaFacil.SubmitChanges();
 
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
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONTROLE_VAGA tbControleVaga = estacionaFacil.TB_CONTROLE_VAGAs.SingleOrDefault(controleVaga => controleVaga.ID_Vagas == id);

            return View(tbControleVaga);
        }

        //
        // POST: /ControleVaga/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CONTROLE_VAGA tbControleVaga = estacionaFacil.TB_CONTROLE_VAGAs.SingleOrDefault(controleVaga => controleVaga.ID_Vagas == id);

            try
            {
                // TODO: Add delete logic here
                estacionaFacil.TB_CONTROLE_VAGAs.DeleteOnSubmit(tbControleVaga);

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
