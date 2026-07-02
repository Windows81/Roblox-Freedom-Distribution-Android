package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.bal;
import com.google.android.gms.internal.ads.baq;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.im;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.mq;
import com.google.android.gms.internal.ads.ms;
import com.google.android.gms.internal.ads.nd;
import com.google.android.gms.internal.ads.nj;
import com.google.android.gms.internal.ads.zzang;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3082b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3081a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3083c = 0;

    public final void a(Context context, zzang zzangVar, String str, Runnable runnable) {
        a(context, zzangVar, true, null, str, null, runnable);
    }

    final void a(Context context, zzang zzangVar, boolean z, im imVar, String str, String str2, Runnable runnable) {
        boolean z2;
        if (aw.l().b() - this.f3083c < 5000) {
            jd.e("Not retrying to fetch app settings");
            return;
        }
        this.f3083c = aw.l().b();
        if (imVar == null) {
            z2 = true;
        } else {
            z2 = (((aw.l().a() - imVar.a()) > ((Long) aoo.f().a(aro.ct)).longValue() ? 1 : ((aw.l().a() - imVar.a()) == ((Long) aoo.f().a(aro.ct)).longValue() ? 0 : -1)) > 0) || !imVar.b();
        }
        if (z2) {
            if (context == null) {
                jd.e("Context not provided to fetch application settings");
                return;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                jd.e("App settings could not be fetched. Required parameters missing");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.f3082b = applicationContext;
            bal balVarA = aw.s().a(this.f3082b, zzangVar).a("google.afma.config.fetchAppSettings", baq.f4718a, baq.f4718a);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                nd ndVarB = balVarA.b(jSONObject);
                nd ndVarA = ms.a(ndVarB, f.f3084a, nj.f5347b);
                if (runnable != null) {
                    ndVarB.a(runnable, nj.f5347b);
                }
                mq.a(ndVarA, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e) {
                jd.b("Error requesting application settings", e);
            }
        }
    }
}
