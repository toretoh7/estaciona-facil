using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class ClientesDiarioController : Controller
    {
        //
        // GET: /ClientesDiario/

        public ActionResult Index()
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbClienteDiario = estacionaFacil.TB_CLIENTES_DIARIOs;

            return View(tbClienteDiario);
        }

        //
        // GET: /ClientesDiario/Details/5

        public ActionResult Details(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbClienteDiario = estacionaFacil.TB_CLIENTES_DIARIOs;

            return View(tbClienteDiario);
        }

        //
        // GET: /ClientesDiario/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /ClientesDiario/Create

        [HttpPost]
        public ActionResult Create(TB_CLIENTES_DIARIO tbClienteDiario)
        {
            CrudEstacionaFacil estacionaFacil = new CrudEstacionaFacil();

            try
            {
                // TODO: Add insert logic here
                if (tbClienteDiario.Nome_Cliente_Diario != null)
                {
                    estacionaFacil.TB_CLIENTES_DIARIOs.InsertOnSubmit(tbClienteDiario);
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
        // GET: /ClientesDiario/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_DIARIO tbClienteDiario = estacionaFacil.TB_CLIENTES_DIARIOs.Where(clienteDiario => clienteDiario.ID_Clientes_Diarios == id).FirstOrDefault();

            return View(tbClienteDiario);
        }

        //
        // POST: /ClientesDiario/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_DIARIO tbClienteDiario = estacionaFacil.TB_CLIENTES_DIARIOs.Where(clienteDiario => clienteDiario.ID_Clientes_Diarios == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbClienteDiario, collection.ToValueProvider());

                estacionaFacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /ClientesDiario/Delete/5
 
        public ActionResult Delete(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_DIARIO tbClienteDiario = estacionaFacil.TB_CLIENTES_DIARIOs.SingleOrDefault(clienteDiario => clienteDiario.ID_Clientes_Diarios == id);

            return View(tbClienteDiario);
        }

        //
        // POST: /ClientesDiario/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_DIARIO tbClienteDiario = estacionaFacil.TB_CLIENTES_DIARIOs.SingleOrDefault(clienteDiario => clienteDiario.ID_Clientes_Diarios == id);

            try
            {
                // TODO: Add delete logic here
                estacionaFacil.TB_CLIENTES_DIARIOs.DeleteOnSubmit(tbClienteDiario);

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
