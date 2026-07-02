package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.a.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class eo extends dr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f4972a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sLock")
    private static eo f4973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f4974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final en f4975d;
    private final ScheduledExecutorService e = Executors.newSingleThreadScheduledExecutor();

    private eo(Context context, en enVar) {
        this.f4974c = context;
        this.f4975d = enVar;
    }

    public static eo a(Context context, en enVar) {
        eo eoVar;
        synchronized (f4972a) {
            if (f4973b == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                aro.a(context);
                f4973b = new eo(context, enVar);
                if (context.getApplicationContext() != null) {
                    com.google.android.gms.ads.internal.aw.e().c(context);
                }
                ja.a(context);
            }
            eoVar = f4973b;
        }
        return eoVar;
    }

    private static zzaej a(Context context, en enVar, zzaef zzaefVar, ScheduledExecutorService scheduledExecutorService) {
        String string;
        jd.b("Starting ad request from service using: google.afma.request.getAdDictionary");
        asb asbVar = new asb(((Boolean) aoo.f().a(aro.N)).booleanValue(), "load_ad", zzaefVar.f5761d.f5803a);
        if (zzaefVar.f5758a > 10 && zzaefVar.A != -1) {
            asbVar.a(asbVar.a(zzaefVar.A), "cts");
        }
        arz arzVarA = asbVar.a();
        nd ndVarA = ms.a(enVar.i.a(context), ((Long) aoo.f().a(aro.cA)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        nd ndVarA2 = ms.a(enVar.h.a(context), ((Long) aoo.f().a(aro.bv)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        nd<String> ndVarA3 = enVar.f4970c.a(zzaefVar.g.packageName);
        nd<String> ndVarB = enVar.f4970c.b(zzaefVar.g.packageName);
        nd<String> ndVarA4 = enVar.j.a(zzaefVar.h, zzaefVar.g);
        Future<fc> futureA = com.google.android.gms.ads.internal.aw.p().a(context);
        nd<Location> ndVarA5 = ms.a((Object) null);
        Bundle bundle = zzaefVar.f5760c.f5801c;
        boolean z = (bundle == null || bundle.getString("_ad") == null) ? false : true;
        if (zzaefVar.G && !z) {
            ndVarA5 = enVar.f.a(zzaefVar.f);
        }
        nd ndVarA6 = ms.a(ndVarA5, ((Long) aoo.f().a(aro.cr)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        nd ndVarA7 = ((Boolean) aoo.f().a(aro.aJ)).booleanValue() ? ms.a(enVar.j.a(context), ((Long) aoo.f().a(aro.aK)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService) : ms.a((Object) null);
        Bundle bundle2 = (zzaefVar.f5758a < 4 || zzaefVar.o == null) ? null : zzaefVar.o;
        ((Boolean) aoo.f().a(aro.ad)).booleanValue();
        com.google.android.gms.ads.internal.aw.e();
        if (jm.a(context, "android.permission.ACCESS_NETWORK_STATE") && ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() == null) {
            jd.b("Device is offline.");
        }
        String string2 = zzaefVar.f5758a >= 7 ? zzaefVar.v : UUID.randomUUID().toString();
        new eu(context, string2, zzaefVar.f.packageName);
        if (zzaefVar.f5760c.f5801c != null && (string = zzaefVar.f5760c.f5801c.getString("_ad")) != null) {
            return et.a(context, zzaefVar, string);
        }
        List<String> listA = enVar.f4971d.a(zzaefVar.w);
        Bundle bundle3 = (Bundle) ms.a(ndVarA, (Object) null, ((Long) aoo.f().a(aro.cA)).longValue(), TimeUnit.MILLISECONDS);
        fm fmVar = (fm) ms.a(ndVarA2, (Object) null);
        Location location = (Location) ms.a(ndVarA6, (Object) null);
        a.C0063a c0063a = (a.C0063a) ms.a(ndVarA7, (Object) null);
        String str = (String) ms.a(ndVarA4, (Object) null);
        String str2 = (String) ms.a(ndVarA3, (Object) null);
        String str3 = (String) ms.a(ndVarB, (Object) null);
        fc fcVar = (fc) ms.a(futureA, (Object) null);
        if (fcVar == null) {
            jd.e("Error fetching device info. This is not recoverable.");
            return new zzaej(0);
        }
        em emVar = new em();
        emVar.j = zzaefVar;
        emVar.k = fcVar;
        emVar.e = fmVar;
        emVar.f4967d = location;
        emVar.f4965b = bundle3;
        emVar.h = str;
        emVar.i = c0063a;
        if (listA == null) {
            emVar.f4966c.clear();
        }
        emVar.f4966c = listA;
        emVar.f4964a = bundle2;
        emVar.f = str2;
        emVar.g = str3;
        emVar.l = enVar.f4969b.a(context);
        emVar.m = enVar.k;
        JSONObject jSONObjectA = et.a(context, emVar);
        if (jSONObjectA == null) {
            return new zzaej(0);
        }
        if (zzaefVar.f5758a < 7) {
            try {
                jSONObjectA.put("request_id", string2);
            } catch (JSONException e) {
            }
        }
        asbVar.a(arzVarA, "arc");
        asbVar.a();
        nd ndVarA8 = ms.a(ms.a(enVar.l.a().b(jSONObjectA), ep.f4976a, scheduledExecutorService), 10L, TimeUnit.SECONDS, scheduledExecutorService);
        nd<Void> ndVarA9 = enVar.e.a();
        if (ndVarA9 != null) {
            mq.a(ndVarA9, "AdRequestServiceImpl.loadAd.flags");
        }
        fa faVar = (fa) ms.a(ndVarA8, (Object) null);
        if (faVar == null) {
            return new zzaej(0);
        }
        if (faVar.a() != -2) {
            return new zzaej(faVar.a());
        }
        asbVar.d();
        zzaej zzaejVarA = TextUtils.isEmpty(faVar.i()) ? null : et.a(context, zzaefVar, faVar.i());
        if (zzaejVarA == null && !TextUtils.isEmpty(faVar.e())) {
            zzaejVarA = a(zzaefVar, context, zzaefVar.k.f5784a, faVar.e(), str2, str3, faVar, asbVar, enVar);
        }
        if (zzaejVarA == null) {
            zzaejVarA = new zzaej(0);
        }
        asbVar.a(arzVarA, "tts");
        zzaejVarA.w = asbVar.b();
        return zzaejVarA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01be, code lost:
    
        com.google.android.gms.internal.ads.jd.e(new java.lang.StringBuilder(46).append("Received error HTTP response code: ").append(r3).toString());
        r3 = new com.google.android.gms.internal.ads.zzaej(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01da, code lost:
    
        r2.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01dd, code lost:
    
        if (r22 == null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01df, code lost:
    
        r22.g.b();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzaej a(com.google.android.gms.internal.ads.zzaef r14, android.content.Context r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, com.google.android.gms.internal.ads.fa r20, com.google.android.gms.internal.ads.asb r21, com.google.android.gms.internal.ads.en r22) {
        /*
            Method dump skipped, instruction units count: 527
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eo.a(com.google.android.gms.internal.ads.zzaef, android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.fa, com.google.android.gms.internal.ads.asb, com.google.android.gms.internal.ads.en):com.google.android.gms.internal.ads.zzaej");
    }

    private static void a(String str, Map<String, List<String>> map, String str2, int i) {
        if (jd.a(2)) {
            jd.a(new StringBuilder(String.valueOf(str).length() + 39).append("Http Response: {\n  URL:\n    ").append(str).append("\n  Headers:").toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    jd.a(new StringBuilder(String.valueOf(str3).length() + 5).append("    ").append(str3).append(":").toString());
                    Iterator<String> it = map.get(str3).iterator();
                    while (it.hasNext()) {
                        String strValueOf = String.valueOf(it.next());
                        jd.a(strValueOf.length() != 0 ? "      ".concat(strValueOf) : new String("      "));
                    }
                }
            }
            jd.a("  Body:");
            if (str2 != null) {
                for (int i2 = 0; i2 < Math.min(str2.length(), 100000); i2 += 1000) {
                    jd.a(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                }
            } else {
                jd.a("    null");
            }
            jd.a(new StringBuilder(34).append("  Response Code:\n    ").append(i).append("\n}").toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final zzaej a(zzaef zzaefVar) {
        return a(this.f4974c, this.f4975d, zzaefVar, this.e);
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(zzaef zzaefVar, dt dtVar) {
        com.google.android.gms.ads.internal.aw.i().a(this.f4974c, zzaefVar.k);
        nd<?> ndVarA = jk.a(new eq(this, zzaefVar, dtVar));
        com.google.android.gms.ads.internal.aw.t().a();
        com.google.android.gms.ads.internal.aw.t().b().postDelayed(new er(this, ndVarA), 60000L);
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void a(zzaey zzaeyVar, dw dwVar) {
        jd.a("Nonagon code path entered in octagon");
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.dq
    public final void b(zzaey zzaeyVar, dw dwVar) {
        jd.a("Nonagon code path entered in octagon");
        throw new IllegalArgumentException();
    }
}
