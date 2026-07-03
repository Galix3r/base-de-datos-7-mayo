# EJERCICIOS MODELO E-R

---

## Ejercicio 1:

En un hospital se rguistra informacion de sus pacientes de cada pacioente se desea almacenar algo que lo identoifique.

### Atributos por Entidad

| ENTIDAD | ATRIBUTOS |
| :--- | :--- |
| **Paciente** | <ul><li>Algo que lo identifique</li><li>Nombre</li><li>Fecha de nacimento</li></ul> |
| **Expediente médico** | <ul><li>numero de Expediente</li><li>Fecha de Apertura</li><li>Tipo de Sangre</li></ul> |

### Reglas del Negocio
1. Cada paciente debe tener exactamente un expediente medico
2. Cada expediente pertenece a un unico paciente
3. No puede existir ningun expediente medico sin paciente
4. No puede existir un paciente sin expediente

### Diagrama
![Resultado Ejercicio 1](../img/Ejercicio_1.png)

---

## Ejercicio 2:
Una Universidad administra profesores y cursos.

### Atributos por Entidad

| ENTIDAD | ATRIBUTOS |
| :--- | :--- |
| **Profesor** | <ul><li>Clave Profesor</li><li>Nombre</li><li>Especialidad</li></ul> |
| **Curso** | <ul><li>Identificacion del curso</li><li>Nombre del curso</li><li>Creditos</li></ul> |

### Reglas del Negocio
1. Un profesor puede impartir varios cursos
2. Un curso Solamente Puede Ser impartido por un profesor
3. Puede Ecistir un Porfesor que no imparta Cursos
4. Todo Curso Deve de ser asignado a un profesor

### Elementos a Realizar
* **Entidades**
* **Identificar la relacion:** **IMPARTE**
* **Determinar la cardinalidad**
* **Determinar la participacion**

### Diagrama
![Resultado Ejercicio 2](../img/Ejercicio2.png)

---

## Ejercicio 3:
Una Escuela administra alumnos y materias.

### Atributos por Entidad

| ENTIDAD | ATRIBUTOS |
| :--- | :--- |
| **Alumno** | <ul><li>matricula</li><li>nombre</li><li>semetre</li></ul> |
| **Materia** | <ul><li>Clave</li><li>Nombre de la materia</li><li>Creditos</li></ul> |

### Reglas del Negocio
1. Un alumno puede inscribirse en varias materias
2. Una materia puede tener many alumnos inscritos
3. puede existri una materia sin alumnos inscritos
4. Todo alumno deve estar inscrito en almenos 1 materia
5. De cada Inscirpcion se deve almacenar: **Fecha de Inscripcion**, **Calificacion Final**

* **Relacion en las 2 entidades:** **INSCRIBE**

### Diagrama
![Resultado Ejercicio 3](../img/Ejercicio_3.png)

---

## EJERCICIO 4

Una empresa encargada de realizar venta de productos:

### Atributos por Entidad

| ENTIDAD | ATRIBUTOS |
| :--- | :--- |
| **Cliente** | <ul><li>Numero de cliente que lo identifique</li><li>Y su nombre el cual es una persona moral</li><li>RFC</li></ul> |
| **Pedidos** | <ul><li>Numero de pedido</li><li>Fecha</li></ul> |
| **Productos** | <ul><li>Numero de produto</li><li>Nombre y precio</li></ul> |

> **Nota de Operación:** Al Realizar los pedidos deven reguistra la cantidad de productos y su precio.

### Reglas del Negocio
1. Un cliente puede realizar muchos pedidos
2. Cada pedido pertenece a un solo cliente
3. Un pedidio puede contener varios productos
4. U Producto puede aparceer en muchos pedidos
5. Un pedido deve de contener un producto
6. Un pruducto puede haber no sido vendido
7. el detalle del pedido no existe sin pedido
8. El detalle de pedido no existe sin producto
9. El detalle almacena cantidad y precio de venta

### Diagrama 4
![Resultado Ejercicio 3](../img/Imagen_4.png)

---

## EJERCICIO 5

### 1. Entidades y Atributos Identificados

| ENTIDAD | DETALLE DE ATRIBUTOS |
| :--- | :--- |
| **DEPARTAMENTO** | <ul><li>Nombre (Único / Clave)</li><li>Número (Único / Clave)</li><li>Ubicaciones (Atributo multivalorado: puede tener varias)</li></ul> |
| **PROYECTO** | <ul><li>Nombre (Único / Clave)</li><li>Número (Único / Clave)</li><li>Ubicación (Única)</li></ul> |
| **EMPLEADO** | <ul><li>Número de Seguro Social (SSN) (Clave)</li><li>Nombre</li><li>Dirección</li><li>Salario</li><li>Sexo</li><li>Fecha de nacimiento</li></ul> |
| **DEPENDIENTE** | *Entidad Débil - depende del empleado*<br><ul><li>Primer Nombre</li><li>Sexo</li><li>Fecha de nacimiento</li><li>Parentesco / Relación</li></ul> |

### 2. Relaciones y Reglas de Negocio Clave

* **Administración de Departamento (1:1):** Un departamento es administrado por un solo empleado. Se debe registrar la **Fecha de inicio** de la gestión.
* **Control de Proyectos (1:N):** Un departamento controla muchos proyectos; un proyecto pertenece a un solo departamento.
* **Asignación de Departamento (1:N):** Un empleado belongs a un único departamento, pero un departamento tiene muchos empleados.
* **Trabajo en Proyectos (N:M):** Un empleado puede trabajar en varios proyectos y un proyecto puede tener muchos empleados. Se debe registrar las **Horas semanales** trabajadas en cada combinación.
* **Supervisión (Recursiva 1:N):** Un empleado tiene un supervisor directo (que también es un empleado).
* **Dependientes (1:N):** Un empleado puede tener muchos dependientes registrados para el seguro.

### Diagrama 5
![Resultado Ejercicio 3](../img/EJERCICIO5.drawio.png)

### Diagrama 6
![Resultado Ejercicio 3](../img/EJERCICIO6.drawio.png)