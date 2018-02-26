BEGIN {
    FS = ",|:"
}
{
    nombre=$1
    for (N=2; N<=NF; N++) {
        rol=$N
        # ¿cómo guardamos los nombres es un array?
    }
}
END {
    for ( rol in roles) {
        print rol
        # ¿cómo recuperamos los nombres a partir del array?
    }
}
