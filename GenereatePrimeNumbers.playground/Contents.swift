import UIKit

var rightNumber = Int.random(in: 2...10)

// function to genetare Prime numbers

func generatePrimes(to n: Int) -> [Int] {
    
    var arr = Array(stride(from: 3, through: n, by: 2))
    
    let squareRootN = Int(Double(n).squareRoot())
    for index in 0... {
        if arr[index] > squareRootN {
            break
        }
        let num = arr.remove(at: index)
        arr = arr.filter { $0 % num != 0 }
        arr.insert(num, at: index)
    }
    
    arr.insert(2, at: 0)
    return arr
}

//print(generatePrimes(to: 100))

// add random numbers to array with  duplicates
var array = [Int]()

for _ in 1...10 {
    let randomNumber = arc4random_uniform(10) + 1
    array.append(Int(randomNumber))
}
//print(array)

// add random numbers to array with no duplicates

array.removeAll()


// Random number Using Repeat-While loop

repeat {
    //generate randon number
    let randomNumber = Int(arc4random_uniform(10) + 1)
    if array.contains(randomNumber) == false {
        array.append(randomNumber)
    }
} while array.count < 10

print(array)

array.removeAll()

// Random number Using While loop

while array.count < 10 {
    let randomNumber = Int(arc4random_uniform(10) + 1)
    if array.contains(randomNumber) == false {
        array.append(randomNumber)
    }
}
print(array)


// Sort arry

var intArray: [Int] = [1,4,67,7,8,9,11,89]
//intArray.sort()
intArray.sort { $0 < $1 }
print(intArray)

func sortedArray(value: Int) -> Bool {
    if intArray.contains(value) {
        return true
    } else {
        return false
    }
}
sortedArray(value: 8)
