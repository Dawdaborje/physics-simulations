using Plots, DataFrames

function main()
    time = 0:0.01:10
    u = sin.(time * 5)
    step = 1 .- 1 ./ exp.(time)
    df = DataFrame(; time, u, step)

    plt = plot(df.time, u, legend=false)
    plot!(df.time, step)
    return plt
end

plt = main()
display(plt)

println("Press ENTER to exit...")
readline()
