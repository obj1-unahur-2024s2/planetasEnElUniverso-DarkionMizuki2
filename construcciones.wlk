class Construccion
{
    method valor()
}

class Muralla inherits Construccion
{
    const longitud
    override method valor()=longitud/10
}
class Museo inherits Construccion
{
    const superficie
    var indiceDeImportancia=1
    override method valor()=superficie*indiceDeImportancia
    method modificarIndiceDeImportanciaA(unIndice)
    {
        if(unIndice>5)
        {
            indiceDeImportancia=5.min(unIndice)
        }
        else
        {
            indiceDeImportancia=1.max(unIndice)
        }
    }
}