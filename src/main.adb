with Scheduler;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Task1 : Scheduler.Worker(1);
   Task2 : Scheduler.Worker(2);
   Task3 : Scheduler.Worker(3);
begin
   Put_Line ("Starting Ada Task Scheduler...");
end Main;
