--定义一个阶乘函数
--‌阶乘的符号‌通常用“!”表示。例如，5的阶乘写作5!，表示1×2×3×4×5
function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
    end
    print(fact(5))

    print("enter a number:")
    -- a = io.read("*n")
    -- print(fact(a))
    -- print("hello world")


    --增加负数判断
    function fact2(n)
        if n < 0 then
            return -1
        elseif n == 0 then
            return 1
        else
            return n*fact2(n-1)
        end      
    end
    print(fact2(5))