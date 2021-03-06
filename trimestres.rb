#Test hash
ventas = {
Enero: 15000,
Febrero: 22000,
Marzo: 12000,
Abril: 17000,
Mayo: 81000,
Junio: 13000,
Julio: 21000,
Agosto: 41200,
Septiembre: 25000,
Octubre: 21500,
Noviembre: 91000,
Diciembre: 21000
}

#Pushing the values of the original hash into a new array. This is a nested array.
trimestres = []

ventas.values.each_slice(3) do |arr|
    trimestres.push(arr)
end

#New array to store the sum of values of each trimester.
ventas_trimestrales = []
trimestres.each do |ele|
    ventas_trimestrales.push(ele.sum)
end

#Creating the output hash.
output = {}
i = 1
ventas_trimestrales.each do |ele|
    output["Q#{i}"] = ele
    i += 1
end

print "#{output}\n"