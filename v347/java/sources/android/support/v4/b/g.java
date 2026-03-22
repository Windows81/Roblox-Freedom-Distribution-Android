package android.support.v4.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.v4.a.a.a;
import android.support.v4.b.c;
import android.support.v4.e.b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class g implements c.a {

    private interface a<T> {
        boolean a(T t);

        int b(T t);
    }

    g() {
    }

    private static <T> T a(T[] tArr, int i, a<T> aVar) {
        T t;
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t2 = null;
        int i3 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i4 = 0;
        while (i4 < length) {
            T t3 = tArr[i4];
            int iAbs = (aVar.a(t3) == z ? 0 : 1) + (Math.abs(aVar.b(t3) - i2) * 2);
            if (t2 == null || i3 > iAbs) {
                i3 = iAbs;
                t = t3;
            } else {
                t = t2;
            }
            i4++;
            t2 = t;
        }
        return t2;
    }

    protected b.C0018b a(b.C0018b[] c0018bArr, int i) {
        return (b.C0018b) a(c0018bArr, i, new a<b.C0018b>() { // from class: android.support.v4.b.g.1
            @Override // android.support.v4.b.g.a
            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public int b(b.C0018b c0018b) {
                return c0018b.c();
            }

            @Override // android.support.v4.b.g.a
            /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public boolean a(b.C0018b c0018b) {
                return c0018b.d();
            }
        });
    }

    protected Typeface a(Context context, InputStream inputStream) {
        Typeface typefaceCreateFromFile = null;
        File fileA = h.a(context);
        if (fileA != null) {
            try {
                if (h.a(fileA, inputStream)) {
                    typefaceCreateFromFile = Typeface.createFromFile(fileA.getPath());
                }
            } catch (RuntimeException e) {
            } finally {
                fileA.delete();
            }
        }
        return typefaceCreateFromFile;
    }

    @Override // android.support.v4.b.c.a
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0018b[] c0018bArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        Throwable th;
        Typeface typefaceA = null;
        if (c0018bArr.length >= 1) {
            try {
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(a(c0018bArr, i).a());
            } catch (IOException e) {
                inputStreamOpenInputStream = null;
            } catch (Throwable th2) {
                inputStreamOpenInputStream = null;
                th = th2;
            }
            try {
                typefaceA = a(context, inputStreamOpenInputStream);
                h.a(inputStreamOpenInputStream);
            } catch (IOException e2) {
                h.a(inputStreamOpenInputStream);
            } catch (Throwable th3) {
                th = th3;
                h.a(inputStreamOpenInputStream);
                throw th;
            }
        }
        return typefaceA;
    }

    private a.c a(a.b bVar, int i) {
        return (a.c) a(bVar.a(), i, new a<a.c>() { // from class: android.support.v4.b.g.2
            @Override // android.support.v4.b.g.a
            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public int b(a.c cVar) {
                return cVar.b();
            }

            @Override // android.support.v4.b.g.a
            /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public boolean a(a.c cVar) {
                return cVar.c();
            }
        });
    }

    @Override // android.support.v4.b.c.a
    public Typeface a(Context context, a.b bVar, Resources resources, int i) {
        a.c cVarA = a(bVar, i);
        if (cVarA == null) {
            return null;
        }
        return c.a(context, resources, cVarA.d(), cVarA.a(), i);
    }

    @Override // android.support.v4.b.c.a
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceCreateFromFile = null;
        File fileA = h.a(context);
        if (fileA != null) {
            try {
                if (h.a(fileA, resources, i)) {
                    typefaceCreateFromFile = Typeface.createFromFile(fileA.getPath());
                }
            } catch (RuntimeException e) {
            } finally {
                fileA.delete();
            }
        }
        return typefaceCreateFromFile;
    }
}
