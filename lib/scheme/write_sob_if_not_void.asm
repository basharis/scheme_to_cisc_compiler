WRITE_SOB_IF_NOT_VOID:
    PUSH(FP)
    MOV(FP, SP)
    MOV(R0, FPARG(0))
    CMP(IND(R0), IMM(T_VOID))
    JUMP_EQ(WRITE_SOB_IF_NOT_VOID_END)
    PUSH(FPARG(0))
    CALL(WRITE_SOB)
    PUSH(IMM('\n'))
    CALL(PUTCHAR)
    DROP(2)
WRITE_SOB_IF_NOT_VOID_END:
    POP(FP)
    RETURN
