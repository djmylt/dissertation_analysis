CMPHLIB=-L/usr/local/lib/libcmph.la -lcmph
GMPLIB=-L/gmp_install/lib -lgmp
CC=gcc
CARGS=-O3 -Wall
PROF=-pg -D PROFILE

aho-corasick:
	$(CC) $(CARGS) -D AHO_CORASICK_TEST stream_test.c -o aho_corasick_test $(CMPHLIB)

aho-corasick-prof:
	$(CC) $(CARGS) $(PROF) -D AHO_CORASICK_TEST stream_test.c -o aho_corasick_profile $(CMPHLIB) $(GMPLIB)

dict-matching:
	$(CC) $(CARGS) stream_test.c -o dict_matching_test $(CMPHLIB) $(GMPLIB)

dict-matching-prof:
	$(CC) $(CARGS) $(PROF) stream_test.c -o dict_matching_profile $(CMPHLIB) $(GMPLIB)
