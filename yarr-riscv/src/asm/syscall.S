.global yarr_make_syscall
yarr_make_syscall:
    # makes a7 the syscall number
    # args are a0 - a5
	mv	a7, a0
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	mv	a5, a6
	ecall
	ret