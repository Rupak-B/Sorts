let unsortedIntegers = (readLine(strippingNewline: true))?.split {$0 == " "}.map (String.init)
print(unsortedIntegers!)
  
var x = 0
var a = unsortedIntegers
var n = unsortedIntegers.count - 1
let count = 0...n
var store = 0
var swap = 0
var swapNow = 0
var passCount = 0
for i in count {
    key = a[i]
    x = i - 1
    while x >= 0 && a[x] > store {
        a[x+1] = a[x]
        x = x - 1
        a[x+1] = store
        swap += 1
        swapNow += 1
    }
    print("Pass: \(passCount), Swaps: \(swapNow)/\(swap), Array: \(a)")
    passCount += 1
    swapNow = 0
}
