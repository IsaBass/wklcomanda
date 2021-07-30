import 'package:wklcomanda/services/i_rest_service.dart';

class MesaRepository {
  final IRestService _http;

  MesaRepository(this._http);

  all() async {
    var resp = await _http.restGet('urlaqui');
  }

// final MyApi api;

// MesaRepository(this.api);

// getAll(){
//   return api.getAll();
// }
// getId(id){
//   return api.getId(id);
// }
// delete(id){
//   return api.delete(id);
// }
// edit(obj){
//   return api.edit( obj );
// }
// add(obj){
//     return api.add( obj );
// }

}
