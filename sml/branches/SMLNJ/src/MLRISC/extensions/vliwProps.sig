(*
 *  Instruction properties for VLIW instruction sets
 *)

signature VLIW_PROPERTIES =
sig

   structure I  : VLIW_INSTRUCTIONS
   structure FU : FUNITS
      sharing I.FU = FU

   (*========================================================================
    *  Assign a functional unit to an instruction 
    *========================================================================*)
   val assignFU : I.instruction * FU.fu -> I.instruction

   (*========================================================================
    *  Form a VLIW issue packet
    *========================================================================*)
   val packet   : I.instruction list -> I.instruction

end

(*
 * $Log$
 *)
