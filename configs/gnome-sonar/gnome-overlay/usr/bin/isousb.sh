#!/bin/bash

# Written by Esclapion : experimental tool for Manjaro
# Description : used to write an installation ISO on a USB stick
# Version 1.2B of 04/24/2013


LG=`echo "$LANG" | cut -c1-2`
case $LG in


  de)
M=(
[0]="Wahl der ISO-Datei"
[1]="Isousb beenden"
[2]="Nr."
[3]="Pfad"
[4]="Grösse in GB"
[5]="Wahl des USB-Sticks"
[6]="Achtung!\nAlle Daten auf dem gewählten Laufwerk\nwerden gelöscht.\nBeenden Sie das Programm, falls Sie anhand\nder 'Grösse in GB' Ihren USB-Stick nicht\neindeutig erkennen können."
[7]="ACHTUNG ! ! !"
[8]="Dies könnte eine externe Festplatte sein.\nFortfahren?"
[9]="Fehler im Programm. Bitte den Autor benachrichtigen."
[10]="Fortschritt"
[11]="Kopie von"
[12]="Der USB-Stick kann jetzt entfernt werden."
[13]="Kopiervorgang abgeschlossen"
);;


  el)
M=(
[0]="Επιλέτε το ISO προς αντιγραφή"
[1]="Τερματισμός isousb"
[2]="Νο"
[3]="Όνομα"
[4]="Μέγεθος σε GB"
[5]="Επιλέξτε το δίσκο USB"
[6]="Προσέξτε μήπως το μέγεθος είναι πολύ μεγάλο"
[7]="ΠΡΟΣΟΧΗ! ! !"
[8]="Θα μπορούσε να είναι εξωτερικός σκληρός δίσκος.\nΣυνέχεια ?"
[9]="Πρόβλημα στο εργαλείο. Επικοινωνήστε με τον συγγραφέα του."
[10]="Ποσοστό έτοιμο"
[11]="Αντιγραφή του"
[12]="Μπορείτε να αφαιρέσετε τον δίσκο εάν επιθυμείτε"
[13]="Η αντιγραφή τελείωσε"
);;


  es)
M=(
[0]="Seleccionar la ISO a copiar"
[1]="Cerrar isousb"
[2]="N°"
[3]="Nombre"
[4]="Tamaño en GB"
[5]="Seleccionar la unidad USB"
[6]="Controlar que el tamaño del ISO no sea demasiado grande"
[7]="ATENCIÓN ! ! !"
[8]="Podría ser un disco rigido esterno.\nContinuar ?"
[9]="Problema con la herramienta, contactar con el autor"
[10]="Porcentaje completado"
[11]="Copia de"
[12]="Puede extraer la llave si quiere"
[13]="Copia completada"
);;


  fr)
M=(
[0]="Sélectionnez l'ISO à copier"	# Select the ISO to be copied
[1]="Quitter isousb"			# Exit isousb
[2]="N°"				# Nr
[3]="Nom"				# Name
[4]="Taille en Go"			# Size in GB
[5]="Sélectionnez votre clé USB"	# Select your USB drive
[6]="Attention si taille trop grande"   # Beware if size is too large
[7]="ATTENTION ! ! !"			# WARNING ! ! !
[8]="Ça pourrait être un disque dur externe.\nContinuer ?" # It could be an external hard drive.\nContinue ?
[9]="Problème dans l'outil. Contactez l'auteur" # Problem in the tool, contact the author.
[10]="Pourcentage fait"			# Percentage done
[11]="Copie de"				# Copy of
[12]="Vous pouvez retirer la clé si vous le souhaitez" # You can remove the key if you want.
[13]="Fin de la copie"			# End of copy
);;

  it)
M=(
[0]="Selezionare la ISO da copiare"
[1]="Chiudere isousb"
[2]="N°"
[3]="Nome"
[4]="Dimensione in GB"
[5]="Selezionare l'unità USB"
[6]="Controllare che la dimensione della ISO non sia troppo grande"
[7]="ATTENZIONE ! ! !"
[8]="Potrebbe essere un disco rigido esterno.\nContinuare ?"
[9]="Problemi con lo strumento, contattare l'autore"
[10]="Percentuale completato"
[11]="Copia di"
[12]="Puoi estrarre la chiave se vuoi"
[13]="Copia completata"
);;


  pl)
M=(
[0]="Wybierz obraz ISO do skopiowania"
[1]="Zakończ isousb"
[2]="Nr"
[3]="Nazwa"                               # Name
[4]="Rozmiar w GB"                        # Size in Go
[5]="Wybierz swój dysk USB"
[6]="Uważaj jeśli rozmiar jest zbyt duży"
[7]="UWAGA ! ! !"
[8]="To może być zewnętrzny dysk twardy.\nKontynuować ?"
[9]="Problem z narzędziem, skontaktuj się z autorem"
[10]="Procent ukończenia"
[11]="Kopia"
[12]="Możesz odpiąć swój dysk jeśli chcesz"
[13]="Koniec kopiowania"
);;


  pt)
M=(
[0]="Selecione a ISO para copiar"
[1]="Sair isousb"
[2]="N°"
[3]="Nome"
[4]="Tamanho em GB"
[5]="Selecione o seu USB drive"
[6]="Atenção tamanho muito grande"
[7]="ATENÇÃO ! ! !"
[8]="Poderia ser um disco rígido externo. \nContinuar ?"
[9]="Problema na ferramenta. Contactar o autor."
[10]="Porcentagem"
[11]="Copiar de"
[12]="Você já pode remover o seu USB drive."
[13]="Fim de copiar"
);;


  ro)
