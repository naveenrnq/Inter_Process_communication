// Several ways to communicate the messeges between the classes

// 1. Certain process is completed : There we use Events
// 2. Data is communicated between Classes: Either Simaphor or Mailbox

// Event is used to communicate important messege between classes


// To Trigger an event: ->
// Sensing an event 
// Edge sensitive blocking @(),
// Level_Sensitive non-blocking: wait

module tb;

  event a; // You could adopt this concept in classes as well

  initial begin
    #10;
    -> a; // Trigger event
  end

  initial begin
    @(a); // Blocking
    $display("Received Event at %0t", $time);
  end

  initial begin
    // Trigger using wait
    wait(a.triggered);
    $display("Received Event at %0t", $time);
  end

endmodule
