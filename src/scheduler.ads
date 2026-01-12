package Scheduler is

   type Task_Id is range 1 .. 10;
   type Priority is range 1 .. 10;

   task type Worker (Id : Task_Id; P : Priority);

end Scheduler;
