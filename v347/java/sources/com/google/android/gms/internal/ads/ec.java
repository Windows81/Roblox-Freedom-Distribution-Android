package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.a.a;
import com.google.android.gms.ads.internal.gmsg.HttpClient;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ec extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f4952a = TimeUnit.SECONDS.toMillis(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f4953b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("sLock")
    private static boolean f4954c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static azk f4955d = null;
    private static HttpClient e = null;
    private static com.google.android.gms.ads.internal.gmsg.b f = null;
    private static com.google.android.gms.ads.internal.gmsg.ae<Object> g = null;
    private final co h;
    private final dl i;
    private final Object j;
    private final Context k;
    private azx l;
    private amn m;

    public ec(Context context, dl dlVar, co coVar, amn amnVar) {
        super(true);
        this.j = new Object();
        this.h = coVar;
        this.k = context;
        this.i = dlVar;
        this.m = amnVar;
        synchronized (f4953b) {
            if (!f4954c) {
                f = new com.google.android.gms.ads.internal.gmsg.b();
                e = new HttpClient(context.getApplicationContext(), dlVar.j);
                g = new ek();
                f4955d = new azk(this.k.getApplicationContext(), this.i.j, (String) aoo.f().a(aro.f4399a), new ej(), new ei());
                f4954c = true;
            }
        }
    }

    private final zzaej a(zzaef zzaefVar) {
        com.google.android.gms.ads.internal.aw.e();
        String strA = jm.a();
        JSONObject jSONObjectA = a(zzaefVar, strA);
        if (jSONObjectA == null) {
            return new zzaej(0);
        }
        long jB = com.google.android.gms.ads.internal.aw.l().b();
        Future<JSONObject> futureA = f.a(strA);
        ly.f5287a.post(new ee(this, jSONObjectA, strA));
        try {
            JSONObject jSONObject = futureA.get(f4952a - (com.google.android.gms.ads.internal.aw.l().b() - jB), TimeUnit.MILLISECONDS);
            if (jSONObject == null) {
                return new zzaej(-1);
            }
            zzaej zzaejVarA = et.a(this.k, zzaefVar, jSONObject.toString());
            return (zzaejVarA.f5765d == -3 || !TextUtils.isEmpty(zzaejVarA.f5763b)) ? zzaejVarA : new zzaej(3);
        } catch (InterruptedException e2) {
            return new zzaej(-1);
        } catch (CancellationException e3) {
            return new zzaej(-1);
        } catch (ExecutionException e4) {
            return new zzaej(0);
        } catch (TimeoutException e5) {
            return new zzaej(2);
        }
    }

    private final JSONObject a(zzaef zzaefVar, String str) {
        fc fcVar;
        a.C0063a c0063aA;
        Bundle bundle = zzaefVar.f5760c.f5801c.getBundle("sdk_less_server_data");
        if (bundle == null) {
            return null;
        }
        try {
            fcVar = com.google.android.gms.ads.internal.aw.p().a(this.k).get();
        } catch (Exception e2) {
            jd.c("Error grabbing device info: ", e2);
            fcVar = null;
        }
        Context context = this.k;
        em emVar = new em();
        emVar.j = zzaefVar;
        emVar.k = fcVar;
        JSONObject jSONObjectA = et.a(context, emVar);
        if (jSONObjectA == null) {
            return null;
        }
        try {
            c0063aA = com.google.android.gms.ads.a.a.a(this.k);
        } catch (com.google.android.gms.common.h | com.google.android.gms.common.i | IOException | IllegalStateException e3) {
            jd.c("Cannot get advertising id info", e3);
            c0063aA = null;
        }
        HashMap map = new HashMap();
        map.put("request_id", str);
        map.put("request_param", jSONObjectA);
        map.put("data", bundle);
        if (c0063aA != null) {
            map.put("adid", c0063aA.a());
            map.put("lat", Integer.valueOf(c0063aA.b() ? 1 : 0));
        }
        try {
            return com.google.android.gms.ads.internal.aw.e().a(map);
        } catch (JSONException e4) {
            return null;
        }
    }

    protected static void a(ayy ayyVar) {
        ayyVar.a("/loadAd", f);
        ayyVar.a("/fetchHttpRequest", e);
        ayyVar.a("/invalidRequest", g);
    }

    protected static void b(ayy ayyVar) {
        ayyVar.b("/loadAd", f);
        ayyVar.b("/fetchHttpRequest", e);
        ayyVar.b("/invalidRequest", g);
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        jd.b("SdkLessAdLoaderBackgroundTask started.");
        String strJ = com.google.android.gms.ads.internal.aw.B().j(this.k);
        zzaef zzaefVar = new zzaef(this.i, -1L, com.google.android.gms.ads.internal.aw.B().h(this.k), com.google.android.gms.ads.internal.aw.B().i(this.k), strJ);
        com.google.android.gms.ads.internal.aw.B().f(this.k, strJ);
        zzaej zzaejVarA = a(zzaefVar);
        ly.f5287a.post(new ed(this, new ij(zzaefVar, zzaejVarA, null, null, zzaejVarA.f5765d, com.google.android.gms.ads.internal.aw.l().b(), zzaejVarA.m, null, this.m)));
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
        synchronized (this.j) {
            ly.f5287a.post(new eh(this));
        }
    }
}
