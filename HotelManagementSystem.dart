

//Hotel Room Reservation System

import 'dart:io';

Map <int , Map<String, dynamic>> allrooms = 
{
  1: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'No'},
  2: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'No'},
  3: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'No'},
  4: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'} ,
  5: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  6: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  7: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  8: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  9: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  10: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'Yes', 'Private Bathroom': 'Yes'},
  11: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'Yes', 'Private Bathroom': 'Yes'},
  12: {'Room Type' : 'Single Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'Yes', 'Private Bathroom': 'Yes'},
  13: {'Room Type' : 'Double Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'No'},
  14: {'Room Type' : 'Double Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  15: {'Room Type' : 'Double Room' , 'Air Conditioned' : 'No', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  16: {'Room Type' : 'Double Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'No', 'Private Bathroom': 'Yes'},
  17: {'Room Type' : 'Double Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'Yes', 'Private Bathroom': 'Yes'},
  18: {'Room Type' : 'Double Room' , 'Air Conditioned' : 'Yes', 'Swimming Pool Eligibility' : 'Yes', 'Private Bathroom': 'Yes'}
};

List <int> available = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];
List <int> reserved = [];

Map <int , Map<String, dynamic>> customers =
{
  100: {'Name' : 'Wasif', 'Password' : 'Wasif'}
};

//Hotel Reservation System 

void customerMenu()
{
  print("Enter Your Choice: ");
  print("1) Display All Rooms along with their details (Pool/Bathroom Availability etc)");
  print("2) Check Available Rooms");
  print("3) Check Reserved Rooms");
  print("4) Reserve a Room");
  print('5) Exit');
  int input = int.parse(stdin.readLineSync()!);

  if(input == 1)
  {
    print('All the rooms along with their details:');
    print(allrooms);
    customerMenu();
  }

  if(input == 2)
  {
    availableRooms();
  }

  if(input == 3)
  {
    reservedRooms();
  }

  if(input == 4)
  {
    roomReservation();
  }
  
  if(input == 5)
  {
    return;
  }

} 

void adminLogin()
{
   print('Enter Your Username To Login: (Admin) ');
   String? input = stdin.readLineSync();
   if(input == 'admin' || input == 'Admin')
   {
    print('Enter Your Password To Login: (Admin): ');
    String? password = stdin.readLineSync();
    if(password == 'admin' || password == 'Admin')
    {
      print('Logged In Successfully!');
      adminMenu();
    }

   }
   }

 adminMenu()
  {
    print("Enter Your Choice: ");
  print("1) Display All Rooms");
  print("2) Available Rooms");
  print("3) Reserved Rooms");
  print('4) Exit');
  int input = int.parse(stdin.readLineSync()!);

  if(input == 1)
  {
    print('All the rooms along with their details:');
    print(allrooms);
    customerMenu();
  }

  if(input == 2)
  {
    availableRooms();
  }

  if(input == 3)
  {
    reservedRooms();
  }
  
  if(input == 4)
  {
    return;
  }

  }

void main()
{
  bool endProgram = false;

  while (!endProgram)
  {
  print('Enter You Choice: ');
  print('Are You Admin or Customer? ');
  print('1) Admin ');
  print('2) Customer ');
  print('3) Exit Program ');

  int input = int.parse(stdin.readLineSync()!);

  if(input == 1)
  {
    adminLogin();
  }

  if(input == 2)
  {
    customerLogin();
  }

  if(input == 3)
  {
    endProgram = true;
  }
  
  }
}


void addCustomer()
{  //Taking credentials from the user
    print('Enter Your Name: ');
    String? name = stdin.readLineSync();
    print('Enter your CNIC:');
    int? cnic = int.parse(stdin.readLineSync()!);
    print('Create yout password: ');
    String? password = stdin.readLineSync();
    print('Account Created Successfully! ');
    
    customers[cnic] = {'Name' : name , 'Password' :password}; //New customer ki details save hojayegi map mai
    
}

void customerLogin()
{
  print('Enter your Choice');
  print("1) Create New Account");
  print("2) Already have an account, Login");
  print("3) Exit");

  int input = int.parse(stdin.readLineSync()!);
  
  if(input == 1)
  {
    addCustomer();
  }

  if(input == 2)
  {
    print('Enter Your CNIC: ');
    int cnic = int.parse(stdin.readLineSync()!);
    
    bool cnicExist = false;
    customers.forEach((key, value) //Iterating in map to check if CNIC exists or not
    {
      if (cnic == key)
      {
        cnicExist = true;  //If CNIC exists then ask for password
        print('Enter Your Password: ');
        String? pass = stdin.readLineSync(); 
        
          String correctPassword = customers[cnic]!['Password']; //Checking Password
          if (pass == correctPassword)
          {
            print("Logged in Successfully!");
            customerMenu();
          }

          else if (pass != correctPassword)
          {
            print('Wrong Password! ');
          }
      }
    });
    
    if (cnicExist == false)
    {
      print('CNIC is not registered, register yourself first or try again with correct CNIC.');
    }
  }
  if(input == 3)
  {
    return;
  }

}

void availableRooms()
{
  
  print("Available Rooms Are: ");

  if(available.length > 0)
  {
  for(int i = 0; i<available.length; i++)
  {
    print('Room Number: ${available[i]}');
    
  }
  }

  else if(available.length == 0)
  {
    print('Sorry, No Room Available!');
  }
  customerMenu();

}


void reservedRooms()
{
  print('Reserved Rooms Are:');

  if(reserved.length > 0)
  {

  for(int i=0; i<reserved.length; i++)
  {
    print('Room Number: ${reserved[i]}');
  }
  }
  else if (reserved.length == 0)
  {
    print("No Room Is Reserved Yet!"); 
  }
  customerMenu();
}

void roomReservation()
{
  print('Enter Room Number You Want to Reserve: [1-18]');
  int input  = int.parse(stdin.readLineSync()!);
  
  bool isReserved = false;
  bool isavailable = false;

  for (int i = 0; i < reserved.length; i++)
  {
    if(input == reserved[i])
    {
      isReserved = true;
      break;
    }  
  }

  for(int j = 0; j < available.length; j++)
  {
    if(input == available[j])
    {
      isavailable = true;
      break;
    }
  }

  if(isavailable == true || isReserved == false)
  {
    reserved.add(input);
    available.remove(input);
    print('Your Room Has Been Reserved Successfully!');
  }

  else if(isavailable == false || isReserved == true)
  {
    print('Sorry, the desired room is not available! Please check available rooms and try again.');
  }
  
  else if(isavailable == false || isReserved == false)
  {
    print('Invalid Room. Please try again.');
  }
  customerMenu();
}
