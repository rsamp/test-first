def add(n1, n2)
    return n1 + n2
end

def subtract(n1, n2)
    return n1 - n2
end

def sum(arr)
    total = 0
    arr.each { |num| total+=num }
    return total
end

def multiply(arr)
    total = 1
    arr.each { |num| total*=num }
    return total
end

def power(n1, n2)
    total = 1
    n2.times { total*=n1 }
    return total
end

def factorial(num)
    if num == 0
        return 1
    else
        return num * factorial(num-1)
    end
end