package androidx.i.a.a;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.i.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b implements androidx.i.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f1873a;

    b(Context context, String str, c.a aVar) {
        this.f1873a = a(context, str, aVar);
    }

    private a a(Context context, String str, c.a aVar) {
        return new a(context, str, new androidx.i.a.a.a[1], aVar);
    }

    @Override // androidx.i.a.c
    public void a(boolean z) {
        this.f1873a.setWriteAheadLoggingEnabled(z);
    }

    @Override // androidx.i.a.c
    public androidx.i.a.b a() {
        return this.f1873a.a();
    }

    static class a extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.i.a.a.a[] f1874a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final c.a f1875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1876c;

        a(Context context, String str, final androidx.i.a.a.a[] aVarArr, final c.a aVar) {
            super(context, str, null, aVar.f1881a, new DatabaseErrorHandler() { // from class: androidx.i.a.a.b.a.1
                @Override // android.database.DatabaseErrorHandler
                public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    androidx.i.a.a.a aVar2 = aVarArr[0];
                    if (aVar2 != null) {
                        aVar.d(aVar2);
                    }
                }
            });
            this.f1875b = aVar;
            this.f1874a = aVarArr;
        }

        synchronized androidx.i.a.b a() {
            this.f1876c = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.f1876c) {
                close();
                return a();
            }
            return a(writableDatabase);
        }

        androidx.i.a.a.a a(SQLiteDatabase sQLiteDatabase) {
            if (this.f1874a[0] == null) {
                this.f1874a[0] = new androidx.i.a.a.a(sQLiteDatabase);
            }
            return this.f1874a[0];
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f1875b.b(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f1876c = true;
            this.f1875b.a(a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f1875b.a(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f1876c = true;
            this.f1875b.b(a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f1876c) {
                return;
            }
            this.f1875b.c(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f1874a[0] = null;
        }
    }
}
