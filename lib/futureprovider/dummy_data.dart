
Future<String> fetchWether() async {
  return await Future.delayed(
    const Duration(seconds: 3),
    () => '22`C',
  );
}
