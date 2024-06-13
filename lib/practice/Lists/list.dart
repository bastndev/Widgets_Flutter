//  --- --- List Normal
/* final List<int> list = [1, 2, 3, 4, 5];

void main() {
  print("List: $list");
}
 */

// --- --- List with List.generate , multiplica el 2 [0,2,4,6,8]
var list = List.generate(5, (index) => index  * 2);

void main() {
  print("List: $list");
}