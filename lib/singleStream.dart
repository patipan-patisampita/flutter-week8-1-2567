Stream<int> createNumber(int count) async* {
  for (int i = 1; i <= count; i++) {
    if (i == 4) {
      throw Exception("4 number");
    }
    yield i;
  }
}

void subcribeListen() {
  Stream stream = createNumber(5);
  final subscription = stream.listen(null);
  subscription.onData((x) => print("number $x"));
  subscription.onError((err) => print("error:$err"));
  subscription.onDone(() => print("Done"));
  // Stream stream = createNumber(5);
  // stream.listen(
  //   (x) => print("Number:$x"),
  //   onError: (err)=>print("error:$err"),
  //   onDone: ()=>print("Done"),
  // );
}
