package com.b.a.a.i.a;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f2360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f2361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StringBuilder f2362c = new StringBuilder();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final SQLiteDatabase f2363d;
    final String e;
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
        this.f2363d = sQLiteDatabase;
        this.e = str;
        this.g = i;
        this.f = str2;
        this.j = j;
        this.i = i2;
        this.h = str3;
        this.f2360a = "SELECT * FROM " + str + " WHERE " + com.b.a.a.i.a.a.f2357b.f2371a + " = ?";
        this.f2361b = "SELECT * FROM " + str + " WHERE " + com.b.a.a.i.a.a.f2357b.f2371a + " IN ( SELECT " + com.b.a.a.i.a.a.m.f2371a + " FROM " + str3 + " WHERE " + com.b.a.a.i.a.a.n.f2371a + " = ?)";
    }

    public static String a(String str, c cVar, c... cVarArr) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(str).append(" (");
        sb.append(cVar.f2371a).append(" ");
        sb.append(cVar.f2372b);
        sb.append("  primary key ");
        for (c cVar2 : cVarArr) {
            sb.append(", `").append(cVar2.f2371a).append("` ").append(cVar2.f2372b);
            if (cVar2.e) {
                sb.append(" UNIQUE");
            }
        }
        for (c cVar3 : cVarArr) {
            if (cVar3.f2374d != null) {
                a aVar = cVar3.f2374d;
                sb.append(", FOREIGN KEY(`").append(cVar3.f2371a).append("`) REFERENCES ").append(aVar.f2364a).append("(`").append(aVar.f2365b).append("`) ON DELETE CASCADE");
            }
        }
        sb.append(" );");
        com.b.a.a.f.b.a(sb.toString(), new Object[0]);
        return sb.toString();
    }

    public static String a(String str) {
        return "DROP TABLE IF EXISTS " + str;
    }

    public SQLiteStatement a() {
        if (this.k == null) {
            this.f2362c.setLength(0);
            this.f2362c.append("INSERT INTO ").append(this.e);
            this.f2362c.append(" VALUES (");
            for (int i = 0; i < this.g; i++) {
                if (i != 0) {
                    this.f2362c.append(",");
                }
                this.f2362c.append("?");
            }
            this.f2362c.append(")");
            this.k = this.f2363d.compileStatement(this.f2362c.toString());
        }
        return this.k;
    }

    public SQLiteStatement b() {
        if (this.l == null) {
            this.f2362c.setLength(0);
            this.f2362c.append("INSERT INTO ").append("job_holder_tags");
            this.f2362c.append(" VALUES (");
            for (int i = 0; i < this.i; i++) {
                if (i != 0) {
                    this.f2362c.append(",");
                }
                this.f2362c.append("?");
            }
            this.f2362c.append(")");
            this.l = this.f2363d.compileStatement(this.f2362c.toString());
        }
        return this.l;
    }

    public SQLiteStatement c() {
        if (this.p == null) {
            this.p = this.f2363d.compileStatement("SELECT COUNT(*) FROM " + this.e + " WHERE " + com.b.a.a.i.a.a.i.f2371a + " != ?");
        }
        return this.p;
    }

    public SQLiteStatement d() {
        if (this.m == null) {
            this.f2362c.setLength(0);
            this.f2362c.append("INSERT OR REPLACE INTO ").append(this.e);
            this.f2362c.append(" VALUES (");
            for (int i = 0; i < this.g; i++) {
                if (i != 0) {
                    this.f2362c.append(",");
                }
                this.f2362c.append("?");
            }
            this.f2362c.append(")");
            this.m = this.f2363d.compileStatement(this.f2362c.toString());
        }
        return this.m;
    }

    public SQLiteStatement e() {
        if (this.n == null) {
            this.n = this.f2363d.compileStatement("DELETE FROM " + this.e + " WHERE " + this.f + " = ?");
        }
        return this.n;
    }

    public SQLiteStatement f() {
        if (this.o == null) {
            this.o = this.f2363d.compileStatement("UPDATE " + this.e + " SET " + com.b.a.a.i.a.a.e.f2371a + " = ? , " + com.b.a.a.i.a.a.i.f2371a + " = ?  WHERE " + this.f + " = ? ");
        }
        return this.o;
    }

    public String a(String str, Integer num, C0050b... c0050bArr) {
        this.f2362c.setLength(0);
        this.f2362c.append("SELECT * FROM ");
        this.f2362c.append(this.e);
        if (str != null) {
            this.f2362c.append(" WHERE ").append(str);
        }
        int length = c0050bArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            C0050b c0050b = c0050bArr[i];
            if (z) {
                this.f2362c.append(" ORDER BY ");
            } else {
                this.f2362c.append(",");
            }
            this.f2362c.append(c0050b.f2366a.f2371a).append(" ").append(c0050b.f2367b);
            i++;
            z = false;
        }
        if (num != null) {
            this.f2362c.append(" LIMIT ").append(num);
        }
        return this.f2362c.toString();
    }

    public String a(c cVar, String str, Integer num, C0050b... c0050bArr) {
        this.f2362c.setLength(0);
        this.f2362c.append("SELECT ").append(cVar.f2371a).append(" FROM ").append(this.e);
        if (str != null) {
            this.f2362c.append(" WHERE ").append(str);
        }
        int length = c0050bArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            C0050b c0050b = c0050bArr[i];
            if (z) {
                this.f2362c.append(" ORDER BY ");
            } else {
                this.f2362c.append(",");
            }
            this.f2362c.append(c0050b.f2366a.f2371a).append(" ").append(c0050b.f2367b);
            i++;
            z = false;
        }
        if (num != null) {
            this.f2362c.append(" LIMIT ").append(num);
        }
        return this.f2362c.toString();
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
        this.f2363d.execSQL("DELETE FROM job_holder");
        h();
    }

    public void h() {
        this.f2363d.execSQL("VACUUM");
    }

    public void a(long j) {
        this.f2363d.execSQL("UPDATE job_holder SET " + com.b.a.a.i.a.a.h.f2371a + "=?," + com.b.a.a.i.a.a.j.f2371a + "=?, " + com.b.a.a.i.a.a.k.f2371a + "=?", new Object[]{Long.valueOf(j), Long.valueOf(j), Long.valueOf(j)});
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f2371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f2372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2373c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final a f2374d;
        public final boolean e;

        public c(String str, String str2, int i) {
            this(str, str2, i, null, false);
        }

        public c(String str, String str2, int i, a aVar) {
            this(str, str2, i, aVar, false);
        }

        public c(String str, String str2, int i, a aVar, boolean z) {
            this.f2371a = str;
            this.f2372b = str2;
            this.f2373c = i;
            this.f2374d = aVar;
            this.e = z;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f2364a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f2365b;

        public a(String str, String str2) {
            this.f2364a = str;
            this.f2365b = str2;
        }
    }

    /* JADX INFO: renamed from: com.b.a.a.i.a.b$b, reason: collision with other inner class name */
    public static class C0050b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c f2366a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final a f2367b;

        /* JADX INFO: renamed from: com.b.a.a.i.a.b$b$a */
        public enum a {
            ASC,
            DESC
        }

        public C0050b(c cVar, a aVar) {
            this.f2366a = cVar;
            this.f2367b = aVar;
        }
    }
}
