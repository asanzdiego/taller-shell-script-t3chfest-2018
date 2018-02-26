BEGIN {
    print "+---------------------------+-----+------+"
    print "| NOMBRE      EX1  EX2  EX3 | MED | APTO |"
    print "+---------------------------+-----+------+"
}
{
    # ¿cómo sumamos la columnas 2, 3 y 4 y calculamos la media?
    apto="NO"
    if ( mediaFila >= 5 ) {
        apto="SI"
        aptos++
    }
    print "| "$0" | "mediaFila" |  "apto"  |"
}
END {
    # ¿cómo calaulamos las medias de la columnas 2, 3 y 4 y la media total?
    print "+---------------------------+-----+------+"
    print "| MEDIAS      "media2"  "media3"  "media4" | "media" |   "aptos"  |"
    print "+---------------------------+-----+------+"
}
