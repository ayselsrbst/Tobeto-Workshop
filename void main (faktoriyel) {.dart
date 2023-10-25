void main() {
  int sonuc = ft_faktoriyel(4); 
  print("Faktoriyel: $sonuc");
}

int ft_faktoriyel(int n) {
  int faktoriyel = 1;

  for (int i = 1; i <= n; i++) {
    faktoriyel *= i;
  }
  
  return faktoriyel; 
}
