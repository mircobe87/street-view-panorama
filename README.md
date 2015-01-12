# Street View Panorama
Script **bash** per ottenere una foto panoramica dalle immagini di Google Street View.


## Dipendenze

Prima di poter utilizzare il software è necessario aver installato nel sistema:
- **curl**: tool da linea di comando per poter generare messaggi HTTP;
- **python**: interprete del linguaggio omonimo;
    - **SimpleHTTPServer**: modulo python;
- **imagemagick**: set di strumenti da linea di comando per la manipolazione di immagini.



## Come Funziona

Lo script recupera l'immagine panoramica a partire dall'ID associato (*panoid*) al panorama stesso;
quest'ultimo valore po' essere ottenuto direttamente da Google utilizzando il form che lo script
aprirà nel browser.

Il form permette di ottenere *panoid* a partire dalle coordinate geografiche.



## Istruzioni d'Uso

1. Aprire un terminale nella root del repository ed eseguire lo scipt bash

    >$ ./street-view-panorama.sh

    Il terminale rimarrà in attesa di un *panoid* mentre si aprirà il web browser mostrando un form
    dove è possibile ottenere il *panoid* a partire dalle coordinate geografiche.
2. Nel form, una volta inseriti i valori di *latitudine* e di *longitudine*, premere il pulsante
   *PanoId...* per ottenere il rispettivo valore.
3. Copiare il valore ottenuto nel terminale e dare INVIO.
4. Attendere che le immagini vengano scaricate e ricomposte nel panorama finale. Al termine delle
   operazioni verrà mostrato il risultato che sarà salvato nella root del repository con il nome di
   **pano.jpg**.



### Note

- Prima di scaricare un nuovo panorama, assicurarsi di rinominare quello precedente altrimenti
  verrà sovrascritto.