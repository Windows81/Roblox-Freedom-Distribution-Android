package android.arch.b.a.a;

import android.database.sqlite.SQLiteProgram;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class d implements android.arch.b.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteProgram f49a;

    d(SQLiteProgram sQLiteProgram) {
        this.f49a = sQLiteProgram;
    }

    @Override // android.arch.b.a.d
    public void a(int i) {
        this.f49a.bindNull(i);
    }

    @Override // android.arch.b.a.d
    public void a(int i, long j) {
        this.f49a.bindLong(i, j);
    }

    @Override // android.arch.b.a.d
    public void a(int i, double d2) {
        this.f49a.bindDouble(i, d2);
    }

    @Override // android.arch.b.a.d
    public void a(int i, String str) {
        this.f49a.bindString(i, str);
    }

    @Override // android.arch.b.a.d
    public void a(int i, byte[] bArr) {
        this.f49a.bindBlob(i, bArr);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        this.f49a.close();
    }
}
