with Ada.Text_IO; use Ada.Text_IO;

package body Scheduler is

   protected Scheduler_Control is
      entry Request_Run (Id : Task_Id; P : Priority);
      procedure Task_Done (Id : Task_Id);
   private
      Busy : Boolean := False;
   end Scheduler_Control;

   protected body Scheduler_Control is

      entry Request_Run (Id : Task_Id; P : Priority)
        when not Busy
      is
      begin
         Busy := True;
         Put_Line
           ("[Scheduler] Allowing Task"
            & Task_Id'Image(Id)
            & " (Priority"
            & Priority'Image(P)
            & ")");
      end Request_Run;

      procedure Task_Done (Id : Task_Id) is
      begin
         Busy := False;
         Put_Line
           ("[Scheduler] Task"
            & Task_Id'Image(Id)
            & " finished");
      end Task_Done;

   end Scheduler_Control;

   task body Worker is
   begin
      -- Ask scheduler for permission
      Scheduler_Control.Request_Run (Id, P);

      -- Simulated work
      Put_Line
        ("Task"
         & Task_Id'Image(Id)
         & " running");

      delay 2.0;

      -- Notify scheduler
      Scheduler_Control.Task_Done (Id);
   end Worker;

end Scheduler;
