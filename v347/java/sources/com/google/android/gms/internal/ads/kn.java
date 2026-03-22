package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class kn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5214a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private String f5215b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private String f5216c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f5217d = false;
    private String e = "";

    private final String a(Context context) {
        String str;
        synchronized (this.f5214a) {
            if (TextUtils.isEmpty(this.f5215b)) {
                com.google.android.gms.ads.internal.aw.e();
                this.f5215b = jm.c(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.f5215b)) {
                    com.google.android.gms.ads.internal.aw.e();
                    this.f5215b = jm.a();
                    com.google.android.gms.ads.internal.aw.e();
                    jm.b(context, "debug_signals_id.txt", this.f5215b);
                }
            }
            str = this.f5215b;
        }
        return str;
    }

    private final void a(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            jm.f5184a.post(new ko(this, context, str, z, z2));
        } else {
            jd.d("Can not create dialog without Activity Context");
        }
    }

    private final boolean b(Context context, String str, String str2) {
        String strD = d(context, c(context, (String) aoo.f().a(aro.cT), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strD)) {
            jd.b("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strD.trim());
            String strOptString = jSONObject.optString("gct");
            this.e = jSONObject.optString("status");
            synchronized (this.f5214a) {
                this.f5216c = strOptString;
            }
            return true;
        } catch (JSONException e) {
            jd.c("Fail to get in app preview response json.", e);
            return false;
        }
    }

    private final Uri c(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        builderBuildUpon.appendQueryParameter("linkedDeviceId", a(context));
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }

    private final boolean c(Context context, String str, String str2) {
        String strD = d(context, c(context, (String) aoo.f().a(aro.cU), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strD)) {
            jd.b("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = "1".equals(new JSONObject(strD.trim()).optString("debug_mode"));
            synchronized (this.f5214a) {
                this.f5217d = zEquals;
            }
            return zEquals;
        } catch (JSONException e) {
            jd.c("Fail to get debug mode response json.", e);
            return false;
        }
    }

    private static String d(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("User-Agent", com.google.android.gms.ads.internal.aw.e().b(context, str2));
        nd<String> ndVarA = new kw(context).a(str, map);
        try {
            return ndVarA.get(((Integer) aoo.f().a(aro.cW)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String strValueOf = String.valueOf(str);
            jd.b(strValueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(strValueOf) : new String("Interrupted while retriving a response from: "), e);
            ndVarA.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String strValueOf2 = String.valueOf(str);
            jd.b(strValueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(strValueOf2) : new String("Timeout while retriving a response from: "), e2);
            ndVarA.cancel(true);
            return null;
        } catch (Exception e3) {
            String strValueOf3 = String.valueOf(str);
            jd.b(strValueOf3.length() != 0 ? "Error retriving a response from: ".concat(strValueOf3) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    private final void e(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.aw.e();
        jm.a(context, c(context, (String) aoo.f().a(aro.cS), str, str2));
    }

    public final String a() {
        String str;
        synchronized (this.f5214a) {
            str = this.f5216c;
        }
        return str;
    }

    public final void a(Context context, String str, String str2) {
        if (!b(context, str, str2)) {
            a(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(this.e)) {
            jd.b("Creative is not pushed for this device.");
            a(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.e)) {
            jd.b("The app is not linked for creative preview.");
            e(context, str, str2);
        } else if ("0".equals(this.e)) {
            jd.b("Device is linked for in app preview.");
            a(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final void a(Context context, String str, String str2, @Nullable String str3) {
        boolean zB = b();
        if (!c(context, str, str2)) {
            e(context, str, str2);
            return;
        }
        if (!zB && !TextUtils.isEmpty(str3)) {
            b(context, str2, str3, str);
        }
        jd.b("Device is linked for debug signals.");
        a(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final void b(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = c(context, (String) aoo.f().a(aro.cV), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.aw.e();
        jm.a(context, str, builderBuildUpon.build().toString());
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f5214a) {
            z = this.f5217d;
        }
        return z;
    }
}
