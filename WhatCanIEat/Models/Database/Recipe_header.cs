//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WhatCanIEat.Models.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class Recipe_header
    {
        public Recipe_header()
        {
            this.Recipe_components = new HashSet<Recipe_components>();
            this.Comments = new HashSet<Comments>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Quantity_of_portions { get; set; }
        public string Prepare_time { get; set; }
        public string Description_of_prepare { get; set; }
        public int Id_Categories { get; set; }
        public int Create_by { get; set; }
    
        public virtual ICollection<Recipe_components> Recipe_components { get; set; }
        public virtual Categories Categories { get; set; }
        public virtual Users Users { get; set; }
        public virtual ICollection<Comments> Comments { get; set; }
    }
}
