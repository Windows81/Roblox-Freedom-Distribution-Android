package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ic {
    public static Uri a(Uri uri, Context context) {
        if (!com.google.android.gms.ads.internal.aw.B().f(context) || !TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            return uri;
        }
        String strJ = com.google.android.gms.ads.internal.aw.B().j(context);
        Uri uriA = a(uri.toString(), "fbs_aeid", strJ);
        com.google.android.gms.ads.internal.aw.B().d(context, strJ);
        return uriA;
    }

    private static Uri a(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        return iIndexOf != -1 ? Uri.parse(str.substring(0, iIndexOf + 1) + str2 + "=" + str3 + "&" + str.substring(iIndexOf + 1)) : Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    public static String a(String str, Context context) {
        String strJ;
        if (!com.google.android.gms.ads.internal.aw.B().a(context) || TextUtils.isEmpty(str) || (strJ = com.google.android.gms.ads.internal.aw.B().j(context)) == null) {
            return str;
        }
        if (!((Boolean) aoo.f().a(aro.at)).booleanValue()) {
            if (str.contains("fbs_aeid")) {
                return str;
            }
            if (com.google.android.gms.ads.internal.aw.e().d(str)) {
                com.google.android.gms.ads.internal.aw.B().d(context, strJ);
                return a(str, "fbs_aeid", strJ).toString();
            }
            if (!com.google.android.gms.ads.internal.aw.e().e(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.aw.B().e(context, strJ);
            return a(str, "fbs_aeid", strJ).toString();
        }
        CharSequence charSequence = (String) aoo.f().a(aro.au);
        if (!str.contains(charSequence)) {
            return str;
        }
        if (com.google.android.gms.ads.internal.aw.e().d(str)) {
            com.google.android.gms.ads.internal.aw.B().d(context, strJ);
            return str.replace(charSequence, strJ);
        }
        if (!com.google.android.gms.ads.internal.aw.e().e(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.aw.B().e(context, strJ);
        return str.replace(charSequence, strJ);
    }

    public static String b(String str, Context context) {
        String strJ;
        if (!com.google.android.gms.ads.internal.aw.B().a(context) || TextUtils.isEmpty(str) || (strJ = com.google.android.gms.ads.internal.aw.B().j(context)) == null || !com.google.android.gms.ads.internal.aw.e().e(str)) {
            return str;
        }
        if (!((Boolean) aoo.f().a(aro.at)).booleanValue()) {
            return !str.contains("fbs_aeid") ? a(str, "fbs_aeid", strJ).toString() : str;
        }
        CharSequence charSequence = (String) aoo.f().a(aro.au);
        return str.contains(charSequence) ? str.replace(charSequence, strJ) : str;
    }
}
