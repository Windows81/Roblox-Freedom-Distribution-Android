package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class a {
    private static boolean a(Context context, Intent intent, s sVar) {
        try {
            String strValueOf = String.valueOf(intent.toURI());
            jd.a(strValueOf.length() != 0 ? "Launching an intent: ".concat(strValueOf) : new String("Launching an intent: "));
            aw.e();
            jm.a(context, intent);
            if (sVar != null) {
                sVar.g();
            }
            return true;
        } catch (ActivityNotFoundException e) {
            jd.e(e.getMessage());
            return false;
        }
    }

    public static boolean a(Context context, zzc zzcVar, s sVar) {
        int i;
        if (zzcVar == null) {
            jd.e("No intent data for launcher overlay.");
            return false;
        }
        aro.a(context);
        if (zzcVar.f != null) {
            return a(context, zzcVar.f, sVar);
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(zzcVar.f3180a)) {
            jd.e("Open GMSG did not contain a URL.");
            return false;
        }
        if (TextUtils.isEmpty(zzcVar.f3181b)) {
            intent.setData(Uri.parse(zzcVar.f3180a));
        } else {
            intent.setDataAndType(Uri.parse(zzcVar.f3180a), zzcVar.f3181b);
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.f3182c)) {
            intent.setPackage(zzcVar.f3182c);
        }
        if (!TextUtils.isEmpty(zzcVar.f3183d)) {
            String[] strArrSplit = zzcVar.f3183d.split("/", 2);
            if (strArrSplit.length < 2) {
                String strValueOf = String.valueOf(zzcVar.f3183d);
                jd.e(strValueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(strValueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent.setClassName(strArrSplit[0], strArrSplit[1]);
        }
        String str = zzcVar.e;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                jd.e("Could not parse intent flags.");
                i = 0;
            }
            intent.addFlags(i);
        }
        if (((Boolean) aoo.f().a(aro.cN)).booleanValue()) {
            intent.addFlags(268435456);
            intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) aoo.f().a(aro.cM)).booleanValue()) {
                aw.e();
                jm.b(context, intent);
            }
        }
        return a(context, intent, sVar);
    }
}
