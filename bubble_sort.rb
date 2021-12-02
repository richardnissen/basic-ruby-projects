def bubble_sort(arr)
    n = arr.length
    loop do
        swapped = false
        for i in 1..n - 1 do
            if arr[i-1] > arr[i] then
                temp = arr[i-1]
                arr[i-1] = arr[i]
                arr[i] = temp
                swapped = true
            end
            p arr
        end
        n -= 1
        break if !swapped
    end
    arr
end

p bubble_sort([6,5,4,3,2,1])