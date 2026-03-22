package androidx.i.a.a;

import android.database.sqlite.SQLiteStatement;
import androidx.i.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class e extends d implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SQLiteStatement f1880a;

    e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f1880a = sQLiteStatement;
    }

    @Override // androidx.i.a.f
    public int a() {
        return this.f1880a.executeUpdateDelete();
    }

    @Override // androidx.i.a.f
    public long b() {
        return this.f1880a.executeInsert();
    }
}
