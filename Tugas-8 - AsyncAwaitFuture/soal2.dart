main(List<String> args) {
  print('Life');
  delay(1, 'never flat');
  print('is');
}

Future delay(int time, String status) {
  return Future.delayed(Duration(seconds: time), () {
    print(status);
    return;
  });
}
