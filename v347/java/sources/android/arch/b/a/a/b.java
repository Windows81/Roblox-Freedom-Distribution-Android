package android.arch.b.a.a;

import android.arch.b.a.c;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class b implements android.arch.b.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f44a;

    b(Context context, String str, c.a aVar) {
        this.f44a = a(context, str, aVar);
    }

    private a a(Context context, String str, c.a aVar) {
        return new a(context, str, new android.arch.b.a.a.a[1], aVar);
    }

    @Override // android.arch.b.a.c
    public android.arch.b.a.b a() {
        return this.f44a.a();
    }

    static class a extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final android.arch.b.a.a.a[] f45a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final c.a f46b;

        a(Context context, String str, final android.arch.b.a.a.a[] aVarArr, final c.a aVar) {
            super(context, str, null, aVar.f51a, new DatabaseErrorHandler() { // from class: android.arch.b.a.a.b.a.1
                @Override // android.database.DatabaseErrorHandler
                public void onCorruption(SQLiteDatabase sQLiteDatabase) throws Throwable {
                    android.arch.b.a.a.a aVar2 = aVarArr[0];
                    if (aVar2 != null) {
                        aVar.d(aVar2);
                    }
                }
            });
            this.f46b = aVar;
            this.f45a = aVarArr;
        }

        android.arch.b.a.b a() {
            return a(super.getWritableDatabase());
        }

        android.arch.b.a.a.a a(SQLiteDatabase sQLiteDatabase) {
            if (this.f45a[0] == null) {
                this.f45a[0] = new android.arch.b.a.a.a(sQLiteDatabase);
            }
            return this.f45a[0];
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f46b.b(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f46b.a(a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f46b.a(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f46b.b(a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            this.f46b.c(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f45a[0] = null;
        }
    }
}
