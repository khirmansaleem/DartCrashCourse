// ====================== FALLING THROUGH ON ENUMERATION CASES ===============================================
void main() {
// Fallthrough means you want to move from current case to the other one
// and the current dont do anything.
// if you want 3 cases to have the same print statement, you can fall through the cases
// and execute the last one's print statement
  final vehicleType = VehicleType.car;
  switch (vehicleType) {
    case VehicleType.car:
    case VehicleType.bus:
    case VehicleType.van:
      print("special type of vehicle");
      break;
    case VehicleType.truck:
      print("it is a mega vehicle");
  }
}

enum VehicleType { car, bus, truck, van }
