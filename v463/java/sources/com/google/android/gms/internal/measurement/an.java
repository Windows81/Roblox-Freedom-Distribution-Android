package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class an extends ac implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f4035a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f4036b = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ao f4037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cj f4038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cj f4039e;

    an(ae aeVar) {
        super(aeVar);
        this.f4038d = new cj(i());
        this.f4039e = new cj(i());
        this.f4037c = new ao(this, aeVar.a(), "google_analytics_v4.db");
    }

    private final long C() {
        com.google.android.gms.analytics.s.d();
        y();
        return a("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String D() {
        return "google_analytics_v4.db";
    }

    private final long a(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = A().rawQuery(str, null);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e2) {
                d("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long a(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = A().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getLong(0);
                }
                if (cursorRawQuery == null) {
                    return 0L;
                }
                cursorRawQuery.close();
                return 0L;
            } catch (SQLiteException e2) {
                d("Database error", str, e2);
                throw e2;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    private final Map<String, String> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String strValueOf = String.valueOf(str);
                str = strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?");
            }
            return com.google.android.gms.common.util.k.a(new URI(str), "UTF-8");
        } catch (URISyntaxException e2) {
            e("Error parsing hit parameters", e2);
            return new HashMap(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068 A[PHI: r10
  0x0068: PHI (r10v3 android.database.Cursor) = (r10v2 android.database.Cursor), (r10v4 android.database.Cursor) binds: [B:17:0x0066, B:11:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<java.lang.Long> d(long r14) {
        /*
            r13 = this;
            java.lang.String r0 = "hit_id"
            com.google.android.gms.analytics.s.d()
            r13.y()
            r1 = 0
            int r3 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r3 > 0) goto L13
            java.util.List r14 = java.util.Collections.emptyList()
            return r14
        L13:
            android.database.sqlite.SQLiteDatabase r1 = r13.A()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r10 = 0
            java.lang.String r2 = "hits2"
            java.lang.String[] r3 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            java.lang.String r8 = "%s ASC"
            r11 = 1
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r12 = 0
            r11[r12] = r0     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.String r8 = java.lang.String.format(r8, r11)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.String r14 = java.lang.Long.toString(r14)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r0 = r1
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r14
            android.database.Cursor r10 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            boolean r14 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            if (r14 == 0) goto L5b
        L4a:
            long r14 = r10.getLong(r12)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.Long r14 = java.lang.Long.valueOf(r14)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r9.add(r14)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            boolean r14 = r10.moveToNext()     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            if (r14 != 0) goto L4a
        L5b:
            if (r10 == 0) goto L6b
            goto L68
        L5e:
            r14 = move-exception
            goto L6c
        L60:
            r14 = move-exception
            java.lang.String r15 = "Error selecting hit ids"
            r13.d(r15, r14)     // Catch: java.lang.Throwable -> L5e
            if (r10 == 0) goto L6b
        L68:
            r10.close()
        L6b:
            return r9
        L6c:
            if (r10 == 0) goto L71
            r10.close()
        L71:
            goto L73
        L72:
            throw r14
        L73:
            goto L72
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.an.d(long):java.util.List");
    }

    private final Map<String, String> g(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String strValueOf = String.valueOf(str);
            return com.google.android.gms.common.util.k.a(new URI(strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?")), "UTF-8");
        } catch (URISyntaxException e2) {
            e("Error parsing property parameters", e2);
            return new HashMap(0);
        }
    }

    final SQLiteDatabase A() {
        try {
            return this.f4037c.getWritableDatabase();
        } catch (SQLiteException e2) {
            d("Error opening database", e2);
            throw e2;
        }
    }

    public final long a(long j, String str, String str2) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        y();
        com.google.android.gms.analytics.s.d();
        return a("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    public final List<br> a(long j) {
        com.google.android.gms.common.internal.aa.b(j >= 0);
        com.google.android.gms.analytics.s.d();
        y();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = A().query("hits2", new String[]{"hit_id", "hit_time", "hit_string", "hit_url", "hit_app_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Long.toString(j));
                ArrayList arrayList = new ArrayList();
                if (cursorQuery.moveToFirst()) {
                    do {
                        arrayList.add(new br(this, a(cursorQuery.getString(2)), cursorQuery.getLong(1), cn.c(cursorQuery.getString(3)), cursorQuery.getLong(0), cursorQuery.getInt(4)));
                    } while (cursorQuery.moveToNext());
                }
                return arrayList;
            } catch (SQLiteException e2) {
                e("Error loading hits from the database", e2);
                throw e2;
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
    }

    public final void a(br brVar) {
        com.google.android.gms.common.internal.aa.a(brVar);
        com.google.android.gms.analytics.s.d();
        y();
        com.google.android.gms.common.internal.aa.a(brVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : brVar.b().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        if (encodedQuery == null) {
            encodedQuery = "";
        }
        if (encodedQuery.length() > 8192) {
            k().a(brVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        int iIntValue = bm.f4084c.a().intValue();
        long jC = C();
        if (jC > iIntValue - 1) {
            List<Long> listD = d((jC - ((long) iIntValue)) + 1);
            d("Store full, deleting hits to make room, count", Integer.valueOf(listD.size()));
            a(listD);
        }
        SQLiteDatabase sQLiteDatabaseA = A();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", encodedQuery);
        contentValues.put("hit_time", Long.valueOf(brVar.d()));
        contentValues.put("hit_app_id", Integer.valueOf(brVar.a()));
        contentValues.put("hit_url", brVar.f() ? be.h() : be.i());
        try {
            long jInsert = sQLiteDatabaseA.insert("hits2", null, contentValues);
            if (jInsert == -1) {
                f("Failed to insert a hit (got -1)");
            } else {
                b("Hit saved to database. db-id, hit", Long.valueOf(jInsert), brVar);
            }
        } catch (SQLiteException e2) {
            e("Error storing a hit", e2);
        }
    }

    public final void a(List<Long> list) {
        com.google.android.gms.common.internal.aa.a(list);
        com.google.android.gms.analytics.s.d();
        y();
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("hit_id");
        sb.append(" in (");
        for (int i = 0; i < list.size(); i++) {
            Long l = list.get(i);
            if (l == null || l.longValue() == 0) {
                throw new SQLiteException("Invalid hit id");
            }
            if (i > 0) {
                sb.append(",");
            }
            sb.append(l);
        }
        sb.append(")");
        String string = sb.toString();
        try {
            SQLiteDatabase sQLiteDatabaseA = A();
            a("Deleting dispatched hits. count", Integer.valueOf(list.size()));
            int iDelete = sQLiteDatabaseA.delete("hits2", string, null);
            if (iDelete != list.size()) {
                b("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(iDelete), string);
            }
        } catch (SQLiteException e2) {
            e("Error deleting hits", e2);
            throw e2;
        }
    }

    public final void b() {
        y();
        A().beginTransaction();
    }

    public final void b(long j) {
        com.google.android.gms.analytics.s.d();
        y();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        a("Deleting hit, id", Long.valueOf(j));
        a((List<Long>) arrayList);
    }

    public final List<ah> c(long j) {
        y();
        com.google.android.gms.analytics.s.d();
        SQLiteDatabase sQLiteDatabaseA = A();
        Cursor cursorQuery = null;
        try {
            try {
                int iIntValue = bm.f4085d.a().intValue();
                cursorQuery = sQLiteDatabaseA.query("properties", new String[]{"cid", "tid", "adid", "hits_count", "params"}, "app_uid=?", new String[]{"0"}, null, null, null, String.valueOf(iIntValue));
                ArrayList arrayList = new ArrayList();
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        boolean z = cursorQuery.getInt(2) != 0;
                        long j2 = cursorQuery.getInt(3);
                        Map<String, String> mapG = g(cursorQuery.getString(4));
                        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                            c("Read property with empty client id or tracker id", string, string2);
                        } else {
                            arrayList.add(new ah(0L, string, string2, z, j2, mapG));
                        }
                    } while (cursorQuery.moveToNext());
                }
                if (arrayList.size() >= iIntValue) {
                    e("Sending hits to too many properties. Campaign report might be incorrect");
                }
                return arrayList;
            } catch (SQLiteException e2) {
                e("Error loading hits from the database", e2);
                throw e2;
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public final void c() {
        y();
        A().setTransactionSuccessful();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        String str;
        try {
            this.f4037c.close();
        } catch (SQLiteException e2) {
            e = e2;
            str = "Sql error closing database";
            e(str, e);
        } catch (IllegalStateException e3) {
            e = e3;
            str = "Error closing database";
            e(str, e);
        }
    }

    public final void d() {
        y();
        A().endTransaction();
    }

    final boolean e() {
        return C() == 0;
    }

    public final int f() {
        com.google.android.gms.analytics.s.d();
        y();
        if (!this.f4038d.a(86400000L)) {
            return 0;
        }
        this.f4038d.a();
        b("Deleting stale hits (if any)");
        int iDelete = A().delete("hits2", "hit_time < ?", new String[]{Long.toString(i().a() - 2592000000L)});
        a("Deleted stale hits, count", Integer.valueOf(iDelete));
        return iDelete;
    }

    public final long g() {
        com.google.android.gms.analytics.s.d();
        y();
        return a(f4036b, (String[]) null, 0L);
    }
}
