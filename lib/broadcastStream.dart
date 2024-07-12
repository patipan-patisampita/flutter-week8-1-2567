Stream<int> createNumber(int count) async* {
  for (int i = 1; i <= count; i++) {
    yield i;
  }
}

void broadcastStream() {
  var stream = createNumber(5);
  var bStream = stream.asBroadcastStream();
  if (bStream.isBroadcast) {
    print("Broadcast Stream");
  } else {
    print("Single Stream");
  }

  bStream.first.then((x) => print("First event:$x"));
  bStream.last.then((x) => print("Last event:$x"));
  bStream.length.then((x) => print("Length of Stream:$x"));
  stream = createNumber(0);
  bStream = stream.asBroadcastStream();
  bStream.isEmpty.then((x) => print("Is Empty :$x"));
}
