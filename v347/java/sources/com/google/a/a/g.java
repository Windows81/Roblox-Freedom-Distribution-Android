package com.google.a.a;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g {
    private static final String[] e = {"/aclk", "/pcs/click"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2583a = "googleads.g.doubleclick.net";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2584b = "/pagead/ads";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2585c = "ad.doubleclick.net";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String[] f2586d = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private c f;

    public g(c cVar) {
        this.f = cVar;
    }

    public boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.f2585c);
        } catch (NullPointerException e2) {
            return false;
        }
    }

    public boolean b(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.f2586d) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e2) {
            return false;
        }
    }

    public c a() {
        return this.f;
    }

    public Uri a(Uri uri, Context context) throws h {
        return a(uri, context, null, false);
    }

    private Uri a(Uri uri, String str, String str2) throws UnsupportedOperationException {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl");
        }
        if (iIndexOf != -1) {
            return Uri.parse(string.substring(0, iIndexOf + 1) + str + "=" + str2 + "&" + string.substring(iIndexOf + 1));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private Uri b(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf(";adurl");
        if (iIndexOf != -1) {
            return Uri.parse(string.substring(0, iIndexOf + 1) + str + "=" + str2 + ";" + string.substring(iIndexOf + 1));
        }
        String encodedPath = uri.getEncodedPath();
        int iIndexOf2 = string.indexOf(encodedPath);
        return Uri.parse(string.substring(0, encodedPath.length() + iIndexOf2) + ";" + str + "=" + str2 + ";" + string.substring(encodedPath.length() + iIndexOf2));
    }

    private Uri a(Uri uri, Context context, String str, boolean z) throws h {
        String strA;
        try {
            boolean zA = a(uri);
            if (zA) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new h("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new h("Query parameter already exists: ms");
            }
            if (z) {
                strA = this.f.a(context, str);
            } else {
                strA = this.f.a(context);
            }
            if (zA) {
                return b(uri, "dc_ms", strA);
            }
            return a(uri, "ms", strA);
        } catch (UnsupportedOperationException e2) {
            throw new h("Provided Uri is not in a valid state");
        }
    }
}
