pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~prueba_4enraya.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~prueba_4enraya.adb");
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E074 : Short_Integer; pragma Import (Ada, E074, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "ada__io_exceptions_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "ada__strings_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "ada__strings__maps_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada__strings__maps__constants_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__tags_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "ada__streams_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "interfaces__c_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "system__finalization_root_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "ada__finalization_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "system__storage_pools_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "system__finalization_masters_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "system__storage_pools__subpools_E");
   E089 : Short_Integer; pragma Import (Ada, E089, "system__pool_global_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "system__file_control_block_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "system__file_io_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__secondary_stack_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__text_io_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E006 := E006 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      E079 := E079 - 1;
      E093 := E093 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E064 := E064 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__file_control_block__finalize_spec");
      begin
         E077 := E077 - 1;
         F3;
      end;
      E089 := E089 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__pool_global__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E046 := E046 + 1;
      Ada.Strings'Elab_Spec;
      E109 := E109 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E114 := E114 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E045 := E045 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      System.Finalization_Root'Elab_Spec;
      E068 := E068 + 1;
      Ada.Finalization'Elab_Spec;
      E066 := E066 + 1;
      System.Storage_Pools'Elab_Spec;
      E087 := E087 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E089 := E089 + 1;
      System.File_Control_Block'Elab_Spec;
      E077 := E077 + 1;
      System.File_Io'Elab_Body;
      E064 := E064 + 1;
      E093 := E093 + 1;
      System.Finalization_Masters'Elab_Body;
      E079 := E079 + 1;
      E070 := E070 + 1;
      Ada.Tags'Elab_Body;
      E048 := E048 + 1;
      E111 := E111 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Os_Lib'Elab_Body;
      E074 := E074 + 1;
      System.Secondary_Stack'Elab_Body;
      E017 := E017 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E006 := E006 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_prueba_4enraya");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   B:\Programacion\conecta 4\lib\datos.o
   --   B:\Programacion\conecta 4\lib\comprobar_diagonal.o
   --   B:\Programacion\conecta 4\lib\comprobar_espacio.o
   --   B:\Programacion\conecta 4\lib\comprobar_horizontal.o
   --   B:\Programacion\conecta 4\lib\comprobar_vertical.o
   --   B:\Programacion\conecta 4\lib\comprobar_si_gana.o
   --   B:\Programacion\conecta 4\lib\Colocar_Ficha.o
   --   B:\Programacion\conecta 4\lib\imprimir_Tablero.o
   --   B:\Programacion\conecta 4\lib\inicializar_Tablero.o
   --   B:\Programacion\conecta 4\lib\Solicitar_Columna.o
   --   B:\Programacion\conecta 4\lib\prueba_4enraya.o
   --   -LB:\Programacion\conecta 4\lib\
   --   -LB:\Programacion\conecta 4\lib\
   --   -LB:/GNAT/lib/gcc/i686-pc-mingw32/4.7.4/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
