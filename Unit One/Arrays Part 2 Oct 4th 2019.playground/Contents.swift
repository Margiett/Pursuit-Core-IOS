import Foundation

// Arrays Part 2
// Array review
var musicalArtist = ["John Mayer", "Bob Marley", "Burning Spear", "Steel Pulse", "Mos Def", "The beatles", "Norah Jones", "Lauryn Hill"]

let artist = musicalArtist[2]
print("currently playing \(artist) on Spotify")

//array slice
// a view of the array
let reggaeStars = musicalArtist[1...3]
print("some reggare superstars are \(reggaeStars)")


// modify the value of an array using subscripting
musicalArtist[1] += "(Reggae Legend)"

print(musicalArtist)

// replace an element using subscript
musicalArtist[musicalArtist.count - 1] = "Prince"
print(musicalArtist)

for artist in musicalArtist {
  if artist == "John Mayer" {
     break
   }
print("searching for John Mayer")
}

// tuple review

let artist1 = (name: "John Mayer", genre: "pop")
let artist2 = (name: "Beyonce", genre: "Pop, Country, Hip-Hop, Soca, Afro-beat")
let artists = [artist1, artist2]

for artist in artists {
    print("artist name is \(artist.name)")
}
//======================================================================================
//                             multi-dimensional arrays
//======================================================================================

let matrix = [[1,2,3],
             [4, 5, 6],
             [7, 8, 9]
]

let exampleArr = ["Brendon", "Eddie"]
//print out the size of the multi-dimensional array
print("current count is \(matrix.count)")
print()
// using a for-in loop print out the elements of the matrix
// matrix is an array - also multi-dimensional array
for arr in matrix {
    //print(arr)
    // each element in the matrix is an array
    for num in arr { // e.g first time ran => 1, 2, 3
        print(num, terminator: " ")
    }
    print()
}
// using subscripting on a multi-dimensional array


let firstInnerArray = matrix[0]
print("first element in matrix array is \(firstInnerArray)")

//print out last element
let lastInnerArray = matrix[matrix.count - 1]
print("the last element in matrix array is \(matrix[matrix.count - 1])")



