(* alpha32gen.sml
 *
 * COPYRIGHT (c) 1996 Bell Laboratories.
 *
 *)

structure Alpha32XMC = 
  FLINTComp(
    structure Alpha32Gen = Alpha32XCG(structure Emitter=Alpha32XMCEmitter)
    structure Gen=Alpha32Gen.MLTreeGen
    fun collect() = (Alpha32Gen.finish(); CodeString.getCodeString()))



(*
 * $Log: alpha32xGen.sml,v $
 * Revision 1.1.1.1  1997/01/14 01:38:09  george
 *   Version 109.24
 *
 *)
