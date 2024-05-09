--- sql/auth/sql_authorization.cc.orig	2023-10-12 11:40:36 UTC
+++ sql/auth/sql_authorization.cc
@@ -236,6 +236,10 @@ bool operator==(const Role_id &a, const std::string &b
   return tmp == b;
 }
 
+bool operator==(const Role_id &a, const LEX_CSTRING &b) {
+  return a == to_string(b);
+}
+
 bool operator==(const std::pair<Role_id, bool> &a, const std::string &b) {
   return a.first == b;
 }
