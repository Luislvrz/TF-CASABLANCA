﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class eProducto
    {
        public int CodigoProducto { get; set; }
        public string NombreProducto { get; set; }
        public Decimal Precio { get; set; }
        public string Categoria { get; set; }
        public int Cantidad { get; set; }
        public override string ToString()
        {
            return Convert.ToString(CodigoProducto);
        }
    }
}
