/* dup2.c
 *
 * COPYRIGHT (c) 1995 by AT&T Bell Laboratories.
 */

#include "ml-base.h"
#include "ml-values.h"
#include "ml-objects.h"
#include "ml-c.h"
#include "cfun-proto-list.h"
#include <unistd.h>

/* _ml_P_IO_dup2 : int * int -> unit
 *
 * Duplicate an open file descriptor
 */
ml_val_t _ml_P_IO_dup2 (ml_state_t *msp, ml_val_t arg)
{
    int             sts;
    int             fd0 = REC_SELINT(arg, 0);
    int             fd1 = REC_SELINT(arg, 1);

    sts = dup2(fd0, fd1);

    CHK_RETURN_UNIT(msp,sts)

} /* end of _ml_P_IO_dup2 */
