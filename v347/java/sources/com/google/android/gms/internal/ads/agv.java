package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class agv {
    private static final String[] e = {"/aclk", "/pcs/click"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3976a = "googleads.g.doubleclick.net";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3977b = "/pagead/ads";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3978c = "ad.doubleclick.net";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String[] f3979d = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private agr f;

    public agv(agr agrVar) {
        this.f = agrVar;
    }

    private final Uri a(Uri uri, Context context, String str, boolean z, View view, Activity activity) throws agw {
        try {
            boolean zC = c(uri);
            if (zC) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new agw("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new agw("Query parameter already exists: ms");
            }
            String strA = z ? this.f.a(context, str, view, activity) : this.f.a(context);
            if (!zC) {
                String string = uri.toString();
                int iIndexOf = string.indexOf("&adurl");
                if (iIndexOf == -1) {
                    iIndexOf = string.indexOf("?adurl");
                }
                return iIndexOf != -1 ? Uri.parse(string.substring(0, iIndexOf + 1) + "ms=" + strA + "&" + string.substring(iIndexOf + 1)) : uri.buildUpon().appendQueryParameter("ms", strA).build();
            }
            String string2 = uri.toString();
            int iIndexOf2 = string2.indexOf(";adurl");
            if (iIndexOf2 != -1) {
                return Uri.parse(string2.substring(0, iIndexOf2 + 1) + "dc_ms=" + strA + ";" + string2.substring(iIndexOf2 + 1));
            }
            String encodedPath = uri.getEncodedPath();
            int iIndexOf3 = string2.indexOf(encodedPath);
            return Uri.parse(string2.substring(0, encodedPath.length() + iIndexOf3) + ";dc_ms=" + strA + ";" + string2.substring(encodedPath.length() + iIndexOf3));
        } catch (UnsupportedOperationException e2) {
            throw new agw("Provided Uri is not in a valid state");
        }
    }

    private final boolean c(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.f3978c);
        } catch (NullPointerException e2) {
            return false;
        }
    }

    public final Uri a(Uri uri, Context context) throws agw {
        return a(uri, context, null, false, null, null);
    }

    public final Uri a(Uri uri, Context context, View view, Activity activity) throws agw {
        try {
            return a(uri, context, uri.getQueryParameter("ai"), true, view, activity);
        } catch (UnsupportedOperationException e2) {
            throw new agw("Provided Uri is not in a valid state");
        }
    }

    public final agr a() {
        return this.f;
    }

    public final void a(MotionEvent motionEvent) {
        this.f.a(motionEvent);
    }

    public final boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.f3979d) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e2) {
            return false;
        }
    }

    public final boolean b(Uri uri) {
        if (!a(uri)) {
            return false;
        }
        for (String str : e) {
            if (uri.getPath().endsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
