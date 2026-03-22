package androidx.i.a.a;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.util.Pair;
import androidx.i.a.f;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a implements androidx.i.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f1868a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f1869b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SQLiteDatabase f1870c;

    a(SQLiteDatabase sQLiteDatabase) {
        this.f1870c = sQLiteDatabase;
    }

    @Override // androidx.i.a.b
    public f a(String str) {
        return new e(this.f1870c.compileStatement(str));
    }

    @Override // androidx.i.a.b
    public void a() {
        this.f1870c.beginTransaction();
    }

    @Override // androidx.i.a.b
    public void b() {
        this.f1870c.endTransaction();
    }

    @Override // androidx.i.a.b
    public void c() {
        this.f1870c.setTransactionSuccessful();
    }

    @Override // androidx.i.a.b
    public boolean d() {
        return this.f1870c.inTransaction();
    }

    @Override // androidx.i.a.b
    public Cursor b(String str) {
        return a(new androidx.i.a.a(str));
    }

    @Override // androidx.i.a.b
    public Cursor a(final androidx.i.a.e eVar) {
        return this.f1870c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.i.a.a.a.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                eVar.a(new d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, eVar.b(), f1869b, null);
    }

    @Override // androidx.i.a.b
    public void c(String str) throws SQLException {
        this.f1870c.execSQL(str);
    }

    @Override // androidx.i.a.b
    public boolean e() {
        return this.f1870c.isOpen();
    }

    @Override // androidx.i.a.b
    public String f() {
        return this.f1870c.getPath();
    }

    @Override // androidx.i.a.b
    public List<Pair<String, String>> g() {
        return this.f1870c.getAttachedDbs();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1870c.close();
    }
}
