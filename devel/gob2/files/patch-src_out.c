--- src/out.c.orig	2009-07-10 16:43:05.000000000 +0200
+++ src/out.c	2009-11-27 14:07:58.000000000 +0100
@@ -69,6 +69,13 @@
 	} else
 		g_assert_not_reached();
 
+	/* 
+	 * According to clang developers #line 0 is not allowed by the C spec.
+	 * Gcc does accept it though. http://llvm.org/bugs/show_bug.cgi?id=5603
+	 */
+	if (line == 0)
+		line += 1;
+
 	fprintf(fp, "#line %d \"%s\"\n", line, filename);
 }
 
