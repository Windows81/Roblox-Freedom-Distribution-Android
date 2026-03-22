package androidx.h;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {
    private static final String[] j = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long[] f1823b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final e f1826e;
    volatile androidx.i.a.f g;
    private String[] k;
    private a m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object[] f1824c = new Object[1];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1825d = 0;
    AtomicBoolean f = new AtomicBoolean(false);
    private volatile boolean l = false;
    final androidx.a.a.b.b<b, C0049c> h = new androidx.a.a.b.b<>();
    Runnable i = new Runnable() { // from class: androidx.h.c.1
        @Override // java.lang.Runnable
        public void run() {
            Lock lockA = c.this.f1826e.a();
            boolean zA = false;
            try {
                try {
                    lockA.lock();
                } finally {
                    lockA.unlock();
                }
            } catch (SQLiteException | IllegalStateException e2) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
            }
            if (c.this.a()) {
                if (c.this.f.compareAndSet(true, false)) {
                    if (c.this.f1826e.j()) {
                        return;
                    }
                    c.this.g.a();
                    c.this.f1824c[0] = Long.valueOf(c.this.f1825d);
                    if (c.this.f1826e.f1839b) {
                        androidx.i.a.b bVarA = c.this.f1826e.b().a();
                        try {
                            bVarA.a();
                            zA = a();
                            bVarA.c();
                            bVarA.b();
                        } catch (Throwable th) {
                            bVarA.b();
                            throw th;
                        }
                    } else {
                        zA = a();
                    }
                    if (zA) {
                        synchronized (c.this.h) {
                            Iterator<Map.Entry<b, C0049c>> it = c.this.h.iterator();
                            while (it.hasNext()) {
                                it.next().getValue().a(c.this.f1823b);
                            }
                        }
                    }
                }
            }
        }

        private boolean a() {
            Cursor cursorA = c.this.f1826e.a("SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;", c.this.f1824c);
            boolean z = false;
            while (cursorA.moveToNext()) {
                try {
                    long j2 = cursorA.getLong(0);
                    c.this.f1823b[cursorA.getInt(1)] = j2;
                    c.this.f1825d = j2;
                    z = true;
                } finally {
                    cursorA.close();
                }
            }
            return z;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    androidx.c.a<String, Integer> f1822a = new androidx.c.a<>();

    public static abstract class b {
        public abstract void a(Set<String> set);
    }

    public c(e eVar, String... strArr) {
        this.f1826e = eVar;
        this.m = new a(strArr.length);
        int length = strArr.length;
        this.k = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.f1822a.put(lowerCase, Integer.valueOf(i));
            this.k[i] = lowerCase;
        }
        long[] jArr = new long[strArr.length];
        this.f1823b = jArr;
        Arrays.fill(jArr, 0L);
    }

    void a(androidx.i.a.b bVar) {
        synchronized (this) {
            if (this.l) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            bVar.a();
            try {
                bVar.c("PRAGMA temp_store = MEMORY;");
                bVar.c("PRAGMA recursive_triggers='ON';");
                bVar.c("CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)");
                bVar.c();
                bVar.b();
                b(bVar);
                this.g = bVar.a("DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)");
                this.l = true;
            } catch (Throwable th) {
                bVar.b();
                throw th;
            }
        }
    }

    private static void a(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        sb.append("`");
    }

    private void a(androidx.i.a.b bVar, int i) {
        String str = this.k[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : j) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            a(sb, str, str2);
            bVar.c(sb.toString());
        }
    }

    private void b(androidx.i.a.b bVar, int i) {
        String str = this.k[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : j) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            a(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN INSERT OR REPLACE INTO ");
            sb.append("room_table_modification_log");
            sb.append(" VALUES(null, ");
            sb.append(i);
            sb.append("); END");
            bVar.c(sb.toString());
        }
    }

    boolean a() {
        if (!this.f1826e.d()) {
            return false;
        }
        if (!this.l) {
            this.f1826e.b().a();
        }
        if (this.l) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public void b() {
        if (this.f.compareAndSet(false, true)) {
            this.f1826e.h().execute(this.i);
        }
    }

    void b(androidx.i.a.b bVar) {
        if (bVar.d()) {
            return;
        }
        while (true) {
            try {
                Lock lockA = this.f1826e.a();
                lockA.lock();
                try {
                    int[] iArrA = this.m.a();
                    if (iArrA == null) {
                        return;
                    }
                    int length = iArrA.length;
                    try {
                        bVar.a();
                        for (int i = 0; i < length; i++) {
                            int i2 = iArrA[i];
                            if (i2 == 1) {
                                b(bVar, i);
                            } else if (i2 == 2) {
                                a(bVar, i);
                            }
                        }
                        bVar.c();
                        bVar.b();
                        this.m.b();
                    } finally {
                    }
                } finally {
                    lockA.unlock();
                }
            } catch (SQLiteException | IllegalStateException e2) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.h.c$c, reason: collision with other inner class name */
    static class C0049c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f1833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b f1834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String[] f1835c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long[] f1836d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Set<String> f1837e;

        void a(long[] jArr) {
            int length = this.f1833a.length;
            Set<String> bVar = null;
            for (int i = 0; i < length; i++) {
                long j = jArr[this.f1833a[i]];
                long[] jArr2 = this.f1836d;
                if (jArr2[i] < j) {
                    jArr2[i] = j;
                    if (length == 1) {
                        bVar = this.f1837e;
                    } else {
                        if (bVar == null) {
                            bVar = new androidx.c.b<>(length);
                        }
                        bVar.add(this.f1835c[i]);
                    }
                }
            }
            if (bVar != null) {
                this.f1834b.a(bVar);
            }
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long[] f1828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean[] f1829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int[] f1830c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1831d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1832e;

        a(int i) {
            long[] jArr = new long[i];
            this.f1828a = jArr;
            this.f1829b = new boolean[i];
            this.f1830c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(this.f1829b, false);
        }

        int[] a() {
            synchronized (this) {
                if (this.f1831d && !this.f1832e) {
                    int length = this.f1828a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i < length) {
                            boolean z = this.f1828a[i] > 0;
                            if (z != this.f1829b[i]) {
                                int[] iArr = this.f1830c;
                                if (!z) {
                                    i2 = 2;
                                }
                                iArr[i] = i2;
                            } else {
                                this.f1830c[i] = 0;
                            }
                            this.f1829b[i] = z;
                            i++;
                        } else {
                            this.f1832e = true;
                            this.f1831d = false;
                            return this.f1830c;
                        }
                    }
                }
                return null;
            }
        }

        void b() {
            synchronized (this) {
                this.f1832e = false;
            }
        }
    }
}
