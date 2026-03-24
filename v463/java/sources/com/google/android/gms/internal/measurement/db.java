package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class db extends ih {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f4178b = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f4179c = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f4180d = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f4181e = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] f = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] g = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final de h;
    private final id i;

    db(ii iiVar) {
        super(iiVar);
        this.i = new id(j());
        this.h = new de(this, k(), "google_app_measurement.db");
    }

    private final boolean P() {
        return k().getDatabasePath("google_app_measurement.db").exists();
    }

    private final long a(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = x().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getLong(0);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e2) {
                q().v().a("Database error", str, e2);
                throw e2;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    private final Object a(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            q().v().a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            q().v().a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        q().v().a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    private static Set<String> a(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            Collections.addAll(hashSet, cursorRawQuery.getColumnNames());
            return hashSet;
        } finally {
            cursorRawQuery.close();
        }
    }

    private static void a(ContentValues contentValues, String str, Object obj) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(str, (Double) obj);
        }
    }

    static void a(dx dxVar, SQLiteDatabase sQLiteDatabase) {
        if (dxVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            dxVar.y().a("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            dxVar.y().a("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            dxVar.y().a("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        dxVar.y().a("Failed to turn on database write permission for owner");
    }

    static void a(dx dxVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        if (dxVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        if (!a(dxVar, sQLiteDatabase, str)) {
            sQLiteDatabase.execSQL(str2);
        }
        try {
            if (dxVar == null) {
                throw new IllegalArgumentException("Monitor must not be null");
            }
            Set<String> setA = a(sQLiteDatabase, str);
            for (String str4 : str3.split(",")) {
                if (!setA.remove(str4)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str4).length());
                    sb.append("Table ");
                    sb.append(str);
                    sb.append(" is missing required column: ");
                    sb.append(str4);
                    throw new SQLiteException(sb.toString());
                }
            }
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i += 2) {
                    if (!setA.remove(strArr[i])) {
                        sQLiteDatabase.execSQL(strArr[i + 1]);
                    }
                }
            }
            if (setA.isEmpty()) {
                return;
            }
            dxVar.y().a("Table has extra columns. table, columns", str, TextUtils.join(", ", setA));
        } catch (SQLiteException e2) {
            dxVar.v().a("Failed to verify columns on table that was just created", str);
            throw e2;
        }
    }

    private static boolean a(dx dxVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (dxVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                boolean zMoveToFirst = cursorQuery.moveToFirst();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zMoveToFirst;
            } catch (SQLiteException e2) {
                dxVar.y().a("Error querying for table", str, e2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    private final boolean a(String str, int i, iu iuVar) {
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(iuVar);
        if (TextUtils.isEmpty(iuVar.f4576d)) {
            q().y().a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", dx.a(str), Integer.valueOf(i), String.valueOf(iuVar.f4575c));
            return false;
        }
        try {
            int iD = iuVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            iuVar.a(dVarA);
            dVarA.a();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", iuVar.f4575c);
            contentValues.put("event_name", iuVar.f4576d);
            contentValues.put("data", bArr);
            try {
                if (x().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                q().v().a("Failed to insert event filter (got -1). appId", dx.a(str));
                return true;
            } catch (SQLiteException e2) {
                q().v().a("Error storing event filter. appId", dx.a(str), e2);
                return false;
            }
        } catch (IOException e3) {
            q().v().a("Configuration loss. Failed to serialize event filter. appId", dx.a(str), e3);
            return false;
        }
    }

    private final boolean a(String str, int i, ix ixVar) {
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(ixVar);
        if (TextUtils.isEmpty(ixVar.f4585d)) {
            q().y().a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", dx.a(str), Integer.valueOf(i), String.valueOf(ixVar.f4584c));
            return false;
        }
        try {
            int iD = ixVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            ixVar.a(dVarA);
            dVarA.a();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", ixVar.f4584c);
            contentValues.put("property_name", ixVar.f4585d);
            contentValues.put("data", bArr);
            try {
                if (x().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                q().v().a("Failed to insert property filter (got -1). appId", dx.a(str));
                return false;
            } catch (SQLiteException e2) {
                q().v().a("Error storing property filter. appId", dx.a(str), e2);
                return false;
            }
        } catch (IOException e3) {
            q().v().a("Configuration loss. Failed to serialize property filter. appId", dx.a(str), e3);
            return false;
        }
    }

    private final boolean a(String str, List<Integer> list) {
        com.google.android.gms.common.internal.aa.a(str);
        N();
        c();
        SQLiteDatabase sQLiteDatabaseX = x();
        try {
            long jB = b("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, s().b(str, dn.G)));
            if (jB <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String strJoin = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 140);
            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb2.append(string);
            sb2.append(" order by rowid desc limit -1 offset ?)");
            return sQLiteDatabaseX.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e2) {
            q().v().a("Database error querying filters. appId", dx.a(str), e2);
            return false;
        }
    }

    private final long b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = x().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e2) {
                q().v().a("Database error", str, e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    final void A() {
        int iDelete;
        c();
        N();
        if (P()) {
            long jA = r().f.a();
            long jB = j().b();
            if (Math.abs(jB - jA) > dn.z.b().longValue()) {
                r().f.a(jB);
                c();
                N();
                if (!P() || (iDelete = x().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(j().a()), String.valueOf(cy.v())})) <= 0) {
                    return;
                }
                q().C().a("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    public final long B() {
        return a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public final long C() {
        return a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final boolean D() {
        return b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean E() {
        return b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long F() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = x().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursorRawQuery.moveToFirst()) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return -1L;
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e2) {
                q().v().a("Error querying raw events", e2);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final long a(jg jgVar) throws IOException {
        long jC;
        c();
        N();
        com.google.android.gms.common.internal.aa.a(jgVar);
        com.google.android.gms.common.internal.aa.a(jgVar.q);
        try {
            int iD = jgVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            jgVar.a(dVarA);
            dVarA.a();
            iq iqVarN = n();
            com.google.android.gms.common.internal.aa.a(bArr);
            iqVarN.c();
            MessageDigest messageDigestF = iq.f("MD5");
            if (messageDigestF == null) {
                iqVarN.q().v().a("Failed to get MD5");
                jC = 0;
            } else {
                jC = iq.c(messageDigestF.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", jgVar.q);
            contentValues.put("metadata_fingerprint", Long.valueOf(jC));
            contentValues.put("metadata", bArr);
            try {
                x().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return jC;
            } catch (SQLiteException e2) {
                q().v().a("Error storing raw event metadata. appId", dx.a(jgVar.q), e2);
                throw e2;
            }
        } catch (IOException e3) {
            q().v().a("Data loss. Failed to serialize event metadata. appId", dx.a(jgVar.q), e3);
            throw e3;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x008c: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:32:0x008c */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.jd, java.lang.Long> a(java.lang.String r8, java.lang.Long r9) {
        /*
            r7 = this;
            r7.c()
            r7.N()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.x()     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L76
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L76
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L76
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L76
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L76
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L74 android.database.sqlite.SQLiteException -> L76
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            if (r2 != 0) goto L37
            com.google.android.gms.internal.measurement.dx r8 = r7.q()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            com.google.android.gms.internal.measurement.dz r8 = r8.C()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            java.lang.String r9 = "Main event not found"
            r8.a(r9)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            long r5 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            java.lang.Long r3 = java.lang.Long.valueOf(r5)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            int r5 = r2.length     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            com.google.android.gms.internal.measurement.c r2 = com.google.android.gms.internal.measurement.c.a(r2, r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            com.google.android.gms.internal.measurement.jd r4 = new com.google.android.gms.internal.measurement.jd     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            r4.<init>()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            r4.a(r2)     // Catch: java.io.IOException -> L5a android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            android.util.Pair r8 = android.util.Pair.create(r4, r3)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            if (r1 == 0) goto L59
            r1.close()
        L59:
            return r8
        L5a:
            r2 = move-exception
            com.google.android.gms.internal.measurement.dx r3 = r7.q()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            com.google.android.gms.internal.measurement.dz r3 = r3.v()     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.internal.measurement.dx.a(r8)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            r3.a(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L72 java.lang.Throwable -> L8b
            if (r1 == 0) goto L71
            r1.close()
        L71:
            return r0
        L72:
            r8 = move-exception
            goto L78
        L74:
            r8 = move-exception
            goto L8d
        L76:
            r8 = move-exception
            r1 = r0
        L78:
            com.google.android.gms.internal.measurement.dx r9 = r7.q()     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.internal.measurement.dz r9 = r9.v()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = "Error selecting main event"
            r9.a(r2, r8)     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L8a
            r1.close()
        L8a:
            return r0
        L8b:
            r8 = move-exception
            r0 = r1
        L8d:
            if (r0 == 0) goto L92
            r0.close()
        L92:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final dc a(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        com.google.android.gms.common.internal.aa.a(str);
        c();
        N();
        String[] strArr = {str};
        dc dcVar = new dc();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseX = x();
                Cursor cursorQuery = sQLiteDatabaseX.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    q().y().a("Not updating daily counts, app is not known. appId", dx.a(str));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return dcVar;
                }
                if (cursorQuery.getLong(0) == j) {
                    dcVar.f4183b = cursorQuery.getLong(1);
                    dcVar.f4182a = cursorQuery.getLong(2);
                    dcVar.f4184c = cursorQuery.getLong(3);
                    dcVar.f4185d = cursorQuery.getLong(4);
                    dcVar.f4186e = cursorQuery.getLong(5);
                }
                if (z) {
                    dcVar.f4183b++;
                }
                if (z2) {
                    dcVar.f4182a++;
                }
                if (z3) {
                    dcVar.f4184c++;
                }
                if (z4) {
                    dcVar.f4185d++;
                }
                if (z5) {
                    dcVar.f4186e++;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(dcVar.f4182a));
                contentValues.put("daily_events_count", Long.valueOf(dcVar.f4183b));
                contentValues.put("daily_conversions_count", Long.valueOf(dcVar.f4184c));
                contentValues.put("daily_error_events_count", Long.valueOf(dcVar.f4185d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(dcVar.f4186e));
                sQLiteDatabaseX.update("apps", contentValues, "app_id=?", strArr);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return dcVar;
            } catch (SQLiteException e2) {
                q().v().a("Error updating daily counts. appId", dx.a(str), e2);
                if (0 != 0) {
                    cursor.close();
                }
                return dcVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0109: MOVE (r16 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]), block:B:57:0x0109 */
    public final dj a(String str, String str2) {
        Cursor cursorQuery;
        Cursor cursor;
        Cursor cursor2;
        Boolean boolValueOf;
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        c();
        N();
        Cursor cursor3 = null;
        try {
            try {
                cursorQuery = x().query("events", new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    long j = cursorQuery.getLong(0);
                    long j2 = cursorQuery.getLong(1);
                    long j3 = cursorQuery.getLong(2);
                    long j4 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                    Long lValueOf = cursorQuery.isNull(4) ? null : Long.valueOf(cursorQuery.getLong(4));
                    Long lValueOf2 = cursorQuery.isNull(5) ? null : Long.valueOf(cursorQuery.getLong(5));
                    if (cursorQuery.isNull(6)) {
                        boolValueOf = null;
                    } else {
                        try {
                            boolValueOf = Boolean.valueOf(cursorQuery.getLong(6) == 1);
                        } catch (SQLiteException e2) {
                            e = e2;
                        }
                    }
                    cursor2 = cursorQuery;
                    try {
                        dj djVar = new dj(str, str2, j, j2, j3, j4, lValueOf, lValueOf2, boolValueOf);
                        if (cursor2.moveToNext()) {
                            q().v().a("Got multiple records for event aggregates, expected one. appId", dx.a(str));
                        }
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return djVar;
                    } catch (SQLiteException e3) {
                        e = e3;
                        cursorQuery = cursor2;
                    } catch (Throwable th) {
                        th = th;
                        cursor3 = cursor2;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e4) {
                    e = e4;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursorQuery;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor3 = cursor;
            }
        } catch (SQLiteException e5) {
            e = e5;
            cursorQuery = null;
        } catch (Throwable th4) {
            th = th4;
        }
        q().v().a("Error querying events. appId", dx.a(str), m().a(str2), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String a(long r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r4.c()
            r4.N()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.x()     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            if (r1 != 0) goto L34
            com.google.android.gms.internal.measurement.dx r6 = r4.q()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            com.google.android.gms.internal.measurement.dz r6 = r6.C()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.a(r1)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            if (r5 == 0) goto L33
            r5.close()
        L33:
            return r0
        L34:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            if (r5 == 0) goto L3d
            r5.close()
        L3d:
            return r6
        L3e:
            r6 = move-exception
            goto L44
        L40:
            r6 = move-exception
            goto L59
        L42:
            r6 = move-exception
            r5 = r0
        L44:
            com.google.android.gms.internal.measurement.dx r1 = r4.q()     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.internal.measurement.dz r1 = r1.v()     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "Error selecting expired configs"
            r1.a(r2, r6)     // Catch: java.lang.Throwable -> L57
            if (r5 == 0) goto L56
            r5.close()
        L56:
            return r0
        L57:
            r6 = move-exception
            r0 = r5
        L59:
            if (r0 == 0) goto L5e
            r0.close()
        L5e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.a(long):java.lang.String");
    }

    public final List<ip> a(String str) throws Throwable {
        Cursor cursorQuery;
        com.google.android.gms.common.internal.aa.a(str);
        c();
        N();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursorQuery = x().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return arrayList;
                    }
                    do {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str2 = string2;
                        long j = cursorQuery.getLong(2);
                        Object objA = a(cursorQuery, 3);
                        if (objA == null) {
                            q().v().a("Read invalid user property value, ignoring it. appId", dx.a(str));
                        } else {
                            arrayList.add(new ip(str, str2, string, j, objA));
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayList;
                } catch (SQLiteException e2) {
                    e = e2;
                    q().v().a("Error querying user properties. appId", dx.a(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
            }
            th = th;
            cursor = cursorQuery;
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    public final List<Pair<jg, Long>> a(String str, int i, int i2) {
        dz dzVarV;
        String str2;
        Object objA;
        byte[] bArrB;
        c();
        N();
        com.google.android.gms.common.internal.aa.b(i > 0);
        com.google.android.gms.common.internal.aa.b(i2 > 0);
        com.google.android.gms.common.internal.aa.a(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = x().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<jg, Long>> listEmptyList = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listEmptyList;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                do {
                    long j = cursorQuery.getLong(0);
                    try {
                        bArrB = n().b(cursorQuery.getBlob(1));
                    } catch (IOException e2) {
                        e = e2;
                        dzVarV = q().v();
                        str2 = "Failed to unzip queued bundle. appId";
                        objA = dx.a(str);
                    }
                    if (!arrayList.isEmpty() && bArrB.length + length > i2) {
                        break;
                    }
                    c cVarA = c.a(bArrB, 0, bArrB.length);
                    jg jgVar = new jg();
                    try {
                        jgVar.a(cVarA);
                        if (!cursorQuery.isNull(2)) {
                            jgVar.J = Integer.valueOf(cursorQuery.getInt(2));
                        }
                        length += bArrB.length;
                        arrayList.add(Pair.create(jgVar, Long.valueOf(j)));
                    } catch (IOException e3) {
                        e = e3;
                        dzVarV = q().v();
                        str2 = "Failed to merge queued bundle. appId";
                        objA = dx.a(str);
                        dzVarV.a(str2, objA, e);
                    }
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                } while (length <= i2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            q().v().a("Error querying bundles. appId", dx.a(str), e4);
            List<Pair<jg, Long>> listEmptyList2 = Collections.emptyList();
            if (0 != 0) {
                cursor.close();
            }
            return listEmptyList2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0090, code lost:
    
        q().v().a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.internal.measurement.ip> a(java.lang.String r22, java.lang.String r23, java.lang.String r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
    
        q().v().a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzed> a(java.lang.String r25, java.lang.String[] r26) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.a(java.lang.String, java.lang.String[]):java.util.List");
    }

    public final void a(ct ctVar) {
        com.google.android.gms.common.internal.aa.a(ctVar);
        c();
        N();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", ctVar.b());
        contentValues.put("app_instance_id", ctVar.c());
        contentValues.put("gmp_app_id", ctVar.d());
        contentValues.put("resettable_device_id_hash", ctVar.e());
        contentValues.put("last_bundle_index", Long.valueOf(ctVar.o()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(ctVar.g()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(ctVar.h()));
        contentValues.put("app_version", ctVar.i());
        contentValues.put("app_store", ctVar.k());
        contentValues.put("gmp_version", Long.valueOf(ctVar.l()));
        contentValues.put("dev_cert_hash", Long.valueOf(ctVar.m()));
        contentValues.put("measurement_enabled", Boolean.valueOf(ctVar.n()));
        contentValues.put("day", Long.valueOf(ctVar.s()));
        contentValues.put("daily_public_events_count", Long.valueOf(ctVar.t()));
        contentValues.put("daily_events_count", Long.valueOf(ctVar.u()));
        contentValues.put("daily_conversions_count", Long.valueOf(ctVar.v()));
        contentValues.put("config_fetched_time", Long.valueOf(ctVar.p()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(ctVar.q()));
        contentValues.put("app_version_int", Long.valueOf(ctVar.j()));
        contentValues.put("firebase_instance_id", ctVar.f());
        contentValues.put("daily_error_events_count", Long.valueOf(ctVar.x()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(ctVar.w()));
        contentValues.put("health_monitor_sample", ctVar.y());
        contentValues.put("android_id", Long.valueOf(ctVar.A()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(ctVar.B()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(ctVar.C()));
        try {
            SQLiteDatabase sQLiteDatabaseX = x();
            if (sQLiteDatabaseX.update("apps", contentValues, "app_id = ?", new String[]{ctVar.b()}) == 0 && sQLiteDatabaseX.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                q().v().a("Failed to insert/update app (got -1). appId", dx.a(ctVar.b()));
            }
        } catch (SQLiteException e2) {
            q().v().a("Error storing app. appId", dx.a(ctVar.b()), e2);
        }
    }

    public final void a(dj djVar) {
        com.google.android.gms.common.internal.aa.a(djVar);
        c();
        N();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", djVar.f4202a);
        contentValues.put("name", djVar.f4203b);
        contentValues.put("lifetime_count", Long.valueOf(djVar.f4204c));
        contentValues.put("current_bundle_count", Long.valueOf(djVar.f4205d));
        contentValues.put("last_fire_timestamp", Long.valueOf(djVar.f4206e));
        contentValues.put("last_bundled_timestamp", Long.valueOf(djVar.f));
        contentValues.put("last_sampled_complex_event_id", djVar.g);
        contentValues.put("last_sampling_rate", djVar.h);
        contentValues.put("last_exempt_from_sampling", (djVar.i == null || !djVar.i.booleanValue()) ? null : 1L);
        try {
            if (x().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                q().v().a("Failed to insert/update event aggregates (got -1). appId", dx.a(djVar.f4202a));
            }
        } catch (SQLiteException e2) {
            q().v().a("Error storing event aggregates. appId", dx.a(djVar.f4202a), e2);
        }
    }

    final void a(String str, it[] itVarArr) {
        boolean z;
        dz dzVarY;
        String str2;
        Object objA;
        Integer num;
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(itVarArr);
        SQLiteDatabase sQLiteDatabaseX = x();
        sQLiteDatabaseX.beginTransaction();
        try {
            N();
            c();
            com.google.android.gms.common.internal.aa.a(str);
            SQLiteDatabase sQLiteDatabaseX2 = x();
            sQLiteDatabaseX2.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseX2.delete("event_filters", "app_id=?", new String[]{str});
            for (it itVar : itVarArr) {
                N();
                c();
                com.google.android.gms.common.internal.aa.a(str);
                com.google.android.gms.common.internal.aa.a(itVar);
                com.google.android.gms.common.internal.aa.a(itVar.f4574e);
                com.google.android.gms.common.internal.aa.a(itVar.f4573d);
                if (itVar.f4572c == null) {
                    q().y().a("Audience with no ID. appId", dx.a(str));
                } else {
                    int iIntValue = itVar.f4572c.intValue();
                    iu[] iuVarArr = itVar.f4574e;
                    int length = iuVarArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            for (ix ixVar : itVar.f4573d) {
                                if (ixVar.f4584c == null) {
                                    dzVarY = q().y();
                                    str2 = "Property filter with no ID. Audience definition ignored. appId, audienceId";
                                    objA = dx.a(str);
                                    num = itVar.f4572c;
                                }
                            }
                            iu[] iuVarArr2 = itVar.f4574e;
                            int length2 = iuVarArr2.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length2) {
                                    z = true;
                                    break;
                                } else {
                                    if (!a(str, iIntValue, iuVarArr2[i2])) {
                                        z = false;
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            if (z) {
                                ix[] ixVarArr = itVar.f4573d;
                                int length3 = ixVarArr.length;
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= length3) {
                                        break;
                                    }
                                    if (!a(str, iIntValue, ixVarArr[i3])) {
                                        z = false;
                                        break;
                                    }
                                    i3++;
                                }
                            }
                            if (!z) {
                                N();
                                c();
                                com.google.android.gms.common.internal.aa.a(str);
                                SQLiteDatabase sQLiteDatabaseX3 = x();
                                sQLiteDatabaseX3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                sQLiteDatabaseX3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                            }
                        } else {
                            if (iuVarArr[i].f4575c == null) {
                                dzVarY = q().y();
                                str2 = "Event filter with no ID. Audience definition ignored. appId, audienceId";
                                objA = dx.a(str);
                                num = itVar.f4572c;
                                break;
                            }
                            i++;
                        }
                    }
                    dzVarY.a(str2, objA, num);
                }
            }
            ArrayList arrayList = new ArrayList();
            for (it itVar2 : itVarArr) {
                arrayList.add(itVar2.f4572c);
            }
            a(str, arrayList);
            sQLiteDatabaseX.setTransactionSuccessful();
        } finally {
            sQLiteDatabaseX.endTransaction();
        }
    }

    final void a(List<Long> list) {
        c();
        N();
        com.google.android.gms.common.internal.aa.a(list);
        com.google.android.gms.common.internal.aa.a(list.size());
        if (P()) {
            String strJoin = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 80);
            sb2.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb2.append(string);
            sb2.append(" AND retry_count =  2147483647 LIMIT 1");
            if (b(sb2.toString(), (String[]) null) > 0) {
                q().y().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseX = x();
                StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 127);
                sb3.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb3.append(string);
                sb3.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                sQLiteDatabaseX.execSQL(sb3.toString());
            } catch (SQLiteException e2) {
                q().v().a("Error incrementing retry count. error", e2);
            }
        }
    }

    public final boolean a(di diVar, long j, boolean z) {
        dz dzVarV;
        Object objA;
        String str;
        ContentValues contentValues;
        c();
        N();
        com.google.android.gms.common.internal.aa.a(diVar);
        com.google.android.gms.common.internal.aa.a(diVar.f4197a);
        jd jdVar = new jd();
        jdVar.f = Long.valueOf(diVar.f4200d);
        jdVar.f4605c = new je[diVar.f4201e.a()];
        int i = 0;
        for (String str2 : diVar.f4201e) {
            je jeVar = new je();
            int i2 = i + 1;
            jdVar.f4605c[i] = jeVar;
            jeVar.f4608c = str2;
            n().a(jeVar, diVar.f4201e.a(str2));
            i = i2;
        }
        try {
            int iD = jdVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            jdVar.a(dVarA);
            dVarA.a();
            q().C().a("Saving event, name, data size", m().a(diVar.f4198b), Integer.valueOf(iD));
            contentValues = new ContentValues();
            contentValues.put("app_id", diVar.f4197a);
            contentValues.put("name", diVar.f4198b);
            contentValues.put("timestamp", Long.valueOf(diVar.f4199c));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        } catch (IOException e2) {
            e = e2;
            dzVarV = q().v();
            objA = dx.a(diVar.f4197a);
            str = "Data loss. Failed to serialize event params/data. appId";
        }
        try {
            if (x().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            q().v().a("Failed to insert raw event (got -1). appId", dx.a(diVar.f4197a));
            return false;
        } catch (SQLiteException e3) {
            e = e3;
            dzVarV = q().v();
            objA = dx.a(diVar.f4197a);
            str = "Error storing raw event. appId";
            dzVarV.a(str, objA, e);
            return false;
        }
    }

    public final boolean a(ip ipVar) {
        com.google.android.gms.common.internal.aa.a(ipVar);
        c();
        N();
        if (c(ipVar.f4560a, ipVar.f4562c) == null) {
            if (iq.a(ipVar.f4562c)) {
                if (b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{ipVar.f4560a}) >= 25) {
                    return false;
                }
            } else if (b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{ipVar.f4560a, ipVar.f4561b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", ipVar.f4560a);
        contentValues.put("origin", ipVar.f4561b);
        contentValues.put("name", ipVar.f4562c);
        contentValues.put("set_timestamp", Long.valueOf(ipVar.f4563d));
        a(contentValues, "value", ipVar.f4564e);
        try {
            if (x().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                q().v().a("Failed to insert/update user property (got -1). appId", dx.a(ipVar.f4560a));
            }
        } catch (SQLiteException e2) {
            q().v().a("Error storing user property. appId", dx.a(ipVar.f4560a), e2);
        }
        return true;
    }

    public final boolean a(jg jgVar, boolean z) {
        dz dzVarV;
        Object objA;
        String str;
        ContentValues contentValues;
        c();
        N();
        com.google.android.gms.common.internal.aa.a(jgVar);
        com.google.android.gms.common.internal.aa.a(jgVar.q);
        com.google.android.gms.common.internal.aa.a(jgVar.h);
        A();
        long jA = j().a();
        if (jgVar.h.longValue() < jA - cy.v() || jgVar.h.longValue() > cy.v() + jA) {
            q().y().a("Storing bundle outside of the max uploading time span. appId, now, timestamp", dx.a(jgVar.q), Long.valueOf(jA), jgVar.h);
        }
        try {
            int iD = jgVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            jgVar.a(dVarA);
            dVarA.a();
            byte[] bArrA = n().a(bArr);
            q().C().a("Saving bundle, size", Integer.valueOf(bArrA.length));
            contentValues = new ContentValues();
            contentValues.put("app_id", jgVar.q);
            contentValues.put("bundle_end_timestamp", jgVar.h);
            contentValues.put("data", bArrA);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (jgVar.J != null) {
                contentValues.put("retry_count", jgVar.J);
            }
        } catch (IOException e2) {
            e = e2;
            dzVarV = q().v();
            objA = dx.a(jgVar.q);
            str = "Data loss. Failed to serialize bundle. appId";
        }
        try {
            if (x().insert("queue", null, contentValues) != -1) {
                return true;
            }
            q().v().a("Failed to insert bundle (got -1). appId", dx.a(jgVar.q));
            return false;
        } catch (SQLiteException e3) {
            e = e3;
            dzVarV = q().v();
            objA = dx.a(jgVar.q);
            str = "Error storing bundle. appId";
            dzVarV.a(str, objA, e);
            return false;
        }
    }

    public final boolean a(zzed zzedVar) {
        com.google.android.gms.common.internal.aa.a(zzedVar);
        c();
        N();
        if (c(zzedVar.f4718a, zzedVar.f4720c.f4728a) == null && b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzedVar.f4718a}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzedVar.f4718a);
        contentValues.put("origin", zzedVar.f4719b);
        contentValues.put("name", zzedVar.f4720c.f4728a);
        a(contentValues, "value", zzedVar.f4720c.a());
        contentValues.put("active", Boolean.valueOf(zzedVar.f4722e));
        contentValues.put("trigger_event_name", zzedVar.f);
        contentValues.put("trigger_timeout", Long.valueOf(zzedVar.h));
        n();
        contentValues.put("timed_out_event", iq.a((Parcelable) zzedVar.g));
        contentValues.put("creation_timestamp", Long.valueOf(zzedVar.f4721d));
        n();
        contentValues.put("triggered_event", iq.a((Parcelable) zzedVar.i));
        contentValues.put("triggered_timestamp", Long.valueOf(zzedVar.f4720c.f4729b));
        contentValues.put("time_to_live", Long.valueOf(zzedVar.j));
        n();
        contentValues.put("expired_event", iq.a((Parcelable) zzedVar.k));
        try {
            if (x().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                q().v().a("Failed to insert/update conditional user property (got -1)", dx.a(zzedVar.f4718a));
            }
        } catch (SQLiteException e2) {
            q().v().a("Error storing conditional user property", dx.a(zzedVar.f4718a), e2);
        }
        return true;
    }

    public final boolean a(String str, Long l, long j, jd jdVar) {
        c();
        N();
        com.google.android.gms.common.internal.aa.a(jdVar);
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(l);
        try {
            int iD = jdVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            jdVar.a(dVarA);
            dVarA.a();
            q().C().a("Saving complex main event, appId, data size", m().a(str), Integer.valueOf(iD));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("event_id", l);
            contentValues.put("children_to_process", Long.valueOf(j));
            contentValues.put("main_event", bArr);
            try {
                if (x().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                    return true;
                }
                q().v().a("Failed to insert complex main event (got -1). appId", dx.a(str));
                return false;
            } catch (SQLiteException e2) {
                q().v().a("Error storing complex main event. appId", dx.a(str), e2);
                return false;
            }
        } catch (IOException e3) {
            q().v().a("Data loss. Failed to serialize event params/data. appId, eventId", dx.a(str), l, e3);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.ct b(java.lang.String r31) {
        /*
            Method dump skipped, instruction units count: 462
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.b(java.lang.String):com.google.android.gms.internal.measurement.ct");
    }

    public final List<zzed> b(String str, String str2, String str3) {
        com.google.android.gms.common.internal.aa.a(str);
        c();
        N();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void b(String str, String str2) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        c();
        N();
        try {
            q().C().a("Deleted user attribute rows", Integer.valueOf(x().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e2) {
            q().v().a("Error deleting user attribute. appId", dx.a(str), m().c(str2), e2);
        }
    }

    public final long c(String str) {
        com.google.android.gms.common.internal.aa.a(str);
        c();
        N();
        try {
            return x().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, s().b(str, dn.q))))});
        } catch (SQLiteException e2) {
            q().v().a("Error deleting over the limit events. appId", dx.a(str), e2);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.ip c(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            com.google.android.gms.common.internal.aa.a(r19)
            com.google.android.gms.common.internal.aa.a(r20)
            r18.c()
            r18.N()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.x()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            java.lang.String r11 = "user_attributes"
            java.lang.String r0 = "set_timestamp"
            java.lang.String r1 = "value"
            java.lang.String r2 = "origin"
            java.lang.String[] r12 = new java.lang.String[]{r0, r1, r2}     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            java.lang.String r13 = "app_id=? and name=?"
            r0 = 2
            java.lang.String[] r14 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            r1 = 0
            r14[r1] = r19     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            r2 = 1
            r14[r2] = r8     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            r15 = 0
            r16 = 0
            r17 = 0
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteException -> L82
            boolean r3 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L76 android.database.sqlite.SQLiteException -> L7a
            if (r3 != 0) goto L3f
            if (r10 == 0) goto L3e
            r10.close()
        L3e:
            return r9
        L3f:
            long r5 = r10.getLong(r1)     // Catch: java.lang.Throwable -> L76 android.database.sqlite.SQLiteException -> L7a
            r11 = r18
            java.lang.Object r7 = r11.a(r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            java.lang.String r3 = r10.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            com.google.android.gms.internal.measurement.ip r0 = new com.google.android.gms.internal.measurement.ip     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            boolean r1 = r10.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            if (r1 == 0) goto L6e
            com.google.android.gms.internal.measurement.dx r1 = r18.q()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            com.google.android.gms.internal.measurement.dz r1 = r1.v()     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r3 = com.google.android.gms.internal.measurement.dx.a(r19)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
            r1.a(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L74 java.lang.Throwable -> La5
        L6e:
            if (r10 == 0) goto L73
            r10.close()
        L73:
            return r0
        L74:
            r0 = move-exception
            goto L86
        L76:
            r0 = move-exception
            r11 = r18
            goto La6
        L7a:
            r0 = move-exception
            r11 = r18
            goto L86
        L7e:
            r0 = move-exception
            r11 = r18
            goto La7
        L82:
            r0 = move-exception
            r11 = r18
            r10 = r9
        L86:
            com.google.android.gms.internal.measurement.dx r1 = r18.q()     // Catch: java.lang.Throwable -> La5
            com.google.android.gms.internal.measurement.dz r1 = r1.v()     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = "Error querying user property. appId"
            java.lang.Object r3 = com.google.android.gms.internal.measurement.dx.a(r19)     // Catch: java.lang.Throwable -> La5
            com.google.android.gms.internal.measurement.dv r4 = r18.m()     // Catch: java.lang.Throwable -> La5
            java.lang.String r4 = r4.c(r8)     // Catch: java.lang.Throwable -> La5
            r1.a(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> La5
            if (r10 == 0) goto La4
            r10.close()
        La4:
            return r9
        La5:
            r0 = move-exception
        La6:
            r9 = r10
        La7:
            if (r9 == 0) goto Lac
            r9.close()
        Lac:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.c(java.lang.String, java.lang.String):com.google.android.gms.internal.measurement.ip");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.zzed d(java.lang.String r30, java.lang.String r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.d(java.lang.String, java.lang.String):com.google.android.gms.internal.measurement.zzed");
    }

    public final byte[] d(String str) throws Throwable {
        Cursor cursorQuery;
        com.google.android.gms.common.internal.aa.a(str);
        c();
        N();
        Cursor cursor = null;
        try {
            cursorQuery = x().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    if (cursorQuery.moveToNext()) {
                        q().v().a("Got multiple records for app config, expected one. appId", dx.a(str));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return blob;
                } catch (SQLiteException e2) {
                    e = e2;
                    q().v().a("Error querying remote config. appId", dx.a(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
            }
            th = th;
            cursor = cursorQuery;
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    public final int e(String str, String str2) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        c();
        N();
        try {
            return x().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            q().v().a("Error deleting conditional property", dx.a(str), m().c(str2), e2);
            return 0;
        }
    }

    final Map<Integer, jh> e(String str) {
        Cursor cursorQuery;
        N();
        c();
        com.google.android.gms.common.internal.aa.a(str);
        Cursor cursor = null;
        try {
            cursorQuery = x().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    androidx.c.a aVar = new androidx.c.a();
                    do {
                        int i = cursorQuery.getInt(0);
                        byte[] blob = cursorQuery.getBlob(1);
                        c cVarA = c.a(blob, 0, blob.length);
                        jh jhVar = new jh();
                        try {
                            jhVar.a(cVarA);
                            aVar.put(Integer.valueOf(i), jhVar);
                        } catch (IOException e2) {
                            q().v().a("Failed to merge filter results. appId, audienceId, error", dx.a(str), Integer.valueOf(i), e2);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return aVar;
                } catch (SQLiteException e3) {
                    e = e3;
                    q().v().a("Database error querying filter results. appId", dx.a(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
            }
            th = th;
            cursor = cursorQuery;
        } catch (SQLiteException e4) {
            e = e4;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    public final long f(String str) {
        com.google.android.gms.common.internal.aa.a(str);
        return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.iu>> f(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.N()
            r12.c()
            com.google.android.gms.common.internal.aa.a(r13)
            com.google.android.gms.common.internal.aa.a(r14)
            androidx.c.a r0 = new androidx.c.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.x()
            r9 = 0
            java.lang.String r2 = "event_filters"
            java.lang.String r3 = "audience_id"
            java.lang.String r4 = "data"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            java.lang.String r4 = "app_id=? AND event_name=?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            r10 = 0
            r5[r10] = r13     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            r11 = 1
            r5[r11] = r14     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r1 != 0) goto L42
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r14 == 0) goto L41
            r14.close()
        L41:
            return r13
        L42:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            int r2 = r1.length     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.c r1 = com.google.android.gms.internal.measurement.c.a(r1, r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.iu r2 = new com.google.android.gms.internal.measurement.iu     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r2.<init>()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r2.a(r1)     // Catch: java.io.IOException -> L73 android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            int r1 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r3 != 0) goto L6f
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r0.put(r1, r3)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
        L6f:
            r3.add(r2)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            goto L85
        L73:
            r1 = move-exception
            com.google.android.gms.internal.measurement.dx r2 = r12.q()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.dz r2 = r2.v()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = com.google.android.gms.internal.measurement.dx.a(r13)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r2.a(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
        L85:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r1 != 0) goto L42
            if (r14 == 0) goto L90
            r14.close()
        L90:
            return r0
        L91:
            r0 = move-exception
            goto L97
        L93:
            r13 = move-exception
            goto Lb0
        L95:
            r0 = move-exception
            r14 = r9
        L97:
            com.google.android.gms.internal.measurement.dx r1 = r12.q()     // Catch: java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.dz r1 = r1.v()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.internal.measurement.dx.a(r13)     // Catch: java.lang.Throwable -> Lae
            r1.a(r2, r13, r0)     // Catch: java.lang.Throwable -> Lae
            if (r14 == 0) goto Lad
            r14.close()
        Lad:
            return r9
        Lae:
            r13 = move-exception
            r9 = r14
        Lb0:
            if (r9 == 0) goto Lb5
            r9.close()
        Lb5:
            goto Lb7
        Lb6:
            throw r13
        Lb7:
            goto Lb6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.f(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.ix>> g(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.N()
            r12.c()
            com.google.android.gms.common.internal.aa.a(r13)
            com.google.android.gms.common.internal.aa.a(r14)
            androidx.c.a r0 = new androidx.c.a
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.x()
            r9 = 0
            java.lang.String r2 = "property_filters"
            java.lang.String r3 = "audience_id"
            java.lang.String r4 = "data"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            java.lang.String r4 = "app_id=? AND property_name=?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            r10 = 0
            r5[r10] = r13     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            r11 = 1
            r5[r11] = r14     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L93 android.database.sqlite.SQLiteException -> L95
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r1 != 0) goto L42
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r14 == 0) goto L41
            r14.close()
        L41:
            return r13
        L42:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            int r2 = r1.length     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.c r1 = com.google.android.gms.internal.measurement.c.a(r1, r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.ix r2 = new com.google.android.gms.internal.measurement.ix     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r2.<init>()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r2.a(r1)     // Catch: java.io.IOException -> L73 android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            int r1 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r3 != 0) goto L6f
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r0.put(r1, r3)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
        L6f:
            r3.add(r2)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            goto L85
        L73:
            r1 = move-exception
            com.google.android.gms.internal.measurement.dx r2 = r12.q()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.dz r2 = r2.v()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = com.google.android.gms.internal.measurement.dx.a(r13)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            r2.a(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
        L85:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L91 java.lang.Throwable -> Lae
            if (r1 != 0) goto L42
            if (r14 == 0) goto L90
            r14.close()
        L90:
            return r0
        L91:
            r0 = move-exception
            goto L97
        L93:
            r13 = move-exception
            goto Lb0
        L95:
            r0 = move-exception
            r14 = r9
        L97:
            com.google.android.gms.internal.measurement.dx r1 = r12.q()     // Catch: java.lang.Throwable -> Lae
            com.google.android.gms.internal.measurement.dz r1 = r1.v()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.internal.measurement.dx.a(r13)     // Catch: java.lang.Throwable -> Lae
            r1.a(r2, r13, r0)     // Catch: java.lang.Throwable -> Lae
            if (r14 == 0) goto Lad
            r14.close()
        Lad:
            return r9
        Lae:
            r13 = move-exception
            r9 = r14
        Lb0:
            if (r9 == 0) goto Lb5
            r9.close()
        Lb5:
            goto Lb7
        Lb6:
            throw r13
        Lb7:
            goto Lb6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.db.g(java.lang.String, java.lang.String):java.util.Map");
    }

    protected final long h(String str, String str2) throws Throwable {
        long jA;
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        c();
        N();
        SQLiteDatabase sQLiteDatabaseX = x();
        sQLiteDatabaseX.beginTransaction();
        long j = 0;
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
            sb.append("select ");
            sb.append(str2);
            sb.append(" from app2 where app_id=?");
            try {
                try {
                    jA = a(sb.toString(), new String[]{str}, -1L);
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
                sQLiteDatabaseX.endTransaction();
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
        }
        if (jA == -1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("first_open_count", (Integer) 0);
            contentValues.put("previous_install_count", (Integer) 0);
            if (sQLiteDatabaseX.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                q().v().a("Failed to insert column (got -1). appId", dx.a(str), str2);
                sQLiteDatabaseX.endTransaction();
                return -1L;
            }
            jA = 0;
            q().v().a("Error inserting column. appId", dx.a(str), str2, e);
            sQLiteDatabaseX.endTransaction();
            return j;
        }
        try {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str);
            contentValues2.put(str2, Long.valueOf(1 + jA));
            if (sQLiteDatabaseX.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                q().v().a("Failed to update column (got 0). appId", dx.a(str), str2);
                sQLiteDatabaseX.endTransaction();
                return -1L;
            }
            sQLiteDatabaseX.setTransactionSuccessful();
            sQLiteDatabaseX.endTransaction();
            return jA;
        } catch (SQLiteException e4) {
            e = e4;
            j = jA;
        }
    }

    @Override // com.google.android.gms.internal.measurement.ih
    protected final boolean t() {
        return false;
    }

    public final void u() {
        N();
        x().beginTransaction();
    }

    public final void v() {
        N();
        x().setTransactionSuccessful();
    }

    public final void w() {
        N();
        x().endTransaction();
    }

    final SQLiteDatabase x() {
        c();
        try {
            return this.h.getWritableDatabase();
        } catch (SQLiteException e2) {
            q().y().a("Error opening database", e2);
            throw e2;
        }
    }

    public final String y() throws Throwable {
        Throwable th;
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = x().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return string;
                } catch (SQLiteException e2) {
                    e = e2;
                    q().v().a("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            th = th2;
        } catch (SQLiteException e3) {
            e = e3;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final boolean z() {
        return b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }
}
