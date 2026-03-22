package android.arch.b.a.a;

import android.arch.b.a.f;
import android.database.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class e implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteStatement f50a;

    e(SQLiteStatement sQLiteStatement) {
        this.f50a = sQLiteStatement;
    }

    @Override // android.arch.b.a.d
    public void a(int i) {
        this.f50a.bindNull(i);
    }

    @Override // android.arch.b.a.d
    public void a(int i, long j) {
        this.f50a.bindLong(i, j);
    }

    @Override // android.arch.b.a.d
    public void a(int i, double d2) {
        this.f50a.bindDouble(i, d2);
    }

    @Override // android.arch.b.a.d
    public void a(int i, String str) {
        this.f50a.bindString(i, str);
    }

    @Override // android.arch.b.a.d
    public void a(int i, byte[] bArr) {
        this.f50a.bindBlob(i, bArr);
    }

    @Override // android.arch.b.a.f
    public int a() {
        return this.f50a.executeUpdateDelete();
    }

    @Override // android.arch.b.a.f
    public long b() {
        return this.f50a.executeInsert();
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        this.f50a.close();
    }
}
