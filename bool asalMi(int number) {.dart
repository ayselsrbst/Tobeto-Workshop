bool asalMi(int number) {
  if (number <= 1) return false;
  if (number <= 3) return true;
  if (number % 2 == 0 || number % 3 == 0) return false;

  for (int i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) return false;
  }
  return true;
}

List<int> asalSayilariBul(int N) {
  List<int> asalSayilar = [];
  for (int i = 2; i <= N; i++) {
    if (asalMi(i)) {
      asalSayilar.add(i);
    }
  }
  return asalSayilar;
}

void main() {
  int N = 100;
  List<int> asalSayilarListesi = asalSayilariBul(N);
  print("1'den $N'e kadar olan asal sayılar: $asalSayilarListesi");
}


