struct Chess {
    var columns = ["a", "b", "c", "d", "e", "f", "g", "h"]
    var rows = [1, 2, 3, 4, 5, 6, 7, 8]
    
    enum Color: String {
        case Black
        case White
    }
    
    subscript(column: String, row: Int) -> Color? {
        var dict = [String: Color]()
        for row in 1...rows.count {
            for (key, value) in columns.enumerated() {
                let str = String(value) + String(row)
                dict[str] = ((row + key + 1) % 2) == 0 ? .Black : .White
            }
        }
        let cell = column + String(row)
        return dict[cell] ?? nil
    }
}

let chess = Chess()
chess["e", 3]
chess["e", 2]
chess["r", 22]

