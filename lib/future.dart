void getData() async {
  // Future<String> data =  getUserName();
  try {
    String data = await getUserName();
    print(data);
  } catch (e) {
    print("ERROR");
  }
}

Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 5), () => 'Mark');
}
