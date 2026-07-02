package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.d;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bbi implements bbm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bbu f4757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f4758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bbe f4759d;
    private final bbd e;
    private zzjj f;
    private final zzjn g;
    private final Context h;
    private final zzang j;
    private final boolean k;
    private final zzpl l;
    private final List<String> m;
    private final List<String> n;
    private final List<String> o;
    private final boolean p;
    private final boolean q;

    @GuardedBy("mLock")
    private bbx r;
    private bcd t;
    private final Object i = new Object();

    @GuardedBy("mLock")
    private int s = -2;

    public bbi(Context context, String str, bbu bbuVar, bbe bbeVar, bbd bbdVar, zzjj zzjjVar, zzjn zzjnVar, zzang zzangVar, boolean z, boolean z2, zzpl zzplVar, List<String> list, List<String> list2, List<String> list3, boolean z3) {
        this.h = context;
        this.f4757b = bbuVar;
        this.e = bbdVar;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.f4756a = b();
        } else {
            this.f4756a = str;
        }
        this.f4759d = bbeVar;
        if (bbdVar.t != -1) {
            this.f4758c = bbdVar.t;
        } else if (bbeVar.f4746b != -1) {
            this.f4758c = bbeVar.f4746b;
        } else {
            this.f4758c = 10000L;
        }
        this.f = zzjjVar;
        this.g = zzjnVar;
        this.j = zzangVar;
        this.k = z;
        this.p = z2;
        this.l = zzplVar;
        this.m = list;
        this.n = list2;
        this.o = list3;
        this.q = z3;
    }

    private static bbx a(com.google.android.gms.ads.mediation.b bVar) {
        return new bcs(bVar);
    }

    @GuardedBy("mLock")
    private final String a(String str) {
        if (str == null || !e() || b(2)) {
            return str;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.remove("cpm_floor_cents");
            return jSONObject.toString();
        } catch (JSONException e) {
            jd.e("Could not remove field. Returning the original value");
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void a(bbh bbhVar) {
        String strA = a(this.e.k);
        try {
            if (this.j.f5786c < 4100000) {
                if (this.g.f5806d) {
                    this.r.a(com.google.android.gms.b.b.a(this.h), this.f, strA, bbhVar);
                    return;
                } else {
                    this.r.a(com.google.android.gms.b.b.a(this.h), this.g, this.f, strA, bbhVar);
                    return;
                }
            }
            if (!this.k && !this.e.b()) {
                if (this.g.f5806d) {
                    this.r.a(com.google.android.gms.b.b.a(this.h), this.f, strA, this.e.f4741a, bbhVar);
                    return;
                }
                if (!this.p) {
                    this.r.a(com.google.android.gms.b.b.a(this.h), this.g, this.f, strA, this.e.f4741a, bbhVar);
                    return;
                } else if (this.e.o != null) {
                    this.r.a(com.google.android.gms.b.b.a(this.h), this.f, strA, this.e.f4741a, bbhVar, new zzpl(b(this.e.s)), this.e.r);
                    return;
                } else {
                    this.r.a(com.google.android.gms.b.b.a(this.h), this.g, this.f, strA, this.e.f4741a, bbhVar);
                    return;
                }
            }
            ArrayList arrayList = new ArrayList(this.m);
            if (this.n != null) {
                for (String str : this.n) {
                    String str2 = ":false";
                    if (this.o != null && this.o.contains(str)) {
                        str2 = ":true";
                    }
                    arrayList.add(new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(str2).length()).append("custom:").append(str).append(str2).toString());
                }
            }
            this.r.a(com.google.android.gms.b.b.a(this.h), this.f, strA, this.e.f4741a, bbhVar, this.l, arrayList);
        } catch (RemoteException e) {
            jd.c("Could not request ad from mediation adapter.", e);
            a(5);
        }
    }

    private static com.google.android.gms.ads.formats.d b(String str) {
        int i = 0;
        d.a aVar = new d.a();
        if (str == null) {
            return aVar.a();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar.b(jSONObject.optBoolean("multiple_images", false));
            aVar.a(jSONObject.optBoolean("only_urls", false));
            String strOptString = jSONObject.optString("native_image_orientation", "any");
            if ("landscape".equals(strOptString)) {
                i = 2;
            } else if ("portrait".equals(strOptString)) {
                i = 1;
            } else if (!"any".equals(strOptString)) {
                i = -1;
            }
            aVar.a(i);
        } catch (JSONException e) {
            jd.c("Exception occurred when creating native ad options", e);
        }
        return aVar.a();
    }

    private final String b() {
        try {
            if (!TextUtils.isEmpty(this.e.e)) {
                return this.f4757b.b(this.e.e) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            jd.e("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean b(int i) {
        try {
            Bundle bundleL = this.k ? this.r.l() : this.g.f5806d ? this.r.k() : this.r.j();
            return bundleL != null && (bundleL.getInt("capabilities", 0) & i) == i;
        } catch (RemoteException e) {
            jd.e("Could not get adapter info. Returning false");
            return false;
        }
    }

    @GuardedBy("mLock")
    private final bcd c() {
        if (this.s != 0 || !e()) {
            return null;
        }
        try {
            if (b(4) && this.t != null && this.t.a() != 0) {
                return this.t;
            }
        } catch (RemoteException e) {
            jd.e("Could not get cpm value from MediationResponseMetadata");
        }
        return new bbk(f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final bbx d() {
        String strValueOf = String.valueOf(this.f4756a);
        jd.d(strValueOf.length() != 0 ? "Instantiating mediation adapter: ".concat(strValueOf) : new String("Instantiating mediation adapter: "));
        if (!this.k && !this.e.b()) {
            if (((Boolean) aoo.f().a(aro.bw)).booleanValue() && "com.google.ads.mediation.admob.AdMobAdapter".equals(this.f4756a)) {
                return a(new AdMobAdapter());
            }
            if (((Boolean) aoo.f().a(aro.bx)).booleanValue() && "com.google.ads.mediation.AdUrlAdapter".equals(this.f4756a)) {
                return a(new AdUrlAdapter());
            }
            if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(this.f4756a)) {
                return new bcs(new zzzv());
            }
        }
        try {
            return this.f4757b.a(this.f4756a);
        } catch (RemoteException e) {
            String strValueOf2 = String.valueOf(this.f4756a);
            jd.a(strValueOf2.length() != 0 ? "Could not instantiate mediation adapter: ".concat(strValueOf2) : new String("Could not instantiate mediation adapter: "), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e() {
        return this.f4759d.m != -1;
    }

    @GuardedBy("mLock")
    private final int f() {
        if (this.e.k == null) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.e.k);
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.f4756a)) {
                return jSONObject.optInt("cpm_cents", 0);
            }
            int iOptInt = b(2) ? jSONObject.optInt("cpm_floor_cents", 0) : 0;
            return iOptInt == 0 ? jSONObject.optInt("penalized_average_cpm_cents", 0) : iOptInt;
        } catch (JSONException e) {
            jd.e("Could not convert to json. Returning 0");
            return 0;
        }
    }

    public final bbl a(long j, long j2) {
        bbl bblVar;
        synchronized (this.i) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            bbh bbhVar = new bbh();
            jm.f5184a.post(new bbj(this, bbhVar));
            long j3 = this.f4758c;
            while (this.s == -2) {
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                long j4 = j3 - (jElapsedRealtime2 - jElapsedRealtime);
                long j5 = j2 - (jElapsedRealtime2 - j);
                if (j4 <= 0 || j5 <= 0) {
                    jd.d("Timed out waiting for adapter.");
                    this.s = 3;
                } else {
                    try {
                        this.i.wait(Math.min(j4, j5));
                    } catch (InterruptedException e) {
                        this.s = 5;
                    }
                }
            }
            bblVar = new bbl(this.e, this.r, this.f4756a, bbhVar, this.s, c(), com.google.android.gms.ads.internal.aw.l().b() - jElapsedRealtime);
        }
        return bblVar;
    }

    public final void a() {
        synchronized (this.i) {
            try {
            } catch (RemoteException e) {
                jd.c("Could not destroy mediation adapter.", e);
            }
            if (this.r != null) {
                this.r.c();
                this.s = -1;
                this.i.notify();
            } else {
                this.s = -1;
                this.i.notify();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bbm
    public final void a(int i) {
        synchronized (this.i) {
            this.s = i;
            this.i.notify();
        }
    }

    @Override // com.google.android.gms.internal.ads.bbm
    public final void a(int i, bcd bcdVar) {
        synchronized (this.i) {
            this.s = 0;
            this.t = bcdVar;
            this.i.notify();
        }
    }
}
