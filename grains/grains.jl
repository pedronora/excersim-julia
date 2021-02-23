"""Calculate the number of grains on square `square`."""
function on_square(square)
    if square > 64 || square ≤ 0
        throw(DomainError("Number can not be less than 0 or bigger than 64"))
    end
    big"2"^(square - 1)
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    if square > 64 || square ≤ 0
        throw(DomainError("Number can not be less than 0 or bigger than 64"))
    end
    big"2"^(square) - 1
end
