import UIKit

var myFavoriteMovies = ["pulp Fiction","Kill Bill","Reservoir Dogs",5] as [Any]
//as-> casting
//any-> any object

//index
myFavoriteMovies[0]

var myStringArray = ["Test","Test2","Test3"]

myStringArray[0].uppercased()
myStringArray.count
myStringArray[myStringArray.count - 1]

myStringArray.last //sonuncu elemani getir

myStringArray.sort()

var myNumberArray = [1,2,3,4,5,6,7]
myNumberArray.append(8)
 

//SET (icinde bir elemandan en fazla bir tane bulundurur)

//Unordered collection, unique elemnets


var mySet: Set = [1,2,3,4,5]
var myStringSet : Set = ["a","b","c","a"]

var myInternetArray = [1,2,3,1,2,5,6,2,1]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

var mySet3 = mySet1.union(mySet2)
print(mySet3)


//Dictionary
//key-value pairing

var myFavoriteDirectors = ["Pulp Fiction": "Tarantino", " LOck,Stock":"Guy Ritchie","The Dark Knight":"Christopher Nolan"]
myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"

myFavoriteDirectors["Seven Samurai"] = "Akira Kurisowa"
print(myFavoriteDirectors)

var myDictionary = ["Run":100, "Swim":200, "Basketball":300]
myDictionary["Run"]

