let rook = "\u{2656}"
let knight = "\u{2658}"
let bishop = "\u{2657}"
let queen = "\u{2655}"
let king = "\u{2654}"
let pawn = "\u{2659}"
let blackPawn = "\u{265F}"
let blackRook = "\u{265C}"
let blackKnight = "\u{265E}"
let blackBishop = "\u{265D}"
let blackQueen = "\u{265B}"
let blackKing = "\u{265A}"
//print(chessboard, terminator: " ")
var chessboard = """
\(rook)\(knight)\(bishop)\(queen)\(king)\(bishop)\(knight)\(rook)
\(pawn)\(pawn)\(pawn)\(pawn)\(pawn)\(pawn)\(pawn)\(pawn)



\(blackPawn)\(blackPawn)\(blackPawn)\(blackPawn)\(blackPawn)\(blackPawn)\(blackPawn)\(blackPawn)
\(blackRook)\(blackKnight)\(blackBishop)\(blackQueen)\(blackKing)\(blackBishop)\(blackKnight)\(blackRook)
"""
print(chessboard)
print()






