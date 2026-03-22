package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aez {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final Charset f3891a = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Charset f3893c = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f3892b = new Object();

    public static void a(aev aevVar, aev aevVar2) {
        if (aevVar.Y != null) {
            aevVar2.Y = (aex) aevVar.Y.clone();
        }
    }
}
