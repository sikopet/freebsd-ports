--- ./packages/swi-minisat2/C/SolverTypes.h.orig	2013-08-13 18:37:17.000000000 -0300
+++ ./packages/swi-minisat2/C/SolverTypes.h	2013-08-13 18:38:31.000000000 -0300
@@ -97,6 +97,9 @@
 //=================================================================================================
 // Clause -- a simple class for representing a clause:
 
+class Clause;
+template<class V>
+Clause* Clause_new(const V&, bool = false);
 
 class Clause {
     uint32_t size_etc;
@@ -119,7 +122,7 @@
 
     // -- use this function instead:
     template<class V>
-    friend Clause* Clause_new(const V& ps, bool learnt = false);
+    friend Clause* Clause_new(const V&, bool);
 
     int          size        ()      const   { return size_etc >> 3; }
     void         shrink      (int i)         { assert(i <= size()); size_etc = (((size_etc >> 3) - i) << 3) | (size_etc & 7); }
