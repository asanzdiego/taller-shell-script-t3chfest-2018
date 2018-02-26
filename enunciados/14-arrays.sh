declare -a ARRAY;

ARRAY=("cero" "uno" [3]="tres")
ARRAY[2]="dos"

# ¿cómo sabemos la longitud de un array?
LENGTH=

for (( i=0; i<LENGTH; i++ )); do
    # ¿cómo recuperamos una valor de un array?
    VALOR=
    echo $i=$VALOR
done
