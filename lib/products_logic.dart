import 'dart:io';

// Lista global de productos en memoria
List<Map<String, dynamic>> productos = [];

// CREATE: Agregar nuevo producto
void agregarProducto(String nombre, double precio, int cantidad) {
  productos.add({
    'nombre': nombre,
    'precio': precio,
    'cantidad': cantidad,
  });
  print('\n✅ Producto agregado con éxito.\n');
}

// READ: Listar todos los productos
void listarProductos() {
  if (productos.isEmpty) {
    print('\n⚠️ No hay productos registrados.\n');
    return;
  }
  print('\n--- 📦 Lista de Productos ---');
  for (int i = 0; i < productos.length; i++) {
    print('Índice: $i | Nombre: ${productos[i]['nombre']} | Precio: \$${productos[i]['precio']} | Cantidad: ${productos[i]['cantidad']}');
  }
  print('-----------------------------\n');
}
