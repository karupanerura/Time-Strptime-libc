#ifdef __cplusplus
extern "C" {
#endif

#define PERL_NO_GET_CONTEXT /* we want efficiency */
#include <EXTERN.h>
#include <perl.h>
#include <XSUB.h>
#include <time.h>

#ifdef __cplusplus
} /* extern "C" */
#endif

#define NEED_newSVpvn_flags
#include "ppport.h"

MODULE = Time::Strptime::libc    PACKAGE = Time::Strptime::libc

PROTOTYPES: DISABLE

time_t
strptime(format, text)
  const char *format;
  const char *text;
CODE:
{
  struct tm stm = { .tm_isdst = -1 };
  strptime(text, format, &stm);
  RETVAL = mktime(&stm);
}
OUTPUT:
  RETVAL
