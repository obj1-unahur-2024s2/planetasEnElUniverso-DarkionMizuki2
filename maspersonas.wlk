import personas.*

class Productor inherits Persona{
    const property tecnicas
    override method recursos()=tecnicas.size()*super()
    override method esDestacado()=super() or tecnicas.size()>5
    method realizarTecnica_Por_SiLaConoce(unaTecnica,unTiempo){
        if(self.conoceTecnica_(unaTecnica))
        {
            self.realizarTecnica_Por_(unaTecnica,unTiempo)
        }
        else
        {
            self.gastar_Monedas(1)
        }
    }
    method conoceTecnica_(unaTecnica)
    {
        return tecnicas.contains(unaTecnica)
    }
    method realizarTecnica_Por_(unaTecnica,unTiempo)
    {
        self.ganar_Monedas(3*unTiempo)
    }
    method aprenderTecnica_(unaTecnica)
    {
        tecnicas.add(unaTecnica)
    }
    method trabajarEnElPlaneta_Por_(unPlaneta,unTiempo)
    {
        self.realizarTecnica_Por_(tecnicas.drop(1),unTiempo)
    }
} 
class Constructor inherits Persona{

}