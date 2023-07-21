function generatedata(;N = 50, seed = 1)

    rg = MersenneTwister(seed)

    x, y = zeros(N), zeros(N)

    for n in 1:N

        u, v, w = randn(rg, 3)

        x[n] = u + 2w
        y[n] = v + 2w

    end

    x, y
   
end

