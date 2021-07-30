class Resp<T> {
  RespType resp;
  T? data;
  String error = '';

  Resp.ok(this.data) : this.resp = RespType.ok;
  Resp.error(this.error) : this.resp = RespType.error;
  Resp.empty() : resp = RespType.empty;

  bool get isOK => resp == RespType.ok;
  bool get isError => resp == RespType.error;
  bool get isEmpty => resp == RespType.empty;
}

enum RespType { ok, error, empty }



/*

 Future<void> rspExecute<TFunc, TRet>({
    Function functionMain,
    void respOk(TRet data),
    void respError(String erro),
    void respEmpty(),
  }) async {
    TFunc resp = await functionMain();
    String r;

    // if(ok) {
    //   respOk(resp);
    // }
    // if (erro) {
    //   respErro(messag erro);
    // }
    // if( empty) {
    //   respEmpty();
    // }
  }

  teste() async {
    //
    await rspExecute<Map<String, dynamic>, String>(
      functionMain: () {},
      respOk: (str) {
        print(str);
        return;
      },
      respError: (err) {
        print(err);
      },
      respEmpty: () {},
    );
    //
  }

*/
