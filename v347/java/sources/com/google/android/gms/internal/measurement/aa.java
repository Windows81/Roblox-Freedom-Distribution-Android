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
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class aa extends p implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f5847a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f5848b = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ab f5849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bw f5850d;
    private final bw e;

    aa(r rVar) {
        super(rVar);
        this.f5850d = new bw(i());
        this.e = new bw(i());
        this.f5849c = new ab(this, rVar.a(), "google_analytics_v4.db");
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
            } catch (SQLiteException e) {
                d("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long a(String str, String[] strArr, long j) throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursor = null;
        try {
            try {
                cursorRawQuery = A().rawQuery(str, strArr);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            if (!cursorRawQuery.moveToFirst()) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return 0L;
            }
            long j2 = cursorRawQuery.getLong(0);
            if (cursorRawQuery == null) {
                return j2;
            }
            cursorRawQuery.close();
            return j2;
        } catch (SQLiteException e2) {
            e = e2;
            d("Database error", str, e);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            cursor = cursorRawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
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
            return com.google.android.gms.common.util.k.a(new URI(str), Constants.UTF8_NAME);
        } catch (URISyntaxException e) {
            e("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0073: MOVE (r10 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:25:0x0073 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<java.lang.Long> d(long r14) throws java.lang.Throwable {
        /*
            r13 = this;
            r10 = 0
            com.google.android.gms.analytics.s.d()
            r13.y()
            r0 = 0
            int r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r0 > 0) goto L12
            java.util.List r0 = java.util.Collections.emptyList()
        L11:
            return r0
        L12:
            android.database.sqlite.SQLiteDatabase r0 = r13.A()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.lang.String r1 = "hits2"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            r3 = 0
            java.lang.String r4 = "hit_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "%s ASC"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            r11 = 0
            java.lang.String r12 = "hit_id"
            r8[r11] = r12     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            java.lang.String r7 = java.lang.String.format(r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            java.lang.String r8 = java.lang.Long.toString(r14)     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L5e java.lang.Throwable -> L6b
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            if (r0 == 0) goto L57
        L45:
            r0 = 0
            long r2 = r1.getLong(r0)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            r9.add(r0)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteException -> L75
            if (r0 != 0) goto L45
        L57:
            if (r1 == 0) goto L5c
            r1.close()
        L5c:
            r0 = r9
            goto L11
        L5e:
            r0 = move-exception
            r1 = r10
        L60:
            java.lang.String r2 = "Error selecting hit ids"
            r13.d(r2, r0)     // Catch: java.lang.Throwable -> L72
            if (r1 == 0) goto L5c
            r1.close()
            goto L5c
        L6b:
            r0 = move-exception
        L6c:
            if (r10 == 0) goto L71
            r10.close()
        L71:
            throw r0
        L72:
            r0 = move-exception
            r10 = r1
            goto L6c
        L75:
            r0 = move-exception
            goto L60
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aa.d(long):java.util.List");
    }

    private final Map<String, String> g(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String strValueOf = String.valueOf(str);
            return com.google.android.gms.common.util.k.a(new URI(strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?")), Constants.UTF8_NAME);
        } catch (URISyntaxException e) {
            e("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    final SQLiteDatabase A() {
        try {
            return this.f5849c.getWritableDatabase();
        } catch (SQLiteException e) {
            d("Error opening database", e);
            throw e;
        }
    }

    public final long a(long j, String str, String str2) {
        com.google.android.gms.common.internal.w.a(str);
        com.google.android.gms.common.internal.w.a(str2);
        y();
        com.google.android.gms.analytics.s.d();
        return a("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.internal.measurement.be> a(long r14) throws java.lang.Throwable {
        /*
            r13 = this;
            r0 = 1
            r1 = 0
            r9 = 0
            r2 = 0
            int r2 = (r14 > r2 ? 1 : (r14 == r2 ? 0 : -1))
            if (r2 < 0) goto L8f
        L9:
            com.google.android.gms.common.internal.w.b(r0)
            com.google.android.gms.analytics.s.d()
            r13.y()
            android.database.sqlite.SQLiteDatabase r0 = r13.A()
            java.lang.String r1 = "hits2"
            r2 = 5
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 0
            java.lang.String r4 = "hit_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 1
            java.lang.String r4 = "hit_time"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 2
            java.lang.String r4 = "hit_string"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 3
            java.lang.String r4 = "hit_url"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 4
            java.lang.String r4 = "hit_app_id"
            r2[r3] = r4     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "%s ASC"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            r10 = 0
            java.lang.String r11 = "hit_id"
            r8[r10] = r11     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            java.lang.String r7 = java.lang.String.format(r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            java.lang.String r8 = java.lang.Long.toString(r14)     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: android.database.sqlite.SQLiteException -> L92 java.lang.Throwable -> La2
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r10.<init>()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            boolean r0 = r9.moveToFirst()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            if (r0 == 0) goto L89
        L59:
            r0 = 0
            long r6 = r9.getLong(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r0 = 1
            long r3 = r9.getLong(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r0 = 2
            java.lang.String r0 = r9.getString(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r1 = 3
            java.lang.String r1 = r9.getString(r1)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r2 = 4
            int r8 = r9.getInt(r2)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            java.util.Map r2 = r13.a(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            boolean r5 = com.google.android.gms.internal.measurement.ca.c(r1)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            com.google.android.gms.internal.measurement.be r0 = new com.google.android.gms.internal.measurement.be     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r1 = r13
            r0.<init>(r1, r2, r3, r5, r6, r8)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            r10.add(r0)     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            boolean r0 = r9.moveToNext()     // Catch: java.lang.Throwable -> La2 android.database.sqlite.SQLiteException -> La4
            if (r0 != 0) goto L59
        L89:
            if (r9 == 0) goto L8e
            r9.close()
        L8e:
            return r10
        L8f:
            r0 = r1
            goto L9
        L92:
            r0 = move-exception
            r1 = r9
        L94:
            java.lang.String r2 = "Error loading hits from the database"
            r13.e(r2, r0)     // Catch: java.lang.Throwable -> L9a
            throw r0     // Catch: java.lang.Throwable -> L9a
        L9a:
            r0 = move-exception
            r9 = r1
        L9c:
            if (r9 == 0) goto La1
            r9.close()
        La1:
            throw r0
        La2:
            r0 = move-exception
            goto L9c
        La4:
            r0 = move-exception
            r1 = r9
            goto L94
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aa.a(long):java.util.List");
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
    }

    public final void a(be beVar) throws Throwable {
        com.google.android.gms.common.internal.w.a(beVar);
        com.google.android.gms.analytics.s.d();
        y();
        com.google.android.gms.common.internal.w.a(beVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : beVar.b().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        String str = encodedQuery == null ? "" : encodedQuery;
        if (str.length() > 8192) {
            k().a(beVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        int iIntValue = az.f5889c.a().intValue();
        long jC = C();
        if (jC > iIntValue - 1) {
            List<Long> listD = d((jC - ((long) iIntValue)) + 1);
            d("Store full, deleting hits to make room, count", Integer.valueOf(listD.size()));
            a(listD);
        }
        SQLiteDatabase sQLiteDatabaseA = A();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", str);
        contentValues.put("hit_time", Long.valueOf(beVar.d()));
        contentValues.put("hit_app_id", Integer.valueOf(beVar.a()));
        contentValues.put("hit_url", beVar.f() ? ar.h() : ar.i());
        try {
            long jInsert = sQLiteDatabaseA.insert("hits2", null, contentValues);
            if (jInsert == -1) {
                f("Failed to insert a hit (got -1)");
            } else {
                b("Hit saved to database. db-id, hit", Long.valueOf(jInsert), beVar);
            }
        } catch (SQLiteException e) {
            e("Error storing a hit", e);
        }
    }

    public final void a(List<Long> list) {
        com.google.android.gms.common.internal.w.a(list);
        com.google.android.gms.analytics.s.d();
        y();
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("hit_id");
        sb.append(" in (");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                sb.append(")");
                String string = sb.toString();
                try {
                    SQLiteDatabase sQLiteDatabaseA = A();
                    a("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                    int iDelete = sQLiteDatabaseA.delete("hits2", string, null);
                    if (iDelete != list.size()) {
                        b("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(iDelete), string);
                        return;
                    }
                    return;
                } catch (SQLiteException e) {
                    e("Error deleting hits", e);
                    throw e;
                }
            }
            Long l = list.get(i2);
            if (l == null || l.longValue() == 0) {
                break;
            }
            if (i2 > 0) {
                sb.append(",");
            }
            sb.append(l);
            i = i2 + 1;
        }
        throw new SQLiteException("Invalid hit id");
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

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.internal.measurement.u> c(long r13) throws java.lang.Throwable {
        /*
            r12 = this;
            r12.y()
            com.google.android.gms.analytics.s.d()
            android.database.sqlite.SQLiteDatabase r0 = r12.A()
            r9 = 0
            r1 = 5
            java.lang.String[] r2 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            r1 = 0
            java.lang.String r3 = "cid"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            r1 = 1
            java.lang.String r3 = "tid"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            r1 = 2
            java.lang.String r3 = "adid"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            r1 = 3
            java.lang.String r3 = "hits_count"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            r1 = 4
            java.lang.String r3 = "params"
            r2[r1] = r3     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            com.google.android.gms.internal.measurement.ba<java.lang.Integer> r1 = com.google.android.gms.internal.measurement.az.f5890d     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            java.lang.Object r1 = r1.a()     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            int r10 = r1.intValue()     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            java.lang.String r8 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            java.lang.String r3 = "app_uid=?"
            r1 = 1
            java.lang.String[] r4 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            r1 = 0
            java.lang.String r5 = "0"
            r4[r1] = r5     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            java.lang.String r1 = "properties"
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lbb android.database.sqlite.SQLiteException -> Lbd
            java.util.ArrayList r11 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            r11.<init>()     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            boolean r0 = r9.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            if (r0 == 0) goto L8d
        L55:
            r0 = 0
            java.lang.String r3 = r9.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            r0 = 1
            java.lang.String r4 = r9.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            r0 = 2
            int r0 = r9.getInt(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            if (r0 == 0) goto L9e
            r5 = 1
        L67:
            r0 = 3
            int r0 = r9.getInt(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            long r6 = (long) r0     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            r0 = 4
            java.lang.String r0 = r9.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            java.util.Map r8 = r12.g(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            if (r0 != 0) goto L82
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            if (r0 == 0) goto La0
        L82:
            java.lang.String r0 = "Read property with empty client id or tracker id"
            r12.c(r0, r3, r4)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
        L87:
            boolean r0 = r9.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            if (r0 != 0) goto L55
        L8d:
            int r0 = r11.size()     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            if (r0 < r10) goto L98
            java.lang.String r0 = "Sending hits to too many properties. Campaign report might be incorrect"
            r12.e(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
        L98:
            if (r9 == 0) goto L9d
            r9.close()
        L9d:
            return r11
        L9e:
            r5 = 0
            goto L67
        La0:
            com.google.android.gms.internal.measurement.u r0 = new com.google.android.gms.internal.measurement.u     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            r1 = 0
            r0.<init>(r1, r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            r11.add(r0)     // Catch: android.database.sqlite.SQLiteException -> Lab java.lang.Throwable -> Lbb
            goto L87
        Lab:
            r0 = move-exception
            r1 = r9
        Lad:
            java.lang.String r2 = "Error loading hits from the database"
            r12.e(r2, r0)     // Catch: java.lang.Throwable -> Lb3
            throw r0     // Catch: java.lang.Throwable -> Lb3
        Lb3:
            r0 = move-exception
            r9 = r1
        Lb5:
            if (r9 == 0) goto Lba
            r9.close()
        Lba:
            throw r0
        Lbb:
            r0 = move-exception
            goto Lb5
        Lbd:
            r0 = move-exception
            r1 = r9
            goto Lad
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aa.c(long):java.util.List");
    }

    public final void c() {
        y();
        A().setTransactionSuccessful();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.f5849c.close();
        } catch (SQLiteException e) {
            e("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            e("Error closing database", e2);
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
        if (!this.f5850d.a(86400000L)) {
            return 0;
        }
        this.f5850d.a();
        b("Deleting stale hits (if any)");
        int iDelete = A().delete("hits2", "hit_time < ?", new String[]{Long.toString(i().a() - 2592000000L)});
        a("Deleted stale hits, count", Integer.valueOf(iDelete));
        return iDelete;
    }

    public final long g() {
        com.google.android.gms.analytics.s.d();
        y();
        return a(f5848b, (String[]) null, 0L);
    }
}
