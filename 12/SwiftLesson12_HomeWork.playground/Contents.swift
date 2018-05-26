// Task 1

enum Color: String {
    case White = "White"
    case Black = "Black"
}

enum ChessName: String {
    case Rook = "Rook" // Ладья
    case Knight = "Knight" // Конь
    case Bishop = "Bishop" // Слон
    case Queen = "Queen" // Ферзь
    case King = "King" // Король
    case Pawn = "Pawn" // Пешка
}

enum Chess {
    case Rook(color: Color, position: (h: Character, v: Int))// Ладья
    case Knight(color: Color, position: (h: Character, v: Int)) // Конь
    case Bishop(color: Color, position: (h: Character, v: Int)) // Слон
    case Queen(color: Color, position: (h: Character, v: Int)) // Ферзь
    case King(color: Color, position: (h: Character, v: Int)) // Король
    case Pawn(color: Color, position: (h: Character, v: Int)) // Пешка
}

let blackKing = Chess.King(color: .Black, position: ("A", 8))
let whiteKing = Chess.Knight(color: .White, position: ("A", 6))
let whiteQueen = Chess.Queen(color: .White, position: ("B", 7))

// Task 2
print("===Task 2===")

let array = [blackKing, whiteKing, whiteQueen]

func printChess(figure: Chess) {
    switch figure {
    case .Rook(let color, let position):
        print("color: \(color.rawValue) \(ChessName.Rook.rawValue) on position: \(position.h)\(position.v)")
    case .Knight(let color, let position):
        print("color: \(color.rawValue) \(ChessName.Knight.rawValue) on position: \(position.h)\(position.v)")
    case .Bishop(let color, let position):
        print("color: \(color.rawValue) \(ChessName.Bishop.rawValue) on position: \(position.h)\(position.v)")
    case .Queen(let color, let position):
        print("color: \(color.rawValue) \(ChessName.Queen.rawValue) on position: \(position.h)\(position.v)")
    case .King(let color, let position):
        print("color: \(color.rawValue) \(ChessName.King.rawValue) on position: \(position.h)\(position.v)")
    case .Pawn(let color, let position):
        print("color: \(color.rawValue) \(ChessName.Pawn.rawValue) on position: \(position.h)\(position.v)")
    }
}
print("Function uses one figure")
for figure in array {
    printChess(figure: figure)
}

func printArrayOfChess(array: [Chess]) {
    for figure in array {
        printChess(figure: figure)
    }
}
print("Function uses array of chesses")
printArrayOfChess(array: array)

// Task 3
print("===Task 3===")

func Symbols(figure: Chess) -> Character {
    switch figure {
    case .Rook(color: .White, _):
        return "\u{2656}"
    case .Rook(color: .Black, _):
        return "\u{265C}"
    case .Knight(color: .White, _):
        return "\u{2658}"
    case .Knight(color: .Black, _):
        return "\u{265E}"
    case .Bishop(color: .White, _):
        return "\u{2657}"
    case .Bishop(color: .Black, _):
        return "\u{265D}"
    case .Queen(color: .White, _):
        return "\u{2655}"
    case .Queen(color: .Black, _):
        return "\u{265B}"
    case .King(color: .White, _):
        return "\u{2654}"
    case .King(color: .Black, _):
        return "\u{265A}"
    case .Pawn(color: .White, _):
        return "\u{2659}"
    case .Pawn(color: .Black, _):
        return "\u{265F}"
    }
}

func loadChessboard(figures: [Chess]) {

    let letters: [Character] = ["A", "B", "C", "D", "E", "F", "G", "H"]
    var stringLetter = " "
    
    for l in letters {
        stringLetter.append(" \(l)")
    }
    print("\(stringLetter)")
    
    for v in (1...8) {
        var string = "\(v) "
        
        for h in letters {
            let hIndex = letters.index(of: (h)) ?? -1
            var symbol: Character? = nil
            for figure in figures {
                switch figure {
                    case .Rook(_, (h, v)),
                         .Knight(_, (h, v)),
                         .Bishop(_, (h, v)),
                         .Queen(_, (h, v)),
                         .King(_, (h, v)),
                         .Pawn(_, (h, v)): symbol = Symbols(figure: figure)
                default: break
                }
            }
            symbol = symbol ?? ((v + hIndex) % 2 == 0 ? "\u{2B1C}": "\u{2B1B}")
            string.append(symbol!)
            if hIndex == letters.count - 1 {                
                print(string)
            }
        }
    }
}

loadChessboard(figures: array)















