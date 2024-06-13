//  --- --- List Normal
/* final List<int> list = [1, 2, 3, 4, 5];

void main() {
  print("List: $list");
}
 */

// --- --- List with List.generate |  multiplica el 2 [0,2,4,6,8]
/* var list = List.generate(5, (index) => index  * 2);

void main() {
  print("List: $list");
} */

/* // --- --- -- List.filled  |  [0,0,0,0,0] create a list with 5 elements with value 0
void main() {
  var list = List.filled(5, 0);
  print("List: $list");
} */

/* // --- --- -- List.unmodifiable |  Error: No se puede modificar una lista inmutable
void main() {
  var list = List.unmodifiable([1, 2, 3, 4, 5]);
// list.add(6); 
} */

/* // --- --- -- List.from y List.of: Crea listas a partir de otros iterables.
void main() {
var anotherList = [1, 2, 3];
var list = List.from(anotherList); // [1, 2, 3]
} */

/* // --- --- -- List reduce: Reducir los elementos de una lista a un solo valor mediante una función de acumulación.
void main() {
  List<int> intList = [1, 2, 3, 4, 5];
  int sum = intList.reduce((value, element) => value + element);

  print(sum); // 15
} */