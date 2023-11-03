using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SuezBank.Models
{
    public class ContactUs
    {

    
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column(Order = 0)]
        public long Id { get; set; }

        public string CustomerName { get; set; }

        public string CustomerPhone { get; set; }
        public string CustomerEmail { get; set; }
        public string CustomerNationalId { get; set; }
        public int CustomerAge { get; set; }
        public string CustomerMessage { get; set; }

    }
}