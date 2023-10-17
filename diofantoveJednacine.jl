function LDF(a, b, c)
    function eksplicitni_bez(a, b, x0, y0)
        if b == 0
            return (x0, y0)
        end
        q, r = divrem(a, b)
        x1, y1 = eksplicitni_bez(b, r, x0, y0)
        x = y1
        y = x1 - q * y1
        return (x, y)
    end

    d = gcd(a, b)
    
    if c % d != 0
        println("Nema rešenja")
        return (0, 0)
    end
    
    # Reduciraj varijable a, b i c ako je njihov najveći zajednički delilac veći od 1
  #=if d > 1
        a = div(a, d)
        b = div(b, d)
        c = div(c, d)
        if a == 1
            return (c, b)
        end
    end =#
    
    x0, y0 = eksplicitni_bez(a, b, 1, 0)

    k = c ÷ d

    x = x0 * k
    y = y0 * k
    x=mod(x,b)
    return (x, y)
end

function LK(a, k, mod)
    x, y = LDF(a,mod,k)
    println("X ≡ $x (mod $mod)")
    return x
end   

function najmanji_zajednicki_moduli(mapa)
    # Pronalazi najmanji zajednički modul za sve jednačine
    N = 1
    for (_, mod, _) in mapa
        N *= mod
    end
    return N
end

function prošireni_Euklid(a, b)
    if a == 0
        return (b, 0, 1)
    else
        gcd, x, y = prošireni_Euklid(b % a, a)
        return (gcd, y - (b ÷ a) * x, x)
    end
end

function SLK(mapa)
    N = najmanji_zajednicki_moduli(mapa)
    x = 0

    for (a, mod, konstanta) in mapa
        M = N ÷ mod
        _, t, _ = prošireni_Euklid(M, mod)
        x += a * t * M
    end

    # Rešenje može biti negativno, pa dodajemo N dok ne postane pozitivno
    while x < 0
        x += N
    end

    return x
end



