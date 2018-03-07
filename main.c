int main(void) {
  int i = strlen("fap");
  printf("%dn", i);
  write(1, "fap\n", 4);
  printf("strcmp toto toto = %dn", strcmp("toto", "tota"));
  return 0;
}
