/*
**
*/

#ifndef LIB_H_
# define LIB_H_

#include <stdlib.h>

void	*memcpy(void *dest, const void *src, size_t n);
char	*rindex(const char *s, int c);
size_t	strlen(const char *s);
size_t	strcspn(const char *s, const char *reject);
char	*strpbrk(const char *s, const char *accept);
void	*memset(void *s, int c, size_t n);
char	*strchr(const char *s, int c);
int	strcmp(const char *s1, const char *s2);
int	strncmp(const char *s1, const char *s2, size_t n);
int	strcasecmp(const char *s1, const char *s2);
char	*strstr(const char *haystack, const char *needle);

#endif /* !LIB_H_ */
