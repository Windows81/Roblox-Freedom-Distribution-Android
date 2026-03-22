package com.b.a.a.i.a;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.b.a.a.i.a.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f2381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SQLiteStatement f2382d;
    private String e;
    private SQLiteStatement f;
    private SQLiteStatement g;
    private String h;
    private int i = -1;
    private int j = -1;

    public d(long j, String str, String[] strArr) {
        this.f2379a = j;
        this.f2380b = str;
        this.f2381c = strArr;
    }

    public void a(int i) {
        this.i = i;
    }

    public void b(int i) {
        this.j = i;
    }

    public SQLiteStatement a(SQLiteDatabase sQLiteDatabase, StringBuilder sb) {
        if (this.f2382d == null) {
            sb.setLength(0);
            sb.append("SELECT SUM(case WHEN ").append(a.f2359d.f2371a).append(" is null then group_cnt else 1 end) from (").append("SELECT count(*) group_cnt, ").append(a.f2359d.f2371a).append(" FROM ").append("job_holder").append(" WHERE ").append(this.f2380b).append(" GROUP BY ").append(a.f2359d.f2371a).append(")");
            this.f2382d = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            this.f2382d.clearBindings();
        }
        for (int i = 1; i <= this.f2381c.length; i++) {
            this.f2382d.bindString(i, this.f2381c[i - 1]);
        }
        return this.f2382d;
    }

    public SQLiteStatement a(SQLiteDatabase sQLiteDatabase, b bVar) {
        if (this.g == null) {
            StringBuilder sb = bVar.f2362c;
            sb.setLength(0);
            sb.append("SELECT max(").append(a.h.f2371a);
            if (this.i != -1) {
                sb.append(",").append(a.j.f2371a);
            }
            if (this.j != -1) {
                sb.append(",").append(a.k.f2371a);
            }
            sb.append(") FROM ").append("job_holder").append(" WHERE ").append(this.f2380b);
            if (this.i != -1) {
                sb.append(" AND ").append(a.j.f2371a).append(" != ").append(Long.MAX_VALUE);
            }
            if (this.j != -1) {
                sb.append(" AND ").append(a.k.f2371a).append(" != ").append(Long.MAX_VALUE);
            }
            sb.append(" ORDER BY 1 ASC").append(" limit 1");
            this.g = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            this.g.clearBindings();
        }
        for (int i = 1; i <= this.f2381c.length; i++) {
            this.g.bindString(i, this.f2381c[i - 1]);
        }
        if (this.i != -1) {
            this.g.bindString(this.i + 1, Long.toString(Long.MAX_VALUE));
        }
        if (this.j != -1) {
            this.g.bindString(this.j + 1, Long.toString(Long.MAX_VALUE));
        }
        return this.g;
    }

    public SQLiteStatement b(SQLiteDatabase sQLiteDatabase, b bVar) {
        if (this.f == null) {
            this.f = sQLiteDatabase.compileStatement(bVar.a(a.h, this.f2380b, 1, new b.C0050b(a.h, b.C0050b.a.ASC)));
        } else {
            this.f.clearBindings();
        }
        for (int i = 1; i <= this.f2381c.length; i++) {
            this.f.bindString(i, this.f2381c[i - 1]);
        }
        return this.f;
    }

    public String a(b bVar) {
        if (this.h == null) {
            this.h = bVar.a(this.f2380b, (Integer) 1, new b.C0050b(a.f2358c, b.C0050b.a.DESC), new b.C0050b(a.g, b.C0050b.a.ASC), new b.C0050b(a.f2356a, b.C0050b.a.ASC));
        }
        return this.h;
    }

    public String b(b bVar) {
        if (this.e == null) {
            this.e = bVar.a(this.f2380b, (Integer) null, new b.C0050b[0]);
        }
        return this.e;
    }

    public void a() {
        if (this.f2382d != null) {
            this.f2382d.close();
            this.f2382d = null;
        }
        if (this.f != null) {
            this.f.close();
            this.f = null;
        }
        if (this.g != null) {
            this.g.close();
            this.g = null;
        }
    }
}
