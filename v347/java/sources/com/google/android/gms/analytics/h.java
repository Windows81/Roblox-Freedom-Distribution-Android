package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.d;
import com.google.android.gms.internal.measurement.bh;
import com.google.android.gms.internal.measurement.bz;
import com.google.android.gms.internal.measurement.ca;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.google.android.gms.internal.measurement.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f3249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, String> f3250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bh f3251d;
    private final a e;
    private c f;
    private bz g;

    class a extends com.google.android.gms.internal.measurement.p implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3252a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3253b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f3254c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3255d;
        private long e;

        protected a(com.google.android.gms.internal.measurement.r rVar) {
            super(rVar);
            this.f3254c = -1L;
        }

        private final void c() {
            if (this.f3254c >= 0 || this.f3252a) {
                n().a(h.this.e);
            } else {
                n().b(h.this.e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.p
        protected final void a() {
        }

        public final void a(long j) {
            this.f3254c = j;
            c();
        }

        @Override // com.google.android.gms.analytics.d.a
        public final void a(Activity activity) {
            String canonicalName;
            String stringExtra;
            if (this.f3253b == 0) {
                if (i().b() >= this.e + Math.max(1000L, this.f3254c)) {
                    this.f3255d = true;
                }
            }
            this.f3253b++;
            if (this.f3252a) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    h.this.a(intent.getData());
                }
                HashMap map = new HashMap();
                map.put("&t", "screenview");
                h hVar = h.this;
                if (h.this.g != null) {
                    bz bzVar = h.this.g;
                    String canonicalName2 = activity.getClass().getCanonicalName();
                    canonicalName = bzVar.g.get(canonicalName2);
                    if (canonicalName == null) {
                        canonicalName = canonicalName2;
                    }
                } else {
                    canonicalName = activity.getClass().getCanonicalName();
                }
                hVar.a("&cd", canonicalName);
                if (TextUtils.isEmpty((CharSequence) map.get("&dr"))) {
                    com.google.android.gms.common.internal.w.a(activity);
                    Intent intent2 = activity.getIntent();
                    if (intent2 == null) {
                        stringExtra = null;
                    } else {
                        stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                        if (TextUtils.isEmpty(stringExtra)) {
                            stringExtra = null;
                        }
                    }
                    if (!TextUtils.isEmpty(stringExtra)) {
                        map.put("&dr", stringExtra);
                    }
                }
                h.this.a((Map<String, String>) map);
            }
        }

        public final void a(boolean z) {
            this.f3252a = z;
            c();
        }

        @Override // com.google.android.gms.analytics.d.a
        public final void b(Activity activity) {
            this.f3253b--;
            this.f3253b = Math.max(0, this.f3253b);
            if (this.f3253b == 0) {
                this.e = i().b();
            }
        }

        public final synchronized boolean b() {
            boolean z;
            z = this.f3255d;
            this.f3255d = false;
            return z;
        }
    }

    h(com.google.android.gms.internal.measurement.r rVar, String str, bh bhVar) {
        super(rVar);
        this.f3249b = new HashMap();
        this.f3250c = new HashMap();
        if (str != null) {
            this.f3249b.put("&tid", str);
        }
        this.f3249b.put("useSecure", "1");
        this.f3249b.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.f3251d = new bh("tracking", i());
        this.e = new a(rVar);
    }

    private static String a(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        if (key.startsWith("&") && key.length() >= 2) {
            return entry.getKey().substring(1);
        }
        return null;
    }

    private static void a(Map<String, String> map, Map<String, String> map2) {
        com.google.android.gms.common.internal.w.a(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String strA = a(entry);
            if (strA != null) {
                map2.put(strA, entry.getValue());
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        this.e.z();
        String strC = q().c();
        if (strC != null) {
            a("&an", strC);
        }
        String strB = q().b();
        if (strB != null) {
            a("&av", strB);
        }
    }

    public void a(long j) {
        this.e.a(1000 * j);
    }

    public void a(Uri uri) {
        if (uri == null || uri.isOpaque()) {
            return;
        }
        String queryParameter = uri.getQueryParameter("referrer");
        if (TextUtils.isEmpty(queryParameter)) {
            return;
        }
        String strValueOf = String.valueOf(queryParameter);
        Uri uri2 = Uri.parse(strValueOf.length() != 0 ? "http://hostname/?".concat(strValueOf) : new String("http://hostname/?"));
        String queryParameter2 = uri2.getQueryParameter("utm_id");
        if (queryParameter2 != null) {
            this.f3250c.put("&ci", queryParameter2);
        }
        String queryParameter3 = uri2.getQueryParameter("anid");
        if (queryParameter3 != null) {
            this.f3250c.put("&anid", queryParameter3);
        }
        String queryParameter4 = uri2.getQueryParameter("utm_campaign");
        if (queryParameter4 != null) {
            this.f3250c.put("&cn", queryParameter4);
        }
        String queryParameter5 = uri2.getQueryParameter("utm_content");
        if (queryParameter5 != null) {
            this.f3250c.put("&cc", queryParameter5);
        }
        String queryParameter6 = uri2.getQueryParameter("utm_medium");
        if (queryParameter6 != null) {
            this.f3250c.put("&cm", queryParameter6);
        }
        String queryParameter7 = uri2.getQueryParameter("utm_source");
        if (queryParameter7 != null) {
            this.f3250c.put("&cs", queryParameter7);
        }
        String queryParameter8 = uri2.getQueryParameter("utm_term");
        if (queryParameter8 != null) {
            this.f3250c.put("&ck", queryParameter8);
        }
        String queryParameter9 = uri2.getQueryParameter("dclid");
        if (queryParameter9 != null) {
            this.f3250c.put("&dclid", queryParameter9);
        }
        String queryParameter10 = uri2.getQueryParameter("gclid");
        if (queryParameter10 != null) {
            this.f3250c.put("&gclid", queryParameter10);
        }
        String queryParameter11 = uri2.getQueryParameter("aclid");
        if (queryParameter11 != null) {
            this.f3250c.put("&aclid", queryParameter11);
        }
    }

    final void a(bz bzVar) {
        b("Loading Tracker config values");
        this.g = bzVar;
        if (this.g.f5947a != null) {
            String str = this.g.f5947a;
            a("&tid", str);
            a("trackingId loaded", (Object) str);
        }
        if (this.g.f5948b >= 0.0d) {
            String string = Double.toString(this.g.f5948b);
            a("&sf", string);
            a("Sample frequency loaded", (Object) string);
        }
        if (this.g.f5949c >= 0) {
            int i = this.g.f5949c;
            a(i);
            a("Session timeout loaded", Integer.valueOf(i));
        }
        if (this.g.f5950d != -1) {
            boolean z = this.g.f5950d == 1;
            b(z);
            a("Auto activity tracking loaded", Boolean.valueOf(z));
        }
        if (this.g.e != -1) {
            boolean z2 = this.g.e == 1;
            if (z2) {
                a("&aip", "1");
            }
            a("Anonymize ip loaded", Boolean.valueOf(z2));
        }
        a(this.g.f == 1);
    }

    public void a(String str, String str2) {
        com.google.android.gms.common.internal.w.a(str, (Object) "Key should be non-null");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f3249b.put(str, str2);
    }

    public void a(Map<String, String> map) {
        long jA = i().a();
        if (n().e()) {
            c("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean zD = n().d();
        HashMap map2 = new HashMap();
        a(this.f3249b, map2);
        a(map, map2);
        boolean zA = ca.a(this.f3249b.get("useSecure"), true);
        Map<String, String> map3 = this.f3250c;
        com.google.android.gms.common.internal.w.a(map2);
        if (map3 != null) {
            for (Map.Entry<String, String> entry : map3.entrySet()) {
                String strA = a(entry);
                if (strA != null && !map2.containsKey(strA)) {
                    map2.put(strA, entry.getValue());
                }
            }
        }
        this.f3250c.clear();
        String str = map2.get("t");
        if (TextUtils.isEmpty(str)) {
            k().a(map2, "Missing hit type parameter");
            return;
        }
        String str2 = map2.get("tid");
        if (TextUtils.isEmpty(str2)) {
            k().a(map2, "Missing tracking id parameter");
            return;
        }
        boolean z = this.f3248a;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int i = Integer.parseInt(this.f3249b.get("&a")) + 1;
                if (i >= Integer.MAX_VALUE) {
                    i = 1;
                }
                this.f3249b.put("&a", Integer.toString(i));
            }
        }
        m().a(new x(this, map2, z, str, jA, zD, zA, str2));
    }

    public void a(boolean z) {
        synchronized (this) {
            if ((this.f != null) == z) {
                return;
            }
            if (z) {
                this.f = new c(this, Thread.getDefaultUncaughtExceptionHandler(), j());
                Thread.setDefaultUncaughtExceptionHandler(this.f);
                b("Uncaught exceptions will be reported to Google Analytics");
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.f.a());
                b("Uncaught exceptions will not be reported to Google Analytics");
            }
        }
    }

    public void b(boolean z) {
        this.e.a(z);
    }
}
