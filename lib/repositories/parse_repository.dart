import 'package:agencia_de_veiculos/repositories/table_keys.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class ParseRepository{
  Future getVehicleAvailable() async {
    ParseObject parseObject = ParseObject(keyVeiculo);
    QueryBuilder queryBuilder = QueryBuilder(parseObject);

    queryBuilder.whereEqualTo(keyVeiculoVendido, false);

    final response = await queryBuilder.query();
    print(response);


    return response;
  }
}