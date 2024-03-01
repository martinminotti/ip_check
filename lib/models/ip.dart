// Questo codice importa il pacchetto 'http' e lo rinomina come 'http'.
// Successivamente, viene definita la costante 'stringUrl' che contiene l'URL della API di ipify.
// Infine, viene definita la funzione 'getIp' che effettua una richiesta GET all'API di ipify e restituisce un indirizzo IP fittizio.
//https://api.ipify.org

class Ip{
  String ip;
  Ip({required this.ip});

  @override //uso l'annotazione @override per indicare che sto sovrascrivendo il metodo toString della classe Object. perché voglio che la funzione toString restituisca l'indirizzo IP.
  String toString() {
    // TODO: implement toString
    return "$ip è il mio IP.";
  }

}
