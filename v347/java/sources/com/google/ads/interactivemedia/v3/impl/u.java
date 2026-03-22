package com.google.ads.interactivemedia.v3.impl;

import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2896a = a.PROD;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Uri f2897b = Uri.parse("https://imasdk.googleapis.com/native/sdkloader/native_sdk_v3.html");

    public enum a {
        VERBOSE,
        ABRIDGED,
        LIFECYCLE,
        PROD;

        public static boolean a(a aVar) {
            return aVar.ordinal() >= u.f2896a.ordinal();
        }
    }
}
