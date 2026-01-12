with Scheduler;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   T1 : Scheduler.Worker (1, 1); -- High priority
   T2 : Scheduler.Worker (2, 5);
   T3 : Scheduler.Worker (3, 9); -- Low priority
begin
   Put_Line ("Starting real scheduler...");
end Main;
