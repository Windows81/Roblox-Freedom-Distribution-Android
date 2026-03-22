package androidx.f.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.f.b.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a<Cursor> {
    final c<Cursor>.a f;
    Uri g;
    String[] h;
    String i;
    String[] j;
    String k;
    Cursor l;
    androidx.core.d.b m;

    @Override // androidx.f.b.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Cursor d() {
        synchronized (this) {
            if (g()) {
                throw new androidx.core.d.c();
            }
            this.m = new androidx.core.d.b();
        }
        try {
            Cursor cursorA = androidx.core.a.a.a(m().getContentResolver(), this.g, this.h, this.i, this.j, this.k, this.m);
            if (cursorA != null) {
                try {
                    cursorA.getCount();
                    cursorA.registerContentObserver(this.f);
                } catch (RuntimeException e2) {
                    cursorA.close();
                    throw e2;
                }
            }
            synchronized (this) {
                this.m = null;
            }
            return cursorA;
        } catch (Throwable th) {
            synchronized (this) {
                this.m = null;
                throw th;
            }
        }
    }

    @Override // androidx.f.b.a
    public void f() {
        super.f();
        synchronized (this) {
            if (this.m != null) {
                this.m.c();
            }
        }
    }

    @Override // androidx.f.b.c
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void b(Cursor cursor) {
        if (p()) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.l;
        this.l = cursor;
        if (n()) {
            super.b(cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    public b(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.f = new c.a();
        this.g = uri;
        this.h = strArr;
        this.i = str;
        this.j = strArr2;
        this.k = str2;
    }

    @Override // androidx.f.b.c
    protected void i() {
        Cursor cursor = this.l;
        if (cursor != null) {
            b(cursor);
        }
        if (x() || this.l == null) {
            s();
        }
    }

    @Override // androidx.f.b.c
    protected void j() {
        r();
    }

    @Override // androidx.f.b.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    @Override // androidx.f.b.c
    protected void k() {
        super.k();
        j();
        Cursor cursor = this.l;
        if (cursor != null && !cursor.isClosed()) {
            this.l.close();
        }
        this.l = null;
    }

    @Override // androidx.f.b.a, androidx.f.b.c
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.g);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.h));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.i);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.j));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.k);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.l);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.u);
    }
}
