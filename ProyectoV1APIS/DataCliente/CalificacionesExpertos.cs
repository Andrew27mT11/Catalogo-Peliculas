//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataCliente
{
    using System;
    using System.Collections.Generic;
    
    public partial class CalificacionesExpertos
    {
        public int PeliculaID { get; set; }
        public int ExpertoID { get; set; }
        public Nullable<decimal> Calificacion { get; set; }
    
        public virtual ExpertosEnCalificaciones ExpertosEnCalificaciones { get; set; }
        public virtual Peliculas Peliculas { get; set; }
    }
}
