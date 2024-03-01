// Questo codice importa il pacchetto 'http' e lo rinomina come 'http'.
// Successivamente, viene definita la costante 'stringUrl' che contiene l'URL della API di ipify.
// Infine, viene definita la funzione 'getIp' che effettua una richiesta GET all'API di ipify e restituisce un indirizzo IP fittizio.
//https://api.ipify.org


import "dart:convert";
import "package:http/http.dart" as http;
import "package:ip_check/models/ip.dart";
const stringUrl = "https://ipapi.co/json/";

//La chiamata asincrona è una chiamata che non blocca il processo principale.
//In questo caso, la chiamata asincrona è necessaria per evitare che l'applicazione si blocchi durante la richiesta HTTP.
//La parola chiave 'await' attende che la richiesta venga completata e restituisce il risultato. 
//La funzione 'getIp' è marcata come asincrona con la parola chiave 'async'. 
//Questo permette di utilizzare la parola chiave 'await' all'interno della funzione.



/* Ora facciamo comparire regione, cap e città */




Future<Ip> getIp() async { //Non posso usare solo String ma devo usare anche Future per indicare che la funzione restituirà una stringa in futuro. Altrimenti, il compilatore Dart segnalerà un errore perché la funzione potrebbe non restituire nulla.

  final url = Uri.parse(stringUrl);
  final response = await http.get(url);

  final Map<String, dynamic> data = json.decode(response.body);

  return Ip(ip: data['ip']);
}

Future<Regione> getRegione() async {
  final url = Uri.parse(stringUrl);
  final response = await http.get(url);
  final Map<String, dynamic> data = json.decode(response.body);
  return Regione(region: data["region"]);
}


class Regione{
  String region;
  Regione({required this.region});

  @override
  String toString(){
    return "";
  }
}




