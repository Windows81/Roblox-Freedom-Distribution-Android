package androidx.i.a.a;

import android.database.sqlite.SQLiteProgram;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d implements androidx.i.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteProgram f1879a;

    d(SQLiteProgram sQLiteProgram) {
        this.f1879a = sQLiteProgram;
    }

    @Override // androidx.i.a.d
    public void a(int i) {
        this.f1879a.bindNull(i);
    }

    @Override // androidx.i.a.d
    public void a(int i, long j) {
        this.f1879a.bindLong(i, j);
    }

    @Override // androidx.i.a.d
    public void a(int i, double d2) {
        this.f1879a.bindDouble(i, d2);
    }

    @Override // androidx.i.a.d
    public void a(int i, String str) {
        this.f1879a.bindString(i, str);
    }

    @Override // androidx.i.a.d
    public void a(int i, byte[] bArr) {
        this.f1879a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f1879a.close();
    }
}
