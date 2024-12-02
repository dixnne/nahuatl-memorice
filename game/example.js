const numeros = [
    {
        nahuatl: "jdjdasjjds",
        español: "jdkjaiksdkas",
        ingles: "jfujhdisa"
    },{
        nahuatl: "jdjdasjjds",
        español: "jdkjaiksdkas",
        ingles: "jfujhdisa"
    }
]

let pares, palabrascartas = []
if(lang == "nahuatl" && gamelang == "ingles") {
    pares.push({
        palabra1: numeros[0].nahuatl,
        palabra2: numeros[0].español
    })
    palabrascartas.push(numeros[0].nahuatl)
    palabrascartas.push(numeros[0].español)
}