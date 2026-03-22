package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.core.a.a.c;
import androidx.core.e.b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class h {

    private interface a<T> {
        boolean a(T t);

        int b(T t);
    }

    h() {
    }

    private static <T> T a(T[] tArr, int i, a<T> aVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int iAbs = (Math.abs(aVar.b(t2) - i2) * 2) + (aVar.a(t2) == z ? 0 : 1);
            if (t == null || i3 > iAbs) {
                t = t2;
                i3 = iAbs;
            }
        }
        return t;
    }

    protected b.C0028b a(b.C0028b[] c0028bArr, int i) {
        return (b.C0028b) a(c0028bArr, i, new a<b.C0028b>() { // from class: androidx.core.graphics.h.1
            @Override // androidx.core.graphics.h.a
            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public int b(b.C0028b c0028b) {
                return c0028b.c();
            }

            @Override // androidx.core.graphics.h.a
            /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public boolean a(b.C0028b c0028b) {
                return c0028b.d();
            }
        });
    }

    protected Typeface a(Context context, InputStream inputStream) {
        File fileA = i.a(context);
        if (fileA == null) {
            return null;
        }
        try {
            if (i.a(fileA, inputStream)) {
                return Typeface.createFromFile(fileA.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileA.delete();
        }
    }

    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0028b[] c0028bArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (c0028bArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(a(c0028bArr, i).a());
        } catch (IOException unused) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface typefaceA = a(context, inputStreamOpenInputStream);
            i.a(inputStreamOpenInputStream);
            return typefaceA;
        } catch (IOException unused2) {
            i.a(inputStreamOpenInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenInputStream;
            i.a(inputStream);
            throw th;
        }
    }

    private c.C0024c a(c.b bVar, int i) {
        return (c.C0024c) a(bVar.a(), i, new a<c.C0024c>() { // from class: androidx.core.graphics.h.2
            @Override // androidx.core.graphics.h.a
            /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public int b(c.C0024c c0024c) {
                return c0024c.b();
            }

            @Override // androidx.core.graphics.h.a
            /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public boolean a(c.C0024c c0024c) {
                return c0024c.c();
            }
        });
    }

    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0024c c0024cA = a(bVar, i);
        if (c0024cA == null) {
            return null;
        }
        return c.a(context, resources, c0024cA.f(), c0024cA.a(), i);
    }

    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        File fileA = i.a(context);
        if (fileA == null) {
            return null;
        }
        try {
            if (i.a(fileA, resources, i)) {
                return Typeface.createFromFile(fileA.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileA.delete();
        }
    }
}
