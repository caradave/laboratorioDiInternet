# Laboratorio 2

# Cartella dataSet
Nella cartella dataSet sono presenti 2 sotto-cartelle, una per il collegamento diretto tra le due macchine e una per il collegamento attaverso lo switch, 
per ogni sotto-cartella sono presenti 4 sotto-cartelle una per ogni setting della scheda di rete (10 Mb/s, 100 Mb/s, half e full duplex).

# Script scriptPingMin.sh e scriptPingCompleto.sh
Questo è lo script necessario per la raccolta dei dati.
Lo script ha il funzionamento seguete:
- abbiamo deciso di pingare fino ad una dimensione massima di pacchetto uguale 10000 byte con i seguenti scaglioni: tra 50 e 1472 con aumenti di 50 byte, tra 1490 e 3000 con aumenti di 150 byte, tra 3000 e 7000 con aumenti di 200 byte e tra 7000 e 10000 con aumenti di 3000 byte
- per ogni dimensione di pacchetto si eseguono 50 ping ad intervalli di 0.2 secondi
- al termine della sessione di ping si esegue la raccolta dei dati:
  - scriptPingBase.sh raccoglie solamente la dimensione del pacchetto e il minimo RTT
  - scriptPingCompleto.sh raccoglie la dimensione del pacchetto e il minimo, la media e il massimo RTT
