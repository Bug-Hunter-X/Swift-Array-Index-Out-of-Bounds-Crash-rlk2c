let array = [1, 2, 3]
let index = 4

if index >= 0 && index < array.count {
    let element = array[index]
    print(element) // This will only execute if index is valid
} else {
    print("Index out of bounds") // Handle the error gracefully
}

// Alternatively, using the optional binding:

if let element = array[safe: index] {
    print(element) 
} else {
    print("Index out of bounds")
}

//Safe array access extension
 extension Array {
    subscript (safe index: Int) -> Element? {
        guard index >= 0 && index < endIndex else { return nil }
        return self[index]
    }
} 