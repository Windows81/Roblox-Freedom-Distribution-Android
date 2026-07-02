package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class ab extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aa f5851a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ab(aa aaVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f5851a = aaVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean a(android.database.sqlite.SQLiteDatabase r11, java.lang.String r12) throws java.lang.Throwable {
        /*
            r10 = this;
            r8 = 0
            r9 = 0
            java.lang.String r1 = "SQLITE_MASTER"
            r0 = 1
            java.lang.String[] r2 = new java.lang.String[r0]     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
            r0 = 0
            java.lang.String r3 = "name"
            r2[r0] = r3     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
            java.lang.String r3 = "name=?"
            r0 = 1
            java.lang.String[] r4 = new java.lang.String[r0]     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
            r0 = 0
            r4[r0] = r12     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
            r5 = 0
            r6 = 0
            r7 = 0
            r0 = r11
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L26 java.lang.Throwable -> L36
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L3d android.database.sqlite.SQLiteException -> L40
            if (r1 == 0) goto L25
            r1.close()
        L25:
            return r0
        L26:
            r0 = move-exception
            r1 = r9
        L28:
            com.google.android.gms.internal.measurement.aa r2 = r10.f5851a     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = "Error querying for table"
            r2.c(r3, r12, r0)     // Catch: java.lang.Throwable -> L3d
            if (r1 == 0) goto L34
            r1.close()
        L34:
            r0 = r8
            goto L25
        L36:
            r0 = move-exception
        L37:
            if (r9 == 0) goto L3c
            r9.close()
        L3c:
            throw r0
        L3d:
            r0 = move-exception
            r9 = r1
            goto L37
        L40:
            r0 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ab.a(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    private static Set<String> b(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" LIMIT 0").toString(), null);
        try {
            for (String str2 : cursorRawQuery.getColumnNames()) {
                hashSet.add(str2);
            }
            return hashSet;
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        if (!this.f5851a.e.a(3600000L)) {
            throw new SQLiteException("Database open failed");
        }
        try {
            return super.getWritableDatabase();
        } catch (SQLiteException e) {
            this.f5851a.e.a();
            this.f5851a.f("Opening the database failed, dropping the table and recreating it");
            aa aaVar = this.f5851a;
            this.f5851a.j().getDatabasePath(aa.D()).delete();
            try {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                this.f5851a.e.b();
                return writableDatabase;
            } catch (SQLiteException e2) {
                this.f5851a.e("Failed to open freshly created database", e2);
                throw e2;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (ay.a() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (Build.VERSION.SDK_INT < 15) {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
            try {
                cursorRawQuery.moveToFirst();
            } finally {
                cursorRawQuery.close();
            }
        }
        if (a(sQLiteDatabase, "hits2")) {
            Set<String> setB = b(sQLiteDatabase, "hits2");
            String[] strArr = {"hit_id", "hit_string", "hit_time", "hit_url"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (!setB.remove(str)) {
                    String strValueOf = String.valueOf(str);
                    throw new SQLiteException(strValueOf.length() != 0 ? "Database hits2 is missing required column: ".concat(strValueOf) : new String("Database hits2 is missing required column: "));
                }
            }
            boolean z = !setB.remove("hit_app_id");
            if (!setB.isEmpty()) {
                throw new SQLiteException("Database hits2 has extra columns");
            }
            if (z) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
            }
        } else {
            sQLiteDatabase.execSQL(aa.f5847a);
        }
        if (!a(sQLiteDatabase, "properties")) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            return;
        }
        Set<String> setB2 = b(sQLiteDatabase, "properties");
        String[] strArr2 = {"app_uid", "cid", "tid", "params", "adid", "hits_count"};
        for (int i2 = 0; i2 < 6; i2++) {
            String str2 = strArr2[i2];
            if (!setB2.remove(str2)) {
                String strValueOf2 = String.valueOf(str2);
                throw new SQLiteException(strValueOf2.length() != 0 ? "Database properties is missing required column: ".concat(strValueOf2) : new String("Database properties is missing required column: "));
            }
        }
        if (!setB2.isEmpty()) {
            throw new SQLiteException("Database properties table has extra columns");
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
