package androidx.h;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Looper;
import androidx.i.a.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile androidx.i.a.b f1838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<b> f1840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f1841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.i.a.c f1842e;
    private boolean g;
    private final ReentrantLock h = new ReentrantLock();
    private final androidx.h.c f = c();

    public static abstract class b {
        public void a(androidx.i.a.b bVar) {
        }

        public void b(androidx.i.a.b bVar) {
        }
    }

    protected abstract androidx.i.a.c b(androidx.h.a aVar);

    protected abstract androidx.h.c c();

    Lock a() {
        return this.h;
    }

    public void a(androidx.h.a aVar) {
        this.f1842e = b(aVar);
        if (Build.VERSION.SDK_INT >= 16) {
            z = aVar.g == c.WRITE_AHEAD_LOGGING;
            this.f1842e.a(z);
        }
        this.f1840c = aVar.f1800e;
        this.f1841d = aVar.h;
        this.g = aVar.f;
        this.f1839b = z;
    }

    public androidx.i.a.c b() {
        return this.f1842e;
    }

    public boolean d() {
        androidx.i.a.b bVar = this.f1838a;
        return bVar != null && bVar.e();
    }

    public void e() {
        if (!this.g && k()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public Cursor a(String str, Object[] objArr) {
        return this.f1842e.a().a(new androidx.i.a.a(str, objArr));
    }

    public Cursor a(androidx.i.a.e eVar) {
        e();
        return this.f1842e.a().a(eVar);
    }

    public androidx.i.a.f a(String str) {
        e();
        return this.f1842e.a().a(str);
    }

    public void f() {
        e();
        androidx.i.a.b bVarA = this.f1842e.a();
        this.f.b(bVarA);
        bVarA.a();
    }

    public void g() {
        this.f1842e.a().b();
        if (j()) {
            return;
        }
        this.f.b();
    }

    public Executor h() {
        return this.f1841d;
    }

    public void i() {
        this.f1842e.a().c();
    }

    protected void a(androidx.i.a.b bVar) {
        this.f.a(bVar);
    }

    public boolean j() {
        return this.f1842e.a().d();
    }

    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        c a(Context context) {
            ActivityManager activityManager;
            if (this != AUTOMATIC) {
                return this;
            }
            if (Build.VERSION.SDK_INT >= 16 && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && !androidx.core.app.b.a(activityManager)) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    public static class a<T extends e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f1843a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f1844b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Context f1845c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<b> f1846d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Executor f1847e;
        private c.InterfaceC0050c f;
        private boolean g;
        private c h = c.AUTOMATIC;
        private boolean i = true;
        private final d j = new d();
        private Set<Integer> k;
        private Set<Integer> l;

        a(Context context, Class<T> cls, String str) {
            this.f1845c = context;
            this.f1843a = cls;
            this.f1844b = str;
        }

        public T a() {
            if (this.f1845c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.f1843a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            if (this.f1847e == null) {
                this.f1847e = androidx.a.a.a.a.b();
            }
            Set<Integer> set = this.l;
            if (set != null && this.k != null) {
                for (Integer num : set) {
                    if (this.k.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                    }
                }
            }
            if (this.f == null) {
                this.f = new androidx.i.a.a.c();
            }
            Context context = this.f1845c;
            androidx.h.a aVar = new androidx.h.a(context, this.f1844b, this.f, this.j, this.f1846d, this.g, this.h.a(context), this.f1847e, this.i, this.k);
            T t = (T) androidx.h.d.a(this.f1843a, "_Impl");
            t.a(aVar);
            return t;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.c.h<androidx.c.h<androidx.h.a.a>> f1852a = new androidx.c.h<>();

        public List<androidx.h.a.a> a(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return a(new ArrayList(), i2 > i, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0019 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.util.List<androidx.h.a.a> a(java.util.List<androidx.h.a.a> r11, boolean r12, int r13, int r14) {
            /*
                r10 = this;
                r0 = -1
                r1 = 1
                if (r12 == 0) goto L6
                r2 = -1
                goto L7
            L6:
                r2 = 1
            L7:
                if (r12 == 0) goto Lc
                if (r13 >= r14) goto L4d
                goto Le
            Lc:
                if (r13 <= r14) goto L4d
            Le:
                androidx.c.h<androidx.c.h<androidx.h.a.a>> r3 = r10.f1852a
                java.lang.Object r3 = r3.a(r13)
                androidx.c.h r3 = (androidx.c.h) r3
                r4 = 0
                if (r3 != 0) goto L1a
                return r4
            L1a:
                int r5 = r3.b()
                r6 = 0
                if (r12 == 0) goto L25
                int r5 = r5 + (-1)
                r7 = -1
                goto L27
            L25:
                r7 = r5
                r5 = 0
            L27:
                if (r5 == r7) goto L4a
                int r8 = r3.d(r5)
                if (r12 == 0) goto L37
                if (r8 > r14) goto L35
                if (r8 <= r13) goto L35
            L33:
                r9 = 1
                goto L3c
            L35:
                r9 = 0
                goto L3c
            L37:
                if (r8 < r14) goto L35
                if (r8 >= r13) goto L35
                goto L33
            L3c:
                if (r9 == 0) goto L48
                java.lang.Object r13 = r3.e(r5)
                r11.add(r13)
                r13 = r8
                r6 = 1
                goto L4a
            L48:
                int r5 = r5 + r2
                goto L27
            L4a:
                if (r6 != 0) goto L7
                return r4
            L4d:
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.h.e.d.a(java.util.List, boolean, int, int):java.util.List");
        }
    }

    private static boolean k() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
