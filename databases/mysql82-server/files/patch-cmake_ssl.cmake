--- cmake/ssl.cmake.orig	2023-12-18 11:13:09.203932000 +0100
+++ cmake/ssl.cmake	2023-12-18 17:58:00.139313000 +0100
@@ -155,7 +155,7 @@ MACRO(FIND_OPENSSL_VERSION)
     # Encoded as MNNFFPPS: major minor fix patch status
     FILE(STRINGS "${OPENSSL_INCLUDE_DIR}/openssl/opensslv.h"
       OPENSSL_VERSION_NUMBER
-      REGEX "^#[ ]*define[\t ]+OPENSSL_VERSION_NUMBER[\t ]+0x[0-9].*"
+      REGEX "^#[\t ]*define[\t ]+OPENSSL_VERSION_NUMBER[\t ]+0x[0-9].*"
       )
     STRING(REGEX REPLACE
       "^.*OPENSSL_VERSION_NUMBER[\t ]+0x([0-9]).*$" "\\1"
@@ -533,9 +533,10 @@ FUNCTION(MYSQL_CHECK_SSL)
   ENDIF()
 
   # TODO(tdidriks): move to config.h.cmake / my_config.h
-  IF("${OPENSSL_MAJOR_MINOR_FIX_VERSION}" VERSION_GREATER "1.1.0")
-    ADD_DEFINITIONS(-DHAVE_TLSv13)
-  ENDIF()
+    CHECK_SYMBOL_EXISTS(TLS1_3_VERSION "openssl/tls1.h" HAVE_TLS1_3_VERSION)
+    IF(HAVE_TLS1_3_VERSION)  
+       #ADD_DEFINITIONS(-DHAVE_TLSv13)
+    ENDIF()
 
   GET_TARGET_PROPERTY(foo OpenSSL::SSL INTERFACE_INCLUDE_DIRECTORIES)
   MESSAGE(STATUS "OPENSSL_INCLUDE_DIR = ${foo}")
