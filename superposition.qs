import Std.Diagnostics.*;
import Std.Convert.*;

operation Main() : Int {
    use qubits = Qubit[3];
    ApplyToEach(H, qubits);
    Message("The qubit register is in a uniform superposition: ");
    DumpMachine();
    mutable results = [];
    for q in qubits {
        Message(" ");
        results += [M(q)];
        DumpMachine();
    }
    ResetAll(qubits);
    Message("Your random number is: ");
    return ResultArrayAsInt(results);
}

// import Std.Diagnostics.*;
// import Std.Convert.*;

// operation Main() : Int {
//     use qubits = Qubit[3];
//     ApplyToEach(H, qubits);
//     Message("The qubit register in a uniform superposition: ");
//     DumpMachine();
//     let result = MeasureEachZ(qubits);
//     Message("Measuring the qubits collapses the superposition to a basis state.");
//     DumpMachine();
//     ResetAll(qubits);
//     return ResultArrayAsInt(result);
// }

// import Std.Diagnostics.*;
// import Std.Math.*;

// operation Main() : Result {
//     use q = Qubit();
//     let P = 0.333333; // P is 1/3
//     Ry(2.0 * ArcCos(Sqrt(P)), q);
//     Message("The qubit is in the desired state.");
//     DumpMachine(); // Dump the state of the qubit 
//     Message("Your skewed random bit is:");
//     let skewedrandomBit = M(q);
//     Reset(q);
//     return skewedrandomBit;
// }

// import Std.Diagnostics.*;

// operation Main() : Result {
//     use q = Qubit();
//     Message("Initialized qubit:");
//     DumpMachine(); // First dump
//     Message(" ");
//     H(q);
//     Message("Qubit after applying H:");
//     DumpMachine(); // Second dump
//     Message(" ");
//     let randomBit = M(q);
//     Message("Qubit after the measurement:");
//     DumpMachine(); // Third dump
//     Message(" ");
//     Reset(q);
//     Message("Qubit after resetting:");
//     DumpMachine(); // Fourth dump
//     Message(" ");
//     return randomBit;
// }