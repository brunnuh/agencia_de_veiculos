import 'package:agencia_de_veiculos/repositories/parse_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  
  test("return of parse", () async {
    var r = await ParseRepository().getVehicleAvailable();
    expect(r, isNull);
  });
}