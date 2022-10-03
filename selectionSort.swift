var array = [1, 2, 3]
func swap(integers:inout [Int], firstIndex:Int, secondIndex:Int) {
    let numerodos = integers[secondIndex]

    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = numerodos

}

var totalCount = array.count


//iterate through array
var x = 0
//iterate which position to place in
var y = 0
//constant where the smallest num is stored
var c = 0
var swap = 0
var count = 0
var cSwap = 0
      print("Pass: \(count), Swaps: \(0)/\(cSwap), Array: \(array)")
while y < totalCount {
    while x < totalCount {
        if array[x] < array[y]
        {
            if array[x] < array[c] {
            c = x
            swap = 1
            }
        }
       
        x += 1
    }
    if swap > 0 {
      swap(integers: &array, firstIndex: y, secondIndex: c)     
      swap = 0
    }
     cSwap += 1
     if y < totalCount - 1 {
     print("Pass: \(cSwap), Swaps: \(1)/\(cSwap), Array: \(array)")
     }
      y += 1
    c = y
    x = y
}

