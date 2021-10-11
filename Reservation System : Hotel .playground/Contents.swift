import UIKit

var hotellocation: Set<String>
var RoomPrice: Dictionary<String,Int>
hotellocation = []
hotellocation.insert("Jeedh")
hotellocation.insert("Ryadh")
hotellocation.insert("Dammam")

let wel = "Welcom To Hotel\n----------------"
print(wel)

RoomPrice = [:]
RoomPrice = ["Master Suite":600, "Mini-Suit":1115]
//RoomPrice.insert("Master Suite" :600)
//RoomPrice.insert("Mini-Suit")
print("Hotel Location\n \(hotellocation)  \n ----------------")
print("Room List and Price\n \(RoomPrice)  \n ----------------")


//Can user view type room
class Hotel{
    var Welcom: String = ""
    func We(){
        print("Room List and Price\n ") }
}

class Room:Hotel{
    
    var typeRoom: String
    var roomNum: Int
    var pricesroom: Double
    
    override init(){
        self.typeRoom = "Master Room"
        self.roomNum = 302
        self.pricesroom = 600.8
    }
    func available(Typrroom: String?){
    
        if Typrroom == nil {
            print("✅ There are vacant rooms")
        } else {
            print("⭕️ No rooms")
        }
    }
    }

let we = Hotel()
print("More details\n")
let typ = Room()
print("Type Room is : \(typ.typeRoom)")
let num = Room()
print("Room Number is : \(num.roomNum)")
let PE = Room()
print("Room Price is : \(PE.pricesroom)")

let ff = Room()
ff.available(Typrroom: nil)

//Can user view room list and prices

var MasterRoom = Array<String>()
MasterRoom.append("Break Fast")
MasterRoom.append("Swimming Pool")
MasterRoom.append("WiFi")
MasterRoom.append("Gym")

