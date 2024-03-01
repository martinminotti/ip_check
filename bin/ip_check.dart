// Questo codice importa il pacchetto 'ip_check' e lo rinomina come 'ip_check'.
// Successivamente, viene definita la funzione 'main' che accetta una lista di stringhe come argomento.
// All'interno della funzione 'main', viene chiamata la funzione 'getIp' del pacchetto 'ip_check' e il risultato viene stampato a console.


import 'package:ip_check/ip_check.dart' as ip_check;

void main(List<String> arguments) async {
  print(await ip_check.getIp());
  print(await ip_check.getRegione());
}
