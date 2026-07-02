package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class hj implements ht {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List<Future<Void>> f5081a = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ScheduledExecutorService f5082b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private final aff f5083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private final LinkedHashMap<String, afn> f5084d;
    private final Context g;
    private final hv h;
    private boolean i;
    private final zzaiq j;
    private final hw k;

    @GuardedBy("mLock")
    private final List<String> e = new ArrayList();

    @GuardedBy("mLock")
    private final List<String> f = new ArrayList();
    private final Object l = new Object();
    private HashSet<String> m = new HashSet<>();
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;

    public hj(Context context, zzang zzangVar, zzaiq zzaiqVar, String str, hv hvVar) {
        com.google.android.gms.common.internal.w.a(zzaiqVar, "SafeBrowsing config is not present.");
        this.g = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f5084d = new LinkedHashMap<>();
        this.h = hvVar;
        this.j = zzaiqVar;
        Iterator<String> it = this.j.e.iterator();
        while (it.hasNext()) {
            this.m.add(it.next().toLowerCase(Locale.ENGLISH));
        }
        this.m.remove("cookie".toLowerCase(Locale.ENGLISH));
        aff affVar = new aff();
        affVar.f3900a = 8;
        affVar.f3901b = str;
        affVar.f3902c = str;
        affVar.f3903d = new afg();
        affVar.f3903d.f3904a = this.j.f5780a;
        afo afoVar = new afo();
        afoVar.f3929a = zzangVar.f5784a;
        afoVar.f3931c = Boolean.valueOf(com.google.android.gms.common.c.c.b(this.g).a());
        long jB = com.google.android.gms.common.f.b().b(this.g);
        if (jB > 0) {
            afoVar.f3930b = Long.valueOf(jB);
        }
        affVar.h = afoVar;
        this.f5083c = affVar;
        this.k = new hw(this.g, this.j.h, this);
    }

    static final /* synthetic */ Void d(String str) {
        return null;
    }

    private final afn e(String str) {
        afn afnVar;
        synchronized (this.l) {
            afnVar = this.f5084d.get(str);
        }
        return afnVar;
    }

    private final nd<Void> f() {
        nd<Void> ndVarA;
        boolean z = true;
        if ((!this.i || !this.j.g) && ((!this.p || !this.j.f) && (this.i || !this.j.f5783d))) {
            z = false;
        }
        if (!z) {
            return ms.a((Object) null);
        }
        synchronized (this.l) {
            this.f5083c.e = new afn[this.f5084d.size()];
            this.f5084d.values().toArray(this.f5083c.e);
            this.f5083c.i = (String[]) this.e.toArray(new String[0]);
            this.f5083c.j = (String[]) this.f.toArray(new String[0]);
            if (hs.a()) {
                String str = this.f5083c.f3901b;
                String str2 = this.f5083c.f;
                StringBuilder sb = new StringBuilder(new StringBuilder(String.valueOf(str).length() + 53 + String.valueOf(str2).length()).append("Sending SB report\n  url: ").append(str).append("\n  clickUrl: ").append(str2).append("\n  resources: \n").toString());
                for (afn afnVar : this.f5083c.e) {
                    sb.append("    [");
                    sb.append(afnVar.e.length);
                    sb.append("] ");
                    sb.append(afnVar.f3926b);
                }
                hs.a(sb.toString());
            }
            nd<String> ndVarA2 = new kw(this.g).a(1, this.j.f5781b, null, afb.a(this.f5083c));
            if (hs.a()) {
                ndVarA2.a(new ho(this), jk.f5180a);
            }
            ndVarA = ms.a(ndVarA2, hl.f5086a, nj.f5347b);
        }
        return ndVarA;
    }

    final /* synthetic */ nd a(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        synchronized (this.l) {
                            int length = jSONArrayOptJSONArray.length();
                            afn afnVarE = e(str);
                            if (afnVarE == null) {
                                String strValueOf = String.valueOf(str);
                                hs.a(strValueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(strValueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                afnVarE.e = new String[length];
                                for (int i = 0; i < length; i++) {
                                    afnVarE.e[i] = jSONArrayOptJSONArray.getJSONObject(i).getString("threat_type");
                                }
                                this.i = (length > 0) | this.i;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) aoo.f().a(aro.cB)).booleanValue()) {
                    jd.a("Failed to get SafeBrowsing metadata", e);
                }
                return ms.a((Throwable) new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.i) {
            synchronized (this.l) {
                this.f5083c.f3900a = 9;
            }
        }
        return f();
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final zzaiq a() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final void a(View view) {
        if (this.j.f5782c && !this.o) {
            com.google.android.gms.ads.internal.aw.e();
            Bitmap bitmapB = jm.b(view);
            if (bitmapB == null) {
                hs.a("Failed to capture the webview bitmap.");
            } else {
                this.o = true;
                jm.a(new hm(this, bitmapB));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final void a(String str) {
        synchronized (this.l) {
            this.f5083c.f = str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023 A[Catch: all -> 0x00ac, TryCatch #1 {, blocks: (B:6:0x0007, B:7:0x0009, B:10:0x0013, B:11:0x0021, B:13:0x0023, B:16:0x004d, B:17:0x005a, B:19:0x0060, B:20:0x0066, B:22:0x006c, B:23:0x0072, B:25:0x0078, B:26:0x007e, B:28:0x008c, B:31:0x00a6, B:38:0x00b5, B:39:0x00c2, B:40:0x00c7), top: B:44:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    @Override // com.google.android.gms.internal.ads.ht
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10, int r11) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hj.a(java.lang.String, java.util.Map, int):void");
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final String[] a(String[] strArr) {
        return (String[]) this.k.a(strArr).toArray(new String[0]);
    }

    final void b(String str) {
        synchronized (this.l) {
            this.e.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final boolean b() {
        return com.google.android.gms.common.util.n.g() && this.j.f5782c && !this.o;
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final void c() {
        this.n = true;
    }

    final void c(String str) {
        synchronized (this.l) {
            this.f.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.ht
    public final void d() {
        synchronized (this.l) {
            nd ndVarA = ms.a(this.h.a(this.g, this.f5084d.keySet()), new mn(this) { // from class: com.google.android.gms.internal.ads.hk

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final hj f5085a;

                {
                    this.f5085a = this;
                }

                @Override // com.google.android.gms.internal.ads.mn
                public final nd a(Object obj) {
                    return this.f5085a.a((Map) obj);
                }
            }, nj.f5347b);
            nd ndVarA2 = ms.a(ndVarA, 10L, TimeUnit.SECONDS, f5082b);
            ms.a(ndVarA, new hn(this, ndVarA2), nj.f5347b);
            f5081a.add(ndVarA2);
        }
    }
}
