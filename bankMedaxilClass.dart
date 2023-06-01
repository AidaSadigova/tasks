import 'dart:io';
class BankHesabi{
  late final int hesabNomresi;
  late final String hesabAdi;
  int hesabBalans;
  BankHesabi({ required this.hesabAdi, required this.hesabNomresi, required this.hesabBalans});

   void hesabMelumat(){
    stdout.writeln("Name: $hesabAdi\nHesab nomresi: $hesabNomresi\nHesab Balansi: $hesabBalans");
   }
   void hesabaMedaxil(){
    stdout.writeln("Ne qeder daxil etmek isteyirsizse qeyd edin...");
    int medaxil=int.parse(stdin.readLineSync().toString());
    hesabBalans+=medaxil;
    print(hesabBalans);
    stdout.writeln("Sizin cari balansiniz $hesabBalans AZN teskil edir.");
   }
   void hesabMexaric(){
    stdout.writeln("Ne qeder pul cixarmaq isteyirsizse qeyd edin...");
    int mexaric=int.parse(stdin.readLineSync().toString());
    hesabBalans-=mexaric;
    print(hesabBalans);
    stdout.writeln("Sizin cari balansiniz hal-hazirda $hesabBalans AZN teskil edir.");
   }
}
