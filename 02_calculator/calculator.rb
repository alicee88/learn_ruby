#write your code here
def add x, y
    x + y
end

def subtract x, y
    x - y
end

def sum arr
    total = 0
    arr.each {|i| total = total + i}
    return total
end

def multiply x, *rest
    total = x
    rest.each {|i| total = total * i}
    return total
end

def power x, y
    x ** y
end

def factorial x
    if(x === 0)
        return 1
    end
    
    total = 1
    while(x > 0) do
        total = total * x
        x = x - 1
    end
    return total
end
