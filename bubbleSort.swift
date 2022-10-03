
func swap(integers:inout [Int], firstIndex:Int, secondIndex:Int) {
    let numerodos = integers[secondIndex]

    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = numerodos

}
var numoe = unsortedIntegers.count
var mm = true
var array = unsortedIntegers
var x = 0
var pass = 0
var swaps = 0
var totalSwaps = 0
print("Pass: "+String(pass)+", Swaps: "+String(swaps)+"/"+String(totalSwaps)+", Array: \(array)")
while mm
{
    mm = false
    while x != numoe - 1
    {
        let number1 = array[x]
        let number2 = array[x+1]
        if number1 > number2
        {
            swap(integers: &array, firstIndex: x+1, secondIndex: x)
            x += 1
            swaps += 1
            mm = true
            totalSwaps += 1
        }
        else
        {
            x += 1
        }
    }
    pass += 1
    print("Pass: "+String(pass)+", Swaps: "+String(swaps)+"/"+String(totalSwaps)+", Array: \(array)")
    swaps = 0
    x = 0
}




