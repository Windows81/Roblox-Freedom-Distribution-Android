package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f3057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f3058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StringBuilder f3059c = new StringBuilder();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final SQLiteDatabase f3060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f3061e;
    final String f;
    final int g;
    final String h;
    final int i;
    final long j;
    private SQLiteStatement k;
    private SQLiteStatement l;
    private SQLiteStatement m;
    private SQLiteStatement n;
    private SQLiteStatement o;
    private SQLiteStatement p;

    public b(SQLiteDatabase sQLiteDatabase, String str, String str2, int i, String str3, int i2, long j) {
        this.f3060d = sQLiteDatabase;
        this.f3061e = str;
        this.g = i;
        this.f = str2;
        this.j = j;
        this.i = i2;
        this.h = str3;
        this.f3057a = "SELECT * FROM " + str + " WHERE " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3053b.f3069a + " = ?";
        this.f3058b = "SELECT * FROM " + str + " WHERE " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3053b.f3069a + " IN ( SELECT " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.m.f3069a + " FROM " + str3 + " WHERE " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.n.f3069a + " = ?)";
    }

    public static String a(String str, c cVar, c... cVarArr) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(str);
        sb.append(" (");
        sb.append(cVar.f3069a);
        sb.append(" ");
        sb.append(cVar.f3070b);
        sb.append("  primary key ");
        for (c cVar2 : cVarArr) {
            sb.append(", `");
            sb.append(cVar2.f3069a);
            sb.append("` ");
            sb.append(cVar2.f3070b);
            if (cVar2.f3073e) {
                sb.append(" UNIQUE");
            }
        }
        for (c cVar3 : cVarArr) {
            if (cVar3.f3072d != null) {
                a aVar = cVar3.f3072d;
                sb.append(", FOREIGN KEY(`");
                sb.append(cVar3.f3069a);
                sb.append("`) REFERENCES ");
                sb.append(aVar.f3062a);
                sb.append("(`");
                sb.append(aVar.f3063b);
                sb.append("`) ON DELETE CASCADE");
            }
        }
        sb.append(" );");
        com.birbit.android.jobqueue.log.a.a(sb.toString(), new Object[0]);
        return sb.toString();
    }

    public static String a(String str) {
        return "DROP TABLE IF EXISTS " + str;
    }

    public SQLiteStatement a() {
        if (this.k == null) {
            this.f3059c.setLength(0);
            StringBuilder sb = this.f3059c;
            sb.append("INSERT INTO ");
            sb.append(this.f3061e);
            this.f3059c.append(" VALUES (");
            for (int i = 0; i < this.g; i++) {
                if (i != 0) {
                    this.f3059c.append(",");
                }
                this.f3059c.append("?");
            }
            this.f3059c.append(")");
            this.k = this.f3060d.compileStatement(this.f3059c.toString());
        }
        return this.k;
    }

    public SQLiteStatement b() {
        if (this.l == null) {
            this.f3059c.setLength(0);
            StringBuilder sb = this.f3059c;
            sb.append("INSERT INTO ");
            sb.append("job_holder_tags");
            this.f3059c.append(" VALUES (");
            for (int i = 0; i < this.i; i++) {
                if (i != 0) {
                    this.f3059c.append(",");
                }
                this.f3059c.append("?");
            }
            this.f3059c.append(")");
            this.l = this.f3060d.compileStatement(this.f3059c.toString());
        }
        return this.l;
    }

    public SQLiteStatement c() {
        if (this.p == null) {
            this.p = this.f3060d.compileStatement("SELECT COUNT(*) FROM " + this.f3061e + " WHERE " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.i.f3069a + " != ?");
        }
        return this.p;
    }

    public SQLiteStatement d() {
        if (this.m == null) {
            this.f3059c.setLength(0);
            StringBuilder sb = this.f3059c;
            sb.append("INSERT OR REPLACE INTO ");
            sb.append(this.f3061e);
            this.f3059c.append(" VALUES (");
            for (int i = 0; i < this.g; i++) {
                if (i != 0) {
                    this.f3059c.append(",");
                }
                this.f3059c.append("?");
            }
            this.f3059c.append(")");
            this.m = this.f3060d.compileStatement(this.f3059c.toString());
        }
        return this.m;
    }

    public SQLiteStatement e() {
        if (this.n == null) {
            this.n = this.f3060d.compileStatement("DELETE FROM " + this.f3061e + " WHERE " + this.f + " = ?");
        }
        return this.n;
    }

    public SQLiteStatement f() {
        if (this.o == null) {
            this.o = this.f3060d.compileStatement("UPDATE " + this.f3061e + " SET " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3056e.f3069a + " = ? , " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.i.f3069a + " = ?  WHERE " + this.f + " = ? ");
        }
        return this.o;
    }

    public String a(String str, Integer num, C0072b... c0072bArr) {
        this.f3059c.setLength(0);
        this.f3059c.append("SELECT * FROM ");
        this.f3059c.append(this.f3061e);
        if (str != null) {
            StringBuilder sb = this.f3059c;
            sb.append(" WHERE ");
            sb.append(str);
        }
        int length = c0072bArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            C0072b c0072b = c0072bArr[i];
            if (z) {
                this.f3059c.append(" ORDER BY ");
            } else {
                this.f3059c.append(",");
            }
            StringBuilder sb2 = this.f3059c;
            sb2.append(c0072b.f3064a.f3069a);
            sb2.append(" ");
            sb2.append(c0072b.f3065b);
            i++;
            z = false;
        }
        if (num != null) {
            StringBuilder sb3 = this.f3059c;
            sb3.append(" LIMIT ");
            sb3.append(num);
        }
        return this.f3059c.toString();
    }

    public String a(c cVar, String str, Integer num, C0072b... c0072bArr) {
        this.f3059c.setLength(0);
        StringBuilder sb = this.f3059c;
        sb.append("SELECT ");
        sb.append(cVar.f3069a);
        sb.append(" FROM ");
        sb.append(this.f3061e);
        if (str != null) {
            StringBuilder sb2 = this.f3059c;
            sb2.append(" WHERE ");
            sb2.append(str);
        }
        int length = c0072bArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            C0072b c0072b = c0072bArr[i];
            if (z) {
                this.f3059c.append(" ORDER BY ");
            } else {
                this.f3059c.append(",");
            }
            StringBuilder sb3 = this.f3059c;
            sb3.append(c0072b.f3064a.f3069a);
            sb3.append(" ");
            sb3.append(c0072b.f3065b);
            i++;
            z = false;
        }
        if (num != null) {
            StringBuilder sb4 = this.f3059c;
            sb4.append(" LIMIT ");
            sb4.append(num);
        }
        return this.f3059c.toString();
    }

    static void a(StringBuilder sb, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("cannot create placeholders for 0 items");
        }
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
    }

    public void g() {
        this.f3060d.execSQL("DELETE FROM job_holder");
        h();
    }

    public void h() {
        this.f3060d.execSQL("VACUUM");
    }

    public void a(long j) {
        this.f3060d.execSQL("UPDATE job_holder SET " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.h.f3069a + "=?," + com.birbit.android.jobqueue.persistentQueue.sqlite.a.j.f3069a + "=?, " + com.birbit.android.jobqueue.persistentQueue.sqlite.a.k.f3069a + "=?", new Object[]{Long.valueOf(j), Long.valueOf(j), Long.valueOf(j)});
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f3069a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f3070b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3071c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final a f3072d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f3073e;

        public c(String str, String str2, int i) {
            this(str, str2, i, null, false);
        }

        public c(String str, String str2, int i, a aVar) {
            this(str, str2, i, aVar, false);
        }

        public c(String str, String str2, int i, a aVar, boolean z) {
            this.f3069a = str;
            this.f3070b = str2;
            this.f3071c = i;
            this.f3072d = aVar;
            this.f3073e = z;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f3062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f3063b;

        public a(String str, String str2) {
            this.f3062a = str;
            this.f3063b = str2;
        }
    }

    /* JADX INFO: renamed from: com.birbit.android.jobqueue.persistentQueue.sqlite.b$b, reason: collision with other inner class name */
    public static class C0072b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c f3064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final a f3065b;

        /* JADX INFO: renamed from: com.birbit.android.jobqueue.persistentQueue.sqlite.b$b$a */
        public enum a {
            ASC,
            DESC
        }

        public C0072b(c cVar, a aVar) {
            this.f3064a = cVar;
            this.f3065b = aVar;
        }
    }
}
