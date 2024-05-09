--- sql/mysqld.cc.orig	2023-10-12 11:40:36 UTC
+++ sql/mysqld.cc
@@ -7140,7 +7140,7 @@ static PSI_memory_key key_memory_openssl = PSI_NOT_INS
 
 static PSI_memory_key key_memory_openssl = PSI_NOT_INSTRUMENTED;
 
-#if OPENSSL_VERSION_NUMBER < 0x10100000L
+#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
 #define FILE_LINE_ARGS
 #else
 #define FILE_LINE_ARGS , const char *, int
