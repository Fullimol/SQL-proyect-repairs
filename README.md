# Sistema de Gestión de Inventarios y Pedidos de Repuestos

## **Alcance del Proyecto**
El objetivo principal del proyecto es desarrollar un sistema de gestión para una empresa dedicada a la reparación de celulares y la venta de repuestos. Este sistema permitirá gestionar eficientemente el inventario, realizar pedidos a proveedores, registrar ventas, y mantener un control detallado de entradas y salidas de repuestos, devoluciones y auditorías de inventario.

---

## **Funcionalidades Incluidas**

### Gestión de Catálogo de Repuestos
- Registro y mantenimiento de repuestos, con detalles como referencia, modelo, categoría, descripción, precio y precio de venta sugerido.

### Gestión de Inventario
- Control de stock de repuestos, incluyendo la cantidad disponible y su ubicación en el almacén.
- Registro de entradas de repuestos provenientes de compras a proveedores y actualizaciones del inventario tras ventas o movimientos.

### Gestión de Proveedores
- Registro de proveedores con sus datos de contacto y dirección.
- Creación y mantenimiento de órdenes de compra a proveedores para la reposición de inventarios.

### Gestión de Pedidos
- Registro de pedidos realizados por los clientes para la compra de repuestos, con detalles sobre cantidad, fecha de pedido y fecha de entrega esperada.
- Gestión de los detalles de cada pedido, asociando repuestos y cantidades solicitadas.

### Gestión de Ventas
- Registro de ventas de repuestos a clientes, con la entrega de productos desde el inventario y la actualización de cantidades disponibles.

### Devoluciones de Repuestos
- Registro y seguimiento de devoluciones de repuestos tanto a proveedores como desde clientes, incluyendo motivo de la devolución y estado del proceso.

### Auditoría de Inventario
- Registro de auditorías de inventario para comparar las cantidades físicas de repuestos con las cantidades virtuales almacenadas en el sistema, detectando posibles discrepancias.

### Gestión de Empleados
- Registro de empleados que interactúan con el sistema (almacén, ventas, administración), con su información básica, puesto y sector.

### Gestión de Clientes
- Registro de clientes con datos de contacto, tipo de cliente y dirección, así como la gestión de sus pedidos y ventas.

### Seguridad y Autenticación
- Implementación de un sistema de autenticación de usuarios con diferentes roles (empleados, administración) para proteger los datos sensibles y permitir accesos diferenciados.

---

## **Límites del Proyecto**
- El sistema estará limitado a la gestión interna de inventarios, pedidos y proveedores, sin integrar funcionalidades de comercio electrónico, ventas en línea o logística avanzada.
- El sistema será implementado para una empresa de tamaño medio, enfocándose en una solución eficiente y funcional dentro de un entorno controlado.

---

## **Requerimientos**

### 1. Registrar un Catálogo de Repuestos
El sistema debe permitir la creación y gestión de un catálogo de repuestos, en el que se registren, actualicen y eliminen repuestos disponibles en la empresa. Cada repuesto debe contar con una referencia única, modelo, categoría, descripción, precio de adquisición y precio de venta sugerido.

### 2. Actualizar el Inventario de Repuestos
El sistema debe ser capaz de actualizar el inventario de repuestos, registrando las cantidades disponibles de cada repuesto, su ubicación dentro del almacén y asociándolo con el catálogo de repuestos.

### 3. Gestionar la Información de los Empleados
El sistema debe permitir el registro, actualización y eliminación de los datos de los empleados que trabajan en el área de almacén, incluyendo su nombre, puesto, sector, correo electrónico y usuario para el acceso al sistema.

### 4. Registrar Datos de Clientes
El sistema debe permitir la creación y gestión de los registros de clientes, incluyendo su nombre, contacto, dirección, teléfono y tipo de cliente. Debe ser posible actualizar esta información según sea necesario.

### 5. Clasificar a los Clientes
El sistema debe permitir la creación y gestión de diferentes tipos de clientes (por ejemplo, mayorista, minorista, etc.), especificando su descripción y asignando cada cliente a su tipo correspondiente.

### 6. Registrar Información de Proveedores
El sistema debe permitir el registro, actualización y eliminación de los datos de los proveedores, incluyendo nombre, contacto, teléfono, correo electrónico y dirección de cada proveedor.

### 7. Registrar Órdenes de Compra
El sistema debe permitir la creación y gestión de órdenes de compra a proveedores. Las órdenes deben incluir la fecha de emisión, la fecha de recepción estimada, el estado de la orden y los detalles de los repuestos solicitados.

### 8. Gestionar los Detalles de las Órdenes de Compra
El sistema debe permitir la gestión de los detalles de las órdenes de compra, registrando los repuestos solicitados, la cantidad y el precio de cada uno. Además, debe actualizarse con la recepción de los productos.

### 9. Registrar las Entradas de Repuestos al Inventario
El sistema debe registrar la recepción de repuestos en el inventario, asociando cada entrada con una orden de compra y los repuestos correspondientes. Debe incluir la cantidad recibida, la fecha de recepción y el empleado encargado de recibir los productos.

### 10. Registrar Pedidos de Clientes
El sistema debe permitir a los clientes realizar pedidos de repuestos, registrando los productos solicitados, la cantidad, la fecha de entrega estimada y el estado del pedido.

### 11. Gestionar los Detalles de los Pedidos de Clientes
El sistema debe registrar los detalles de cada pedido de cliente, incluyendo los repuestos solicitados, las cantidades pedidas y el precio de venta. Además, debe permitir actualizar el estado de cada pedido.

### 12. Registrar las Salidas de Inventario
El sistema debe permitir registrar las salidas de repuestos desde el inventario cuando se entreguen a los clientes. Esto debe incluir la cantidad entregada, la fecha de entrega, el empleado responsable y el cliente receptor.

### 13. Realizar Auditorías de Inventario
El sistema debe permitir la realización de auditorías periódicas para comparar las cantidades físicas con las registradas en el inventario. Cualquier diferencia debe ser registrada y debe permitir la toma de acciones correctivas.

### 14. Gestionar las Devoluciones de Repuestos
El sistema debe permitir registrar las devoluciones de repuestos por parte de los clientes o por errores en las entregas, vinculando las devoluciones con las órdenes de compra o los pedidos. Además, debe gestionar los motivos de las devoluciones.

### 15. Definir Motivos de Devolución
El sistema debe permitir definir y gestionar los distintos motivos por los cuales los repuestos pueden ser devueltos (por ejemplo, fallos funcionales, roturas, devoluciones en garantía, etc.), facilitando el seguimiento y la gestión de devoluciones.

---

## **Requerimientos No Funcionales**

- **Rendimiento:** Respuesta en menos de 2 segundos, escalabilidad sin pérdida de rendimiento.
- **Disponibilidad:** 99.9% de uptime.
- **Seguridad:** Autenticación y protección de datos sensibles.
- **Usabilidad:** Interfaz intuitiva y soporte multiplataforma.
- **Mantenibilidad:** Código modular, documentación técnica actualizada.
- **Fiabilidad:** Resiliencia ante fallos y consistencia de datos.
- **Escalabilidad:** Capacidad para manejar grandes volúmenes de datos y usuarios concurrentes.
- **Compatibilidad:** Integración con otros sistemas y soporte de bases de datos.
- **Localización:** Soporte de múltiples idiomas y formatos regionales.
- **Backup y Recuperación de Datos:** Copias de seguridad automáticas y recuperación rápida.
