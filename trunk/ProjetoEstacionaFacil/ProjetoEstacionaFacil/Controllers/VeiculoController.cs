using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class VeiculoController : Controller
    {
        //
        // GET: /Veiculo/

        public ActionResult Index()
        {
            var estacionafacil = new CrudEstacionaFacil();

            var tbVeiculo = estacionafacil.TB_VEICULOs;

            return View(tbVeiculo);
        }

        //
        // GET: /Veiculo/Details/5

        public ActionResult Details(int id)
        {
            var estacionafacil = new CrudEstacionaFacil();

            var tbVeiculo = estacionafacil.TB_VEICULOs;

            return View(tbVeiculo);
        }

        //
        // GET: /Veiculo/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Veiculo/Create

        [HttpPost]
        public ActionResult Create(TB_VEICULO tbVeiculo)
        {
            CrudEstacionaFacil estacionafacil = new CrudEstacionaFacil();

            try
            {
                if(tbVeiculo.Placa_Veiculo != null)
                {
                    estacionafacil.TB_VEICULOs.InsertOnSubmit(tbVeiculo);
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
        // GET: /Veiculo/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionafacil = new CrudEstacionaFacil();

            TB_VEICULO tbVeiculo = estacionafacil.TB_VEICULOs.Where(veiculo => veiculo.ID_Veiculo == id).FirstOrDefault();

            return View(tbVeiculo);
        }

        //
        // POST: /Veiculo/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionafacil = new CrudEstacionaFacil();

            TB_VEICULO tbVeiculo = estacionafacil.TB_VEICULOs.Where(veiculo => veiculo.ID_Veiculo == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbVeiculo, collection.ToValueProvider());

                estacionafacil.SubmitChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Veiculo/Delete/5
 
        public ActionResult Delete(int id)
        {
            var estacionafacil = new CrudEstacionaFacil();

            TB_VEICULO tbVeiculo = estacionafacil.TB_VEICULOs.SingleOrDefault(veiculo => veiculo.ID_Veiculo == id);

            return View(tbVeiculo);
        }

        //
        // POST: /Veiculo/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionafacil = new CrudEstacionaFacil();

            TB_VEICULO tbVeiculo = estacionafacil.TB_VEICULOs.SingleOrDefault(veiculo => veiculo.ID_Veiculo == id);

            try
            {
                // TODO: Add delete logic here
                estacionafacil.TB_VEICULOs.DeleteOnSubmit(tbVeiculo);

                estacionafacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
