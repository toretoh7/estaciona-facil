using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetoEstacionaFacil.Models;

namespace ProjetoEstacionaFacil.Controllers
{
    public class ClientesConvenioController : Controller
    {
        //
        // GET: /ClientesConvenio/

        public ActionResult Index()
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbClienteConvenio = estacionaFacil.TB_CLIENTES_CONVENIOs;

            return View(tbClienteConvenio);
        }

        //
        // GET: /ClientesConvenio/Details/5

        public ActionResult Details(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            var tbClienteConvenio = estacionaFacil.TB_CLIENTES_CONVENIOs;

            return View(tbClienteConvenio);
        }

        //
        // GET: /ClientesConvenio/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /ClientesConvenio/Create

        [HttpPost]
        public ActionResult Create(TB_CLIENTES_CONVENIO tbClienteConvenio)
        {
            CrudEstacionaFacil estacionaFacil = new CrudEstacionaFacil();

            try
            {
                // TODO: Add insert logic here
                if (tbClienteConvenio.Nome_Cliente_Convenio != null)
                {
                    estacionaFacil.TB_CLIENTES_CONVENIOs.InsertOnSubmit(tbClienteConvenio);
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
        // GET: /ClientesConvenio/Edit/5
 
        public ActionResult Edit(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_CONVENIO tbClienteConvenio = estacionaFacil.TB_CLIENTES_CONVENIOs.Where(clienteConvenio => clienteConvenio.ID_Cliente_Convenio == id).FirstOrDefault();

            return View(tbClienteConvenio);
        }

        //
        // POST: /ClientesConvenio/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_CONVENIO tbClienteConvenio = estacionaFacil.TB_CLIENTES_CONVENIOs.Where(clienteConvenio => clienteConvenio.ID_Cliente_Convenio == id).FirstOrDefault();

            try
            {
                // TODO: Add update logic here
                UpdateModel(tbClienteConvenio, collection.ToValueProvider());

                estacionaFacil.SubmitChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /ClientesConvenio/Delete/5
 
        public ActionResult Delete(int id)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_CONVENIO tbClienteConvenio = estacionaFacil.TB_CLIENTES_CONVENIOs.SingleOrDefault(clienteConvenio => clienteConvenio.ID_Cliente_Convenio == id);

            return View(tbClienteConvenio);
        }

        //
        // POST: /ClientesConvenio/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var estacionaFacil = new CrudEstacionaFacil();

            TB_CLIENTES_CONVENIO tbClienteConvenio = estacionaFacil.TB_CLIENTES_CONVENIOs.SingleOrDefault(clienteConvenio => clienteConvenio.ID_Cliente_Convenio == id);

            try
            {
                // TODO: Add delete logic here
                estacionaFacil.TB_CLIENTES_CONVENIOs.DeleteOnSubmit(tbClienteConvenio);

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
