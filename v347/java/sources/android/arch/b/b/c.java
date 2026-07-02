package android.arch.b.b;

import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final String[] f = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long[] f82b;
    private String[] g;
    private final e j;
    private volatile android.arch.b.a.f l;
    private a m;
    private Object[] h = new Object[1];
    private long i = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    AtomicBoolean f83c = new AtomicBoolean(false);
    private volatile boolean k = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final android.arch.a.b.b<b, C0003c> f84d = new android.arch.a.b.b<>();
    private Runnable n = new Runnable() { // from class: android.arch.b.b.c.1
        @Override // java.lang.Runnable
        public void run() {
            if (c.this.j.i() || !c.this.c()) {
                return;
            }
            while (true) {
                try {
                    int[] iArrA = c.this.m.a();
                    if (iArrA != null) {
                        int length = iArrA.length;
                        android.arch.b.a.b bVarA = c.this.j.b().a();
                        try {
                            bVarA.a();
                            for (int i = 0; i < length; i++) {
                                switch (iArrA[i]) {
                                    case 1:
                                        c.this.b(bVarA, i);
                                        break;
                                    case 2:
                                        c.this.a(bVarA, i);
                                        break;
                                }
                            }
                            bVarA.c();
                            bVarA.b();
                            c.this.m.b();
                        } catch (Throwable th) {
                            bVarA.b();
                            throw th;
                        }
                    } else {
                        return;
                    }
                } catch (SQLiteException | IllegalStateException e) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                    return;
                }
            }
        }
    };
    Runnable e = new Runnable() { // from class: android.arch.b.b.c.2
        /* JADX WARN: Removed duplicated region for block: B:22:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 221
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: android.arch.b.b.c.AnonymousClass2.run():void");
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    android.support.v4.g.a<String, Integer> f81a = new android.support.v4.g.a<>();

    public static abstract class b {
        public abstract void a(Set<String> set);
    }

    public c(e eVar, String... strArr) {
        this.j = eVar;
        this.m = new a(strArr.length);
        int length = strArr.length;
        this.g = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.f81a.put(lowerCase, Integer.valueOf(i));
            this.g[i] = lowerCase;
        }
        this.f82b = new long[strArr.length];
        Arrays.fill(this.f82b, 0L);
    }

    void a(android.arch.b.a.b bVar) {
        synchronized (this) {
            if (this.k) {
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
                this.l = bVar.a("DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)");
                this.k = true;
            } catch (Throwable th) {
                bVar.b();
                throw th;
            }
        }
    }

    private static void a(StringBuilder sb, String str, String str2) {
        sb.append("`").append("room_table_modification_trigger_").append(str).append("_").append(str2).append("`");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.arch.b.a.b bVar, int i) {
        String str = this.g[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            a(sb, str, str2);
            bVar.c(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(android.arch.b.a.b bVar, int i) {
        String str = this.g[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            a(sb, str, str2);
            sb.append(" AFTER ").append(str2).append(" ON `").append(str).append("` BEGIN INSERT OR REPLACE INTO ").append("room_table_modification_log").append(" VALUES(null, ").append(i).append("); END");
            bVar.c(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        if (!this.j.d()) {
            return false;
        }
        if (!this.k) {
            this.j.b().a();
        }
        if (!this.k) {
            Log.e("ROOM", "database is not initialized even though it is open");
            return false;
        }
        return true;
    }

    public void a() {
        if (this.f83c.compareAndSet(false, true)) {
            android.arch.a.a.a.a().a(this.e);
        }
    }

    void b() {
        this.n.run();
    }

    /* JADX INFO: renamed from: android.arch.b.b.c$c, reason: collision with other inner class name */
    static class C0003c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f91a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b f92b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String[] f93c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long[] f94d;
        private final Set<String> e;

        void a(long[] jArr) {
            int length = this.f91a.length;
            Set<String> bVar = null;
            for (int i = 0; i < length; i++) {
                long j = jArr[this.f91a[i]];
                if (this.f94d[i] < j) {
                    this.f94d[i] = j;
                    if (length == 1) {
                        bVar = this.e;
                    } else {
                        if (bVar == null) {
                            bVar = new android.support.v4.g.b<>(length);
                        }
                        bVar.add(this.f93c[i]);
                    }
                }
            }
            if (bVar != null) {
                this.f92b.a(bVar);
            }
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long[] f87a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean[] f88b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int[] f89c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f90d;
        boolean e;

        a(int i) {
            this.f87a = new long[i];
            this.f88b = new boolean[i];
            this.f89c = new int[i];
            Arrays.fill(this.f87a, 0L);
            Arrays.fill(this.f88b, false);
        }

        int[] a() {
            int[] iArr;
            synchronized (this) {
                if (!this.f90d || this.e) {
                    iArr = null;
                } else {
                    int length = this.f87a.length;
                    for (int i = 0; i < length; i++) {
                        boolean z = this.f87a[i] > 0;
                        if (z != this.f88b[i]) {
                            this.f89c[i] = z ? 1 : 2;
                        } else {
                            this.f89c[i] = 0;
                        }
                        this.f88b[i] = z;
                    }
                    this.e = true;
                    this.f90d = false;
                    iArr = this.f89c;
                }
            }
            return iArr;
        }

        void b() {
            synchronized (this) {
                this.e = false;
            }
        }
    }
}
