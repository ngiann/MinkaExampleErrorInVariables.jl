function plotdata(x, y)

    GLMakie.activate!()

    fig = GLMakie.Figure(resolution = (1800, 1800), fontsize = 44)

    display(fig) 

    ax = GLMakie.Axis(fig[1, 1], xlabel = "x", ylabel = "y", xticklabelsize = 44, ylabelsize = 44)
    
    scatter!(ax, x,y, markersize = 15)

    xlims!(ax, -5, 5); ylims!(ax, -5, 5)
   
    filenamefig = "data.png"

    CairoMakie.activate!() ; save(filenamefig, fig) ; GLMakie.activate!()

end

function plotdata_and_pca(x, y)

    GLMakie.activate!()

    fig = GLMakie.Figure(resolution = (1800, 1800), fontsize = 44)

    display(fig) 

    ax = GLMakie.Axis(fig[1, 1], xlabel = "x", ylabel = "y", xticklabelsize = 44, ylabelsize = 44)

    scatter!(ax, x,y, markersize = 15)

    xlims!(ax, -5, 5); ylims!(ax, -5, 5)


    C = [5 4; 4.0 5.0]

    E = eigen(C).vectors

    v = E[:,2] # principal component

    xplot = -5:0.01:5

    plot!(ax, xplot, v[1]/v[2] * xplot, color="red")


   
    filenamefig = "data_and_pca.png"

    CairoMakie.activate!() ; save(filenamefig, fig) ; GLMakie.activate!()
    
end


function plotdata_and_pca_and_regression(x, y)

    GLMakie.activate!()

    fig = GLMakie.Figure(resolution = (1800, 1800), fontsize = 44)

    display(fig) 

    ax = GLMakie.Axis(fig[1, 1], xlabel = "x", ylabel = "y", xticklabelsize = 44, ylabelsize = 44)

    scatter!(ax, x,y, markersize = 15)

    xlims!(ax, -5, 5); ylims!(ax, -5, 5)


    C = [5 4; 4.0 5.0]

    E = eigen(C).vectors

    v = E[:,2] # principal component

    xplot = -5:0.01:5

    plot!(ax, xplot, v[1]/v[2] * xplot, color="red")

    plot!(ax, xplot, (4/5) * xplot, color="blue")

   
    filenamefig = "data_and_pca_and_regression.png"

    CairoMakie.activate!() ; save(filenamefig, fig) ; GLMakie.activate!()
    
end