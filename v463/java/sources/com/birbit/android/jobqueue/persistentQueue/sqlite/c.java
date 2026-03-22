package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.birbit.android.jobqueue.persistentQueue.sqlite.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f3076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SQLiteStatement f3077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3078e;
    private SQLiteStatement f;
    private SQLiteStatement g;
    private String h;
    private int i = -1;
    private int j = -1;

    public c(long j, String str, String[] strArr) {
        this.f3074a = j;
        this.f3075b = str;
        this.f3076c = strArr;
    }

    public void a(int i) {
        this.i = i;
    }

    public void b(int i) {
        this.j = i;
    }

    public SQLiteStatement a(SQLiteDatabase sQLiteDatabase, StringBuilder sb) {
        SQLiteStatement sQLiteStatement = this.f3077d;
        if (sQLiteStatement == null) {
            sb.setLength(0);
            sb.append("SELECT SUM(case WHEN ");
            sb.append(a.f3055d.f3069a);
            sb.append(" is null then group_cnt else 1 end) from (");
            sb.append("SELECT count(*) group_cnt, ");
            sb.append(a.f3055d.f3069a);
            sb.append(" FROM ");
            sb.append("job_holder");
            sb.append(" WHERE ");
            sb.append(this.f3075b);
            sb.append(" GROUP BY ");
            sb.append(a.f3055d.f3069a);
            sb.append(")");
            this.f3077d = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            sQLiteStatement.clearBindings();
        }
        int i = 1;
        while (true) {
            String[] strArr = this.f3076c;
            if (i <= strArr.length) {
                this.f3077d.bindString(i, strArr[i - 1]);
                i++;
            } else {
                return this.f3077d;
            }
        }
    }

    public SQLiteStatement a(SQLiteDatabase sQLiteDatabase, b bVar) {
        SQLiteStatement sQLiteStatement = this.g;
        if (sQLiteStatement == null) {
            StringBuilder sb = bVar.f3059c;
            sb.setLength(0);
            sb.append("SELECT max(");
            sb.append(a.h.f3069a);
            if (this.i != -1) {
                sb.append(",");
                sb.append(a.j.f3069a);
            }
            if (this.j != -1) {
                sb.append(",");
                sb.append(a.k.f3069a);
            }
            sb.append(") FROM ");
            sb.append("job_holder");
            sb.append(" WHERE ");
            sb.append(this.f3075b);
            if (this.i != -1) {
                sb.append(" AND ");
                sb.append(a.j.f3069a);
                sb.append(" != ");
                sb.append(Long.MAX_VALUE);
            }
            if (this.j != -1) {
                sb.append(" AND ");
                sb.append(a.k.f3069a);
                sb.append(" != ");
                sb.append(Long.MAX_VALUE);
            }
            sb.append(" ORDER BY 1 ASC");
            sb.append(" limit 1");
            this.g = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            sQLiteStatement.clearBindings();
        }
        int i = 1;
        while (true) {
            String[] strArr = this.f3076c;
            if (i > strArr.length) {
                break;
            }
            this.g.bindString(i, strArr[i - 1]);
            i++;
        }
        int i2 = this.i;
        if (i2 != -1) {
            this.g.bindString(i2 + 1, Long.toString(Long.MAX_VALUE));
        }
        int i3 = this.j;
        if (i3 != -1) {
            this.g.bindString(i3 + 1, Long.toString(Long.MAX_VALUE));
        }
        return this.g;
    }

    public SQLiteStatement b(SQLiteDatabase sQLiteDatabase, b bVar) {
        SQLiteStatement sQLiteStatement = this.f;
        int i = 1;
        if (sQLiteStatement == null) {
            this.f = sQLiteDatabase.compileStatement(bVar.a(a.h, this.f3075b, 1, new b.C0072b(a.h, b.C0072b.a.ASC)));
        } else {
            sQLiteStatement.clearBindings();
        }
        while (true) {
            String[] strArr = this.f3076c;
            if (i <= strArr.length) {
                this.f.bindString(i, strArr[i - 1]);
                i++;
            } else {
                return this.f;
            }
        }
    }

    public String a(b bVar) {
        if (this.h == null) {
            this.h = bVar.a(this.f3075b, (Integer) 1, new b.C0072b(a.f3054c, b.C0072b.a.DESC), new b.C0072b(a.g, b.C0072b.a.ASC), new b.C0072b(a.f3052a, b.C0072b.a.ASC));
        }
        return this.h;
    }

    public String b(b bVar) {
        if (this.f3078e == null) {
            this.f3078e = bVar.a(this.f3075b, (Integer) null, new b.C0072b[0]);
        }
        return this.f3078e;
    }

    public void a() {
        SQLiteStatement sQLiteStatement = this.f3077d;
        if (sQLiteStatement != null) {
            sQLiteStatement.close();
            this.f3077d = null;
        }
        SQLiteStatement sQLiteStatement2 = this.f;
        if (sQLiteStatement2 != null) {
            sQLiteStatement2.close();
            this.f = null;
        }
        SQLiteStatement sQLiteStatement3 = this.g;
        if (sQLiteStatement3 != null) {
            sQLiteStatement3.close();
            this.g = null;
        }
    }
}
