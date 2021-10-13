import UIKit

//Can user log in
let isLoggedIn:Bool = false
if isLoggedIn {
print("The system is logged in ✅ \n ----------------")
} else {
    print("The password you entered is incorrect ❌")
}

enum Roomcondition {
  case available
    case Unavailable
}

var hotellocation: Set<String>
hotellocation = []
hotellocation.insert("Jeedh")
hotellocation.insert("Ryadh")
hotellocation.insert("Dammam")
print("Hotel Location 📍\n \(hotellocation)  \n ----------------")
//Can user view type room
//Can user view room list and prices
struct Room {
    var typeRoom: String = ""
    var roomNum: Int = 0
    var pricesroom: Double = 0
    var options : [String] = []
    var isAvailable: Roomcondition
    
    func checkIfRoomAvailable() -> String? {
        if isAvailable == .available {
            return "available"
        } else {
            return "Unavailable"
            
        }
    }
}


class Hotel {
    var rooms : [Room] = []
    init(multipleRooms: Room) {
        self.rooms = [multipleRooms]
    }
    
    func printAll() {
        for we in rooms {
            print("🔘Room List and Price💰\nTypes Room : \(we.typeRoom) \nRoom number : \(we.roomNum) \nRoom price : \(we.pricesroom)")
        }
    }
    
    func AddRoom(AddROMS1 : Room){
        rooms.append(AddROMS1)
        print("Add Room")
    }
    
    func DeletRoom(index : Int){
        rooms.remove(at : index)
        print("Delet Room")
    }
    func updateRoom(index: Int, updateRoom: Room){
        rooms[index] = updateRoom
        print("Chenge Room")
    }
    
}

var room1 = Room(typeRoom: "Master Room", roomNum: 101, pricesroom: 405.9, options: [], isAvailable: .Unavailable)
var room2 = Room(typeRoom: "Mini-Suit", roomNum: 209, pricesroom: 600.8, options: [], isAvailable: .available)
var room3 = Room.init(typeRoom: "Master room", roomNum: 608, pricesroom: 44.9, options: [], isAvailable: .Unavailable)

let myHotel = Hotel(multipleRooms: room1)
myHotel.AddRoom(AddROMS1: room2)
//myHotel.DeletRoom(index: 0)
//myHotel.updateRoom(index: 0, updateRoom: room2)
myHotel.printAll()


var MasterRoom = [String]()
MasterRoom.append("Break Fast")
MasterRoom.append("Swimming Pool")
MasterRoom.append("WiFi")
MasterRoom.append("Gym")

var PriceMR = [Int]()
PriceMR.append(200)
PriceMR.append(250)
PriceMR.append(150)
PriceMR.append(200)

PriceMR.sort()
print(" \(MasterRoom)\n \(PriceMR)")

//var RoomPrice: Dictionary<String,Int>
//RoomPrice = ["OK": 78,
  //           "Access forbidden": 76,
    //         "File not found": 876,
      //       "Internal server error": 98]
//print(RoomPrice)

//Can user  reserve booking
//Can user cancellation of rooms
let bookingAndcancellation:Bool = false

if bookingAndcancellation {
    print(" --------------\n Room is booked")}
else{
    print(" --------------\n Room reservation has been cancelled")
}

