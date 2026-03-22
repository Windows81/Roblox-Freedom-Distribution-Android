package android.arch.b.a.a;

import android.arch.b.a.f;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.util.Pair;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a implements android.arch.b.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f39a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f40b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SQLiteDatabase f41c;

    a(SQLiteDatabase sQLiteDatabase) {
        this.f41c = sQLiteDatabase;
    }

    @Override // android.arch.b.a.b
    public f a(String str) {
        return new e(this.f41c.compileStatement(str));
    }

    @Override // android.arch.b.a.b
    public void a() {
        this.f41c.beginTransaction();
    }

    @Override // android.arch.b.a.b
    public void b() {
        this.f41c.endTransaction();
    }

    @Override // android.arch.b.a.b
    public void c() {
        this.f41c.setTransactionSuccessful();
    }

    @Override // android.arch.b.a.b
    public boolean d() {
        return this.f41c.inTransaction();
    }

    @Override // android.arch.b.a.b
    public Cursor b(String str) {
        return a(new android.arch.b.a.a(str));
    }

    @Override // android.arch.b.a.b
    public Cursor a(final android.arch.b.a.e eVar) {
        return this.f41c.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: android.arch.b.a.a.a.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                eVar.a(new d(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, eVar.a(), f40b, null);
    }

    @Override // android.arch.b.a.b
    public void c(String str) throws SQLException {
        this.f41c.execSQL(str);
    }

    @Override // android.arch.b.a.b
    public boolean e() {
        return this.f41c.isOpen();
    }

    @Override // android.arch.b.a.b
    public String f() {
        return this.f41c.getPath();
    }

    @Override // android.arch.b.a.b
    public List<Pair<String, String>> g() {
        return this.f41c.getAttachedDbs();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f41c.close();
    }
}
