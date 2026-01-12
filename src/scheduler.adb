with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

package body Scheduler is

   task body Worker is
      Start_Time : Time := Clock;
   begin
      for I in 1 .. 5 loop
         Put_Line ("Task " & Integer'Image(Id) &
                   " executing step " & Integer'Image(I));
         delay 1.0;
      end loop;

      Put_Line ("Task " & Integer'Image(Id) &
                " completed in " &
                Duration'Image(Clock - Start_Time) & " seconds");
   end Worker;

end Scheduler;
