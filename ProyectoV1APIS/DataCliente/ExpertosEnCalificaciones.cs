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
    
    public partial class ExpertosEnCalificaciones
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ExpertosEnCalificaciones()
        {
            this.CalificacionesExpertos = new HashSet<CalificacionesExpertos>();
        }
    
        public int ExpertoID { get; set; }
        public string Nombre { get; set; }
        public string codigoexperto { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CalificacionesExpertos> CalificacionesExpertos { get; set; }
    }
}