package androidx.i.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface c {

    /* JADX INFO: renamed from: androidx.i.a.c$c, reason: collision with other inner class name */
    public interface InterfaceC0050c {
        c a(b bVar);
    }

    androidx.i.a.b a();

    void a(boolean z);

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1881a;

        public void a(androidx.i.a.b bVar) {
        }

        public abstract void a(androidx.i.a.b bVar, int i, int i2);

        public abstract void b(androidx.i.a.b bVar);

        public void c(androidx.i.a.b bVar) {
        }

        public a(int i) {
            this.f1881a = i;
        }

        public void b(androidx.i.a.b bVar, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }

        public void d(androidx.i.a.b bVar) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + bVar.f());
            if (!bVar.e()) {
                a(bVar.f());
                return;
            }
            List<Pair<String, String>> listG = null;
            try {
                try {
                    listG = bVar.g();
                } catch (SQLiteException unused) {
                }
                try {
                    bVar.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (listG != null) {
                    Iterator<Pair<String, String>> it = listG.iterator();
                    while (it.hasNext()) {
                        a((String) it.next().second);
                    }
                } else {
                    a(bVar.f());
                }
            }
        }

        private void a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } else {
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file " + str);
                        }
                    } catch (Exception e2) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e2);
                    }
                }
            } catch (Exception e3) {
                Log.w("SupportSQLite", "delete failed: ", e3);
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f1882a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f1883b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f1884c;

        b(Context context, String str, a aVar) {
            this.f1882a = context;
            this.f1883b = str;
            this.f1884c = aVar;
        }

        public static a a(Context context) {
            return new a(context);
        }

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Context f1885a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f1886b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            a f1887c;

            public b a() {
                a aVar = this.f1887c;
                if (aVar == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                Context context = this.f1885a;
                if (context == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                return new b(context, this.f1886b, aVar);
            }

            a(Context context) {
                this.f1885a = context;
            }

            public a a(String str) {
                this.f1886b = str;
                return this;
            }

            public a a(a aVar) {
                this.f1887c = aVar;
                return this;
            }
        }
    }
}
