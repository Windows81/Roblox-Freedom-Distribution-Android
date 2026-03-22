package com.roblox.client.locale.a;

import android.content.Context;
import android.content.res.Resources;
import com.roblox.client.ae.k;
import com.roblox.client.analytics.d;
import com.roblox.client.b;
import com.roblox.client.locale.j;
import java.util.IllegalFormatException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f6454a = a.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f6455b;

    public static void a(Context context) {
        f6455b = context;
    }

    public static String a(int i, Object... objArr) {
        return a(f6455b, i, objArr);
    }

    public static String a(Context context, int i, Object... objArr) {
        if (context == null) {
            return a();
        }
        if (b.n()) {
            String strA = a(i);
            return objArr.length > 0 ? strA == null ? "" : j.a(context).a(strA, objArr) : strA == null ? "" : j.a(context).a(strA);
        }
        return b(context, i, objArr);
    }

    private static String b(Context context, int i, Object... objArr) {
        try {
            k.a(f6454a, "ResourceId: " + i);
            if (objArr.length > 0) {
                return context.getString(i, objArr);
            }
            return context.getString(i);
        } catch (Resources.NotFoundException unused) {
            d.a("Resources.NotFoundException thrown in getStringFromResources()");
            return "";
        } catch (IllegalFormatException unused2) {
            d.a("IllegalFormatException thrown in getStringFromResources()");
            return "";
        }
    }

    private static String a(int i) {
        String strA = com.roblox.c.b.a(i);
        k.a(f6454a, "StringKey: " + strA);
        return strA;
    }

    private static String a() {
        k.e(f6454a, "context is null");
        d.a("Context passed to getStringValue() in RStrings is null.");
        return "";
    }
}
