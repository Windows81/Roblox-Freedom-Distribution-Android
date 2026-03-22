package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.n;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@Deprecated
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3654a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f3655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3656c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Status f3657d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3658e;
    private final boolean f;

    f(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(n.a.common_google_play_services_unknown_issue));
        boolean z = true;
        if (identifier != 0) {
            boolean z2 = resources.getInteger(identifier) != 0;
            this.f = !z2;
            z = z2;
        } else {
            this.f = false;
        }
        this.f3658e = z;
        String strA = com.google.android.gms.common.internal.x.a(context);
        strA = strA == null ? new com.google.android.gms.common.internal.ae(context).a("google_app_id") : strA;
        if (TextUtils.isEmpty(strA)) {
            this.f3657d = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f3656c = null;
        } else {
            this.f3656c = strA;
            this.f3657d = Status.f3436a;
        }
    }

    public static Status a(Context context) {
        Status status;
        com.google.android.gms.common.internal.aa.a(context, "Context must not be null.");
        synchronized (f3654a) {
            if (f3655b == null) {
                f3655b = new f(context);
            }
            status = f3655b.f3657d;
        }
        return status;
    }

    private static f a(String str) {
        f fVar;
        synchronized (f3654a) {
            if (f3655b == null) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
            fVar = f3655b;
        }
        return fVar;
    }

    public static String a() {
        return a("getGoogleAppId").f3656c;
    }

    public static boolean b() {
        return a("isMeasurementExplicitlyDisabled").f;
    }
}
