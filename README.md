# Widgets de Flutter | Spanish 💙

Flutter ofrece una amplia variedad de widgets para ayudarte a construir interfaces de usuario atractivas y funcionales. A continuación, se presentan algunos de los widgets más utilizados:

- [x] **SCAFFOLD**: Un widget que proporciona una estructura básica de diseño visual para Material Design. es el padre
- [x] **CONTAINER**: Un widget versátil que se puede usar para agregar padding, márgenes, bordes y decoración a sus hijos. es como el"div".
- [x] **APPBAR**: Un widget de barra de aplicaciones en la parte superior de una pantalla.
- [x] **ROW**: Dispone a sus hijos en una fila horizontal.
- [x] **COLUMN**: Dispone a sus hijos en una columna vertical.
- [x] **STACK**: Dispone a sus hijos en una pila que se apilan unos sobre otros.
- [x] **LISTVIEW**: Un widget que crea una lista de elementos desplazable.
- [x]  **GRIDVIEW**: Un widget que crea una cuadrícula de elementos desplazable.
- [x] **TEXT**: Un widget para mostrar una cadena de texto con un solo estilo.
- [x] **IMAGE**: Un widget para mostrar una imagen.
- [x] **ICON**: Un widget para mostrar un ícono.
- [x] **DRAWER**: Un panel deslizable desde el borde de la pantalla, que suele utilizarse para la navegación.
- [x] **InkWell**: El widget que detecta los gestos táctiles y proporciona la animación de onda.
- [x] **ALIGN**: Un widget que alinea a su hijo dentro de sí mismo y opcionalmente cambia su tamaño.
- [x] **BottomNavigationBar"**: Una barra de navegación que se coloca en la parte inferior de la pantalla.
- [x] **FLOATINGACTIONBUTTON**: Un botón circular flotante usado para acciones importantes.
- [x] **TEXTFIELD**: Un widget que permite al usuario ingresar texto.
- [x] **CHECKBOX**: Un widget para la entrada de casilla de verificación.
- [x] **RADIO**: Un widget para la entrada de botón de radio.
- [x] **SWITCH**: Un widget para la entrada de interruptor.
- [x] **SLIDER**: Un widget para la entrada de deslizamiento.
- [x] **FORM**: Un contenedor para formularios que agrupa y valida múltiples widgets de entrada.
- [x] **ALERTDIALOG**: Un cuadro de diálogo modal que alerta al usuario sobre situaciones que requieren confirmación.
- [x] **SIMPLE DIALOG**: Un cuadro de diálogo simple que presenta opciones al usuario.
- [x] **SNACKBAR**: Un breve mensaje informativo que aparece en la parte inferior de la pantalla.
- [x] **CIRCULARPROGRESSINDICATOR**: Un widget que muestra un indicador circular de progreso.
- [x] **LINEARPROGRESSINDICATOR**: Un widget que muestra un indicador lineal de progreso.
- [x] **EXPANDED**: Un widget que expande un hijo de una fila, columna o flex para que llene el espacio disponible.
- [x] **FLEXIBLE**: Un widget que controla cómo un hijo de una fila, columna o flex se flexiona.
- [x] **CARD**: Un widget de tarjeta de Material Design.
- [x] **GRIDTILE**: Un contenedor con una posición fija en un GridView.
- [x] **TOOLTIP**: Un widget que muestra un mensaje de ayuda cuando el usuario pasa el ratón por encima o mantiene presionado.
- [x] **PADDING**: Añade espacio interno entre el borde del contenedor y su contenido.
- [x] **MARGIN**:Añade espacio externo alrededor del contenedor, separándolo de otros elementos.
- [x] **CENTER**: Un widget que centra a su hijo dentro de sí mismo.
- [x] **FRACTIONALLY SIZED BOX**: Un widget que ajusta el tamaño de su hijo a una fracción del tamaño de su padre.
- [x] **TABLE**: Un widget que usa una tabla para alinear a sus hijos.
- [x] **DRAGGABLE**: Un widget que se puede arrastrar en la interfaz de usuario.
- [x] **DRAGTARGET**: Un widget que recibe datos arrastrados por un Draggable.
- [x] **REORDERABLE LISTVIEW**: Una lista de elementos que se pueden reordenar arrastrando.
- [x] **CUSTOMPAINT**: Un widget que proporciona un área en la que se puede dibujar usando un CustomPainter.
- [x] **ASPECTRATIO**: Un widget que intenta ajustar a su hijo dentro del área disponible manteniendo una relación de aspecto dada.
- [x] **LIMITEDBOX**: Un widget que impone restricciones máximas de ancho y alto a su hijo si no está restringido.
- [x] **LAYOUTBUILDER**: Un widget que se construye a sí mismo basándose en el tamaño de su padre.

# Plus+
<details >
<summary>TYPES OF LISTS</summary>

>- 1. List Literal
Puedes crear listas usando literales de lista, que es la forma más directa.
```
var list = [1, 2, 3, 4, 5];
```
>- 2. List.filled
List.filled crea una lista de un tamaño específico y llena cada elemento con un valor proporcionado.
```
var list = List.filled(5, 0); // Crea una lista de 5 elementos, todos inicializados a 0
```
>- 3. List.unmodifiable
List.unmodifiable crea una lista inmutable a partir de otra lista o iterable.
```
var list = List.unmodifiable([1, 2, 3, 4, 5]);
// list.add(6); // Esto lanzaría un error porque la lista es inmutable
```
>- 4. List.empty
List.empty crea una lista vacía. Puedes especificar si la lista es mutable o inmutable.
```
var list = List.empty(growable: true); // Crea una lista vacía que puede crecer
```
>- 5. List.from
List.from crea una lista a partir de otro iterable.
```
var anotherList = [1, 2, 3];
var list = List.from(anotherList);
```
>- 6. List.of
List.of es similar a List.from, pero se utiliza más comúnmente para crear una lista a partir de otro iterable.
```
var anotherList = [1, 2, 3];
var list = List.of(anotherList);
```
>- 7. List.cast
List.cast convierte todos los elementos de una lista a un tipo específico.
```
List<dynamic> dynamicList = [1, 2, 3];
List<int> intList = dynamicList.cast<int>();
```
</details >

1. List.generate: 
Útil para crear listas de tamaño fijo con elementos generados dinámicamente.
```
var list = List.generate(5, (index) => index * 2); // [0, 2, 4, 6, 8]
```
2. List.filled: Crea listas de tamaño fijo con un valor inicial para cada elemento.
```
var list = List.filled(5, 0); // [0, 0, 0, 0, 0]
```
3. List.unmodifiable: Crea listas inmutables
```
var list = List.unmodifiable([1, 2, 3, 4, 5]);
// list.add(6); // Error: No se puede modificar una lista inmutable
```
4. List.empty: Crea listas vacías que pueden o no pueden crecer.
```
var list = List.empty(growable: true); // []
list.add(1); // [1]
```
5. List.from y List.of: Crea listas a partir de otros iterables.
```
var anotherList = [1, 2, 3];
var list = List.from(anotherList); // [1, 2, 3]
```
6. List reduce: Reducir los elementos de una lista a un solo valor mediante una función de acumulación.
```
void main() {
  List<int> intList = [1, 2, 3, 4, 5];
  int sum = intList.reduce((value, element) => value + element);

  print(sum); // 15
}
```

¡Espero que esto sea de ayuda! Si necesitas más cambios o ajustes, no dudes en decírmelo.
