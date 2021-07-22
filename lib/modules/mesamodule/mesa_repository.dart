import 'package:wklcomanda/shared/services/i_http_service.dart';

class MesaRepository {
  final IHttpService _http;

  MesaRepository(this._http);

  all() async {
    var resp = await _http.deletee('urlaqui');
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
