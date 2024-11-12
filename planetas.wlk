class Planeta
{
    const habitantes
    const construcciones

    method delegacionDiplomatica()
    {
        const habitantesDestacados=habitantes.filter
        ({
            h => h.esDestacado()
        }).asSet()
        const habitanteQueTengaMasRecursos=habitantes.max
        ({
            h => h.recursos()
        }).asSet()
        return habitantesDestacados.union(habitanteQueTengaMasRecursos).asList()
    }

    method esValioso()
    {
        return construcciones.sum({c => c.valor()})>100
    }
}