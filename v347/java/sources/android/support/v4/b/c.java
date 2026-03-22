package android.support.v4.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import android.support.v4.a.a.a;
import android.support.v4.a.a.b;
import android.support.v4.e.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final android.support.v4.g.g<String, Typeface> f859b;

    interface a {
        Typeface a(Context context, Resources resources, int i, String str, int i2);

        Typeface a(Context context, CancellationSignal cancellationSignal, b.C0018b[] c0018bArr, int i);

        Typeface a(Context context, a.b bVar, Resources resources, int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            f858a = new f();
        } else if (Build.VERSION.SDK_INT >= 24 && e.a()) {
            f858a = new e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f858a = new d();
        } else {
            f858a = new g();
        }
        f859b = new android.support.v4.g.g<>(16);
    }

    public static Typeface a(Resources resources, int i, int i2) {
        return f859b.a(b(resources, i, i2));
    }

    private static String b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    public static Typeface a(Context context, a.InterfaceC0013a interfaceC0013a, Resources resources, int i, int i2, b.a aVar, Handler handler, boolean z) {
        Typeface typefaceA;
        boolean z2 = true;
        if (interfaceC0013a instanceof a.d) {
            a.d dVar = (a.d) interfaceC0013a;
            if (z) {
                if (dVar.b() != 0) {
                    z2 = false;
                }
            } else if (aVar != null) {
                z2 = false;
            }
            typefaceA = android.support.v4.e.b.a(context, dVar.a(), aVar, handler, z2, z ? dVar.c() : -1, i2);
        } else {
            typefaceA = f858a.a(context, (a.b) interfaceC0013a, resources, i2);
            if (aVar != null) {
                if (typefaceA != null) {
                    aVar.a(typefaceA, handler);
                } else {
                    aVar.a(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            f859b.a(b(resources, i, i2), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface a(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceA = f858a.a(context, resources, i, str, i2);
        if (typefaceA != null) {
            f859b.a(b(resources, i, i2), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b.C0018b[] c0018bArr, int i) {
        return f858a.a(context, cancellationSignal, c0018bArr, i);
    }
}
