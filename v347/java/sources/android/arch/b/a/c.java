package android.arch.b.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface c {

    /* JADX INFO: renamed from: android.arch.b.a.c$c, reason: collision with other inner class name */
    public interface InterfaceC0001c {
        c a(b bVar);
    }

    android.arch.b.a.b a();

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f51a;

        public abstract void a(android.arch.b.a.b bVar, int i, int i2);

        public abstract void b(android.arch.b.a.b bVar);

        public a(int i) {
            this.f51a = i;
        }

        public void a(android.arch.b.a.b bVar) {
        }

        public void b(android.arch.b.a.b bVar, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }

        public void c(android.arch.b.a.b bVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void d(android.arch.b.a.b r5) throws java.lang.Throwable {
            /*
                r4 = this;
                java.lang.String r0 = "SupportSQLite"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Corruption reported by sqlite on database: "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = r5.f()
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                android.util.Log.e(r0, r1)
                boolean r0 = r5.e()
                if (r0 != 0) goto L2a
                java.lang.String r0 = r5.f()
                r4.a(r0)
            L29:
                return
            L2a:
                r1 = 0
                java.util.List r1 = r5.g()     // Catch: java.lang.Throwable -> L54 android.database.sqlite.SQLiteException -> L7a
            L2f:
                r5.close()     // Catch: java.io.IOException -> L7c java.lang.Throwable -> L7e
            L32:
                if (r1 == 0) goto L4c
                java.util.Iterator r1 = r1.iterator()
            L38:
                boolean r0 = r1.hasNext()
                if (r0 == 0) goto L29
                java.lang.Object r0 = r1.next()
                android.util.Pair r0 = (android.util.Pair) r0
                java.lang.Object r0 = r0.second
                java.lang.String r0 = (java.lang.String) r0
                r4.a(r0)
                goto L38
            L4c:
                java.lang.String r0 = r5.f()
                r4.a(r0)
                goto L29
            L54:
                r0 = move-exception
                r3 = r0
                r0 = r1
                r1 = r3
            L58:
                if (r0 == 0) goto L72
                java.util.Iterator r2 = r0.iterator()
            L5e:
                boolean r0 = r2.hasNext()
                if (r0 == 0) goto L79
                java.lang.Object r0 = r2.next()
                android.util.Pair r0 = (android.util.Pair) r0
                java.lang.Object r0 = r0.second
                java.lang.String r0 = (java.lang.String) r0
                r4.a(r0)
                goto L5e
            L72:
                java.lang.String r0 = r5.f()
                r4.a(r0)
            L79:
                throw r1
            L7a:
                r0 = move-exception
                goto L2f
            L7c:
                r0 = move-exception
                goto L32
            L7e:
                r0 = move-exception
                r3 = r0
                r0 = r1
                r1 = r3
                goto L58
            */
            throw new UnsupportedOperationException("Method not decompiled: android.arch.b.a.c.a.d(android.arch.b.a.b):void");
        }

        private void a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: " + str);
                try {
                    if (Build.VERSION.SDK_INT >= 16) {
                        SQLiteDatabase.deleteDatabase(new File(str));
                    } else {
                        try {
                            if (!new File(str).delete()) {
                                Log.e("SupportSQLite", "Could not delete the database file " + str);
                            }
                        } catch (Exception e) {
                            Log.e("SupportSQLite", "error while deleting corrupted database file", e);
                        }
                    }
                } catch (Exception e2) {
                    Log.w("SupportSQLite", "delete failed: ", e2);
                }
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f52a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f54c;

        b(Context context, String str, a aVar) {
            this.f52a = context;
            this.f53b = str;
            this.f54c = aVar;
        }

        public static a a(Context context) {
            return new a(context);
        }

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Context f55a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f56b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            a f57c;

            public b a() {
                if (this.f57c == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.f55a == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                return new b(this.f55a, this.f56b, this.f57c);
            }

            a(Context context) {
                this.f55a = context;
            }

            public a a(String str) {
                this.f56b = str;
                return this;
            }

            public a a(a aVar) {
                this.f57c = aVar;
                return this;
            }
        }
    }
}
