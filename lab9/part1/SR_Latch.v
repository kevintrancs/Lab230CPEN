//---------------------------------------------------------------------------
// Kevin Tran
//----------------------------------------------------------------------------

module SR_Latch(input Sn, input Rn, output Q, output Qn);

	nand (Q,Rn,Qn);
	nand (Qn,Sn,Q);
	
endmodule
