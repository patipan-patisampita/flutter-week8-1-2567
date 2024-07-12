Stream<String> getUserName2() async* {
  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Mark Zucerberg';
  
  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Jon Doe';

  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Elon Nusk';
}
