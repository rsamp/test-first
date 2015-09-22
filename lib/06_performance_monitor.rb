def measure(n = 1)
    start_time = Time.now
    n.times do
        yield
    end
    return (Time.now - start_time) / n
end