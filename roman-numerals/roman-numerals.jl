function to_roman(number)
    if number < 1
        return error("Number can not be less than 1")
    end
    
    number_inv = reverse(string(number))

    uni = Dict("0" => "",
               "1" => "I",
               "2" => "II",
               "3" => "III",
               "4" => "IV",
               "5" => "V",
               "6" => "VI",
               "7" => "VII",
               "8" => "VIII",
               "9" => "IX")

    dez = Dict()
    cen = Dict()
    mil = Dict()

    for n in uni
        dez[n[1]] = replace(replace(replace(uni[n[1]], "X" => "C"), "I" => "X"), "V" => "L")
        cen[n[1]] = replace(replace(replace(uni[n[1]], "X" => "M"), "I" => "C"), "V" => "D")
        mil[n[1]] = replace(uni[n[1]], "I" => "M")
    end
    
    romano = []
    for (n, i) in enumerate(number_inv)
        if n == 1
            push!(romano, uni[string(i)])
        elseif n == 2
            push!(romano, dez[string(i)])
        elseif n == 3
            push!(romano, cen[string(i)])
        else
            push!(romano, mil[string(i)])
        end
    end
    join(reverse(romano))
end
