# Función que leé los argumentos pasados en la terminal
function archivos(ARGS)
    @show ARGS
end

argumentos = archivos(ARGS)
#Se llama a la funcioon ls con los dos primeros elementos de argumentos.
ls(argumentos[1], argumentos[2])

#Ejercicio 1, se necesitan dos arreglos, "x" y "y".
function ls(x,y)
    return m(x,y), b(x,y)
end

#Media
function media(x)
    xm = 0
    for i=1:length(x)
        xm += x[i]
    end
    return xm/length(x)
end

#Pendiente
function m(x,y)
    if length(x) == length(y)
        #Calculamos x * y
        xy = zeros(length(x))
        for i = 1:length(xy)
            xy[i] = x[i] * y[i]
        end

        #Calculamos xprom y yprom
        xprom = media(x)
        yprom = media(y)

        #Calculamos x ^ 2
        x2 = zeros(length(x))
        for i = 1:length(x)
            x2[i] = x[i] ^ 2
        end

        #Calculamos x ^ 2 prom
        x2prom = media(x2)

        #N
        n = length(x)

        #Regresamos m
        return (sum(xy) - n*xprom*yprom)/(sum(x2)-n*x2prom)
    end
    return
end

#b
function b(x,y)
    if length(x) == length(y)
        #yprom
        yprom = media(y)

        #Calculamos x ^ 2
        x2 = zeros(length(x))
        for i = 1:length(x)
            x2[i] = x[i] ^ 2
        end

        #xprom
        xprom = media(x)

        #Calculamos x * y
        xy = zeros(length(x))
        for i = 1:length(xy)
            xy[i] = x[i] * y[i]
        end

        #x ^ 2 prom
        x2prom = media(x2)

        #N
        n = length(x)

        return (yprom*sum(x2) - xprom*sum(xy)) / (sum(x2) - n*x2prom)
    end
end




     