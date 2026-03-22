package android.support.v4.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.a.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends a<Cursor> {
    final e<Cursor>.a f;
    Uri g;
    String[] h;
    String i;
    String[] j;
    String k;
    Cursor l;
    android.support.v4.os.b m;

    @Override // android.support.v4.a.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Cursor d() {
        synchronized (this) {
            if (g()) {
                throw new android.support.v4.os.d();
            }
            this.m = new android.support.v4.os.b();
        }
        try {
            Cursor cursorA = b.a(m().getContentResolver(), this.g, this.h, this.i, this.j, this.k, this.m);
            if (cursorA != null) {
                try {
                    cursorA.getCount();
                    cursorA.registerContentObserver(this.f);
                } catch (RuntimeException e) {
                    cursorA.close();
                    throw e;
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

    @Override // android.support.v4.a.a
    public void f() {
        super.f();
        synchronized (this) {
            if (this.m != null) {
                this.m.c();
            }
        }
    }

    @Override // android.support.v4.a.e
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
        if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
            cursor2.close();
        }
    }

    public d(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.f = new e.a();
        this.g = uri;
        this.h = strArr;
        this.i = str;
        this.j = strArr2;
        this.k = str2;
    }

    @Override // android.support.v4.a.e
    protected void i() {
        if (this.l != null) {
            b(this.l);
        }
        if (x() || this.l == null) {
            s();
        }
    }

    @Override // android.support.v4.a.e
    protected void j() {
        r();
    }

    @Override // android.support.v4.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    @Override // android.support.v4.a.e
    protected void k() {
        super.k();
        j();
        if (this.l != null && !this.l.isClosed()) {
            this.l.close();
        }
        this.l = null;
    }

    @Override // android.support.v4.a.a, android.support.v4.a.e
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
