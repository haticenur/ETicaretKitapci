using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Client.Models
{
    public class ProductDTO
    {
        public int Id { get; set; }

        public byte Quantity { get; set; }

        public decimal Price { get; set; }

        public string Name { get; set; }

        public string Image { get; set; }

        public bool ?IsActive { get; set; }

    }
}