M=(
[0]="Selectați ISO-ul de copiat"
[1]="Ieșire"
[2]="Nr."
[3]="Nume"
[4]="Dimensiune în GB"
[5]="Selectați drive-ul USB"
[6]="Verificați dacă mărimea este prea mare"
[7]="ATENȚIE ! ! !"
[8]="Ar putea fi un hard disc extern.\nContinuați ?"
[9]="Problemă cu unealta, contactați autorul"
[10]="Procent terminat"
[11]="Copie al"
[12]="Puteți scoate cheia dacă doriți"
[13]="Copiere terminată"
);;


  tr)
M=(
[0]="Kopyalanacak kalıbı seçiniz"
[1]="Isousb den çık"
[2]="No"
[3]="İsim"
[4]="Yüklenecek boyut"
[5]="USB sürücünüzü seçin"
[6]="Boyut çok büyükse dikkat edin"
[7]="DİKKAT! ! !"
[8]="Harici bir sürücü olabilir.\nDevam ?"
[9]="Araçta problem var, yayınlayıcı ile irtibat kurun"
[10]="Tamamlanan yüzde"
[11]="Kopyalanan kalıp"
[12]="USB anahtarını isterseniz çıkarabilirsiniz"
[13]="Kopyalama bitti"
);;

  *)
M=(
[0]="Select the ISO to be copied"
[1]="Exit isousb"
[2]="Nr"
[3]="Name"
[4]="Size in GB"
[5]="Select your USB drive"
[6]="Beware if size is too large"
[7]="WARNING ! ! !"
[8]="It could be an external hard drive.\nContinue ?"
[9]="Problem in the tool, contact the author."
[10]="Percentage done"
[11]="Copy of"
[12]="You can remove the key if you want."
[13]="End of copy"
);;
esac


NomIso=`zenity --file-selection --title="${M[0]}" --filename=/home/$USER/ --file-filter=*.iso`
[ $? -eq 0 ] || exit 0

Boucle=1
while [ $Boucle = 1 ]
do
  # List of devices that are in /dev/disk/by-path
  # ---------------------------------------------
  Liste1=()
  nbval1=0
  for i in $(ls -l /dev/disk/by-path/*-usb-* | sed -n -e 's/.*\///' -e /[a-z]$/p | sort -d)
  do
    Liste1[$nbval1]="/dev/"$i
    ((nbval1++))
  done
  
  # List of devices seen by blkid
  # -----------------------------
  Liste2=()
  nbval2=0
  for j in $(blkid -o device | sed -e 's/[0-9]*$//' -e 's/\/dev\///' | uniq | sort -d)
  do
    Liste2[$nbval2]="/dev/"$j
    ((nbval2++))
  done
  
  # List of files seen by the two
  # -----------------------------
  Choix=()
  nbchoix=0
  for ((i=0; i < nbval1; i++))
  do
    for ((j=0; j < nbval2; j++))
    do
      if [ ${Liste1[$i]} = ${Liste2[$j]} ]; then
        Choix[nbchoix]=${Liste1[$i]}
        ((nbchoix++))
      fi
    done
  done
  
  # User's choice
  # -------------
  
  Taille=()
  choix=$nbchoix
  fictemp=`mktemp`
  
  while [ "$choix" -lt 0 -o "$choix" -ge $nbchoix ]
  do
    for ((i= 0; i < $nbchoix; i++))
    do
      taille=`fdisk -s ${Choix[$i]}`
      Taille[$i]=$(((taille + 500000) / 1000000))
      printf "%d %s %5d\n" $i ${Choix[$i]} ${Taille[$i]} >> $fictemp
    done
    echo "$i ${M[1]}" >> $fictemp
    rep=`zenity --list --height=250 --width=400 --column="${M[2]}" --column="${M[3]}" --column="${M[4]}" $(cat $fictemp) --title="${M[5]}" --text="${M[6]}"`
    rm $fictemp
    case "$rep" in 
      [0-$((nbchoix -1))])
        choix=$rep
        Boucle=0
        if [ ${Taille[$rep]} -gt 128 ]; then
           zenity --question --title="${M[7]}" --text "${M[8]}"
           [ $? -ne 0 ] && { choix=-1; Boucle=1; }
        fi
        ;;
      $nbchoix)
        exit 0
        ;;
      "")
        break
        ;;
      *)
        zenity --error --text="${M[9]}"
        exit 1
        ;;
    esac
  done
done


# Loop of copy with progress bar
# ------------------------------
i=0
l=0
taille=`fdisk -s $NomIso`
(while [ $l -lt $taille ]; do
  dd if=$NomIso of=${Choix[$choix]} bs=8192000 count=1 skip=$i seek=$i oflag=direct >>/dev/null 2>&1
  i=$(($i+1))
  l=$(($l+8000))
  q=$(($l*100/$taille))
  echo -e "$q \n#""${M[10]}"" : $q %"
done) | zenity --progress --width 650 --auto-close --title "${M[11]}"" $NomIso"


sync; sync
zenity --info --text="${M[12]}" --title="${M[13]}"
