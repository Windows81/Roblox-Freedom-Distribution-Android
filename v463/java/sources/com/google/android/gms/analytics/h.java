package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.analytics.d;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.ac;
import com.google.android.gms.internal.measurement.ae;
import com.google.android.gms.internal.measurement.bu;
import com.google.android.gms.internal.measurement.cm;
import com.google.android.gms.internal.measurement.cn;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f3263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, String> f3264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bu f3265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f3266e;
    private c f;
    private cm g;

    class a extends ac implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3267a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3268b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f3269c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3270d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f3271e;

        protected a(ae aeVar) {
            super(aeVar);
            this.f3269c = -1L;
        }

        private final void c() {
            if (this.f3269c >= 0 || this.f3267a) {
                n().a(h.this.f3266e);
            } else {
                n().b(h.this.f3266e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.ac
        protected final void a() {
        }

        public final void a(long j) {
            this.f3269c = j;
            c();
        }

        @Override // com.google.android.gms.analytics.d.a
        public final void a(Activity activity) {
            String canonicalName;
            if (this.f3268b == 0) {
                if (i().b() >= this.f3271e + Math.max(1000L, this.f3269c)) {
                    this.f3270d = true;
                }
            }
            this.f3268b++;
            if (this.f3267a) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    h.this.a(intent.getData());
                }
                HashMap map = new HashMap();
                map.put("&t", "screenview");
                h hVar = h.this;
                if (hVar.g != null) {
                    cm cmVar = h.this.g;
                    canonicalName = activity.getClass().getCanonicalName();
                    String str = cmVar.g.get(canonicalName);
                    if (str != null) {
                        canonicalName = str;
                    }
                } else {
                    canonicalName = activity.getClass().getCanonicalName();
                }
                hVar.a("&cd", canonicalName);
                if (TextUtils.isEmpty((CharSequence) map.get("&dr"))) {
                    aa.a(activity);
                    Intent intent2 = activity.getIntent();
                    String str2 = null;
                    if (intent2 != null) {
                        String stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            str2 = stringExtra;
                        }
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        map.put("&dr", str2);
                    }
                }
                h.this.a((Map<String, String>) map);
            }
        }

        public final void a(boolean z) {
            this.f3267a = z;
            c();
        }

        @Override // com.google.android.gms.analytics.d.a
        public final void b(Activity activity) {
            int i = this.f3268b - 1;
            this.f3268b = i;
            int iMax = Math.max(0, i);
            this.f3268b = iMax;
            if (iMax == 0) {
                this.f3271e = i().b();
            }
        }

        public final synchronized boolean b() {
            boolean z;
            z = this.f3270d;
            this.f3270d = false;
            return z;
        }
    }

    h(ae aeVar, String str, bu buVar) {
        super(aeVar);
        this.f3263b = new HashMap();
        this.f3264c = new HashMap();
        if (str != null) {
            this.f3263b.put("&tid", str);
        }
        this.f3263b.put("useSecure", "1");
        this.f3263b.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.f3265d = new bu("tracking", i());
        this.f3266e = new a(aeVar);
    }

    private static String a(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        if (key.startsWith("&") && key.length() >= 2) {
            return entry.getKey().substring(1);
        }
        return null;
    }

    private static void a(Map<String, String> map, Map<String, String> map2) {
        aa.a(map2);
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

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        this.f3266e.z();
        String strC = q().c();
        if (strC != null) {
            a("&an", strC);
        }
        String strB = q().b();
        if (strB != null) {
            a("&av", strB);
        }
    }

    public void a(double d2) {
        a("&sf", Double.toString(d2));
    }

    public void a(long j) {
        this.f3266e.a(j * 1000);
    }

    public void a(Uri uri) {
        if (uri == null || uri.isOpaque()) {
            return;
        }
        String queryParameter = uri.getQueryParameter(Payload.RFR);
        if (TextUtils.isEmpty(queryParameter)) {
            return;
        }
        String strValueOf = String.valueOf(queryParameter);
        Uri uri2 = Uri.parse(strValueOf.length() != 0 ? "http://hostname/?".concat(strValueOf) : new String("http://hostname/?"));
        String queryParameter2 = uri2.getQueryParameter("utm_id");
        if (queryParameter2 != null) {
            this.f3264c.put("&ci", queryParameter2);
        }
        String queryParameter3 = uri2.getQueryParameter("anid");
        if (queryParameter3 != null) {
            this.f3264c.put("&anid", queryParameter3);
        }
        String queryParameter4 = uri2.getQueryParameter("utm_campaign");
        if (queryParameter4 != null) {
            this.f3264c.put("&cn", queryParameter4);
        }
        String queryParameter5 = uri2.getQueryParameter("utm_content");
        if (queryParameter5 != null) {
            this.f3264c.put("&cc", queryParameter5);
        }
        String queryParameter6 = uri2.getQueryParameter("utm_medium");
        if (queryParameter6 != null) {
            this.f3264c.put("&cm", queryParameter6);
        }
        String queryParameter7 = uri2.getQueryParameter("utm_source");
        if (queryParameter7 != null) {
            this.f3264c.put("&cs", queryParameter7);
        }
        String queryParameter8 = uri2.getQueryParameter("utm_term");
        if (queryParameter8 != null) {
            this.f3264c.put("&ck", queryParameter8);
        }
        String queryParameter9 = uri2.getQueryParameter("dclid");
        if (queryParameter9 != null) {
            this.f3264c.put("&dclid", queryParameter9);
        }
        String queryParameter10 = uri2.getQueryParameter("gclid");
        if (queryParameter10 != null) {
            this.f3264c.put("&gclid", queryParameter10);
        }
        String queryParameter11 = uri2.getQueryParameter("aclid");
        if (queryParameter11 != null) {
            this.f3264c.put("&aclid", queryParameter11);
        }
    }

    final void a(cm cmVar) {
        b("Loading Tracker config values");
        this.g = cmVar;
        if (cmVar.f4147a != null) {
            String str = this.g.f4147a;
            a("&tid", str);
            a("trackingId loaded", (Object) str);
        }
        if (this.g.f4148b >= 0.0d) {
            String string = Double.toString(this.g.f4148b);
            a("&sf", string);
            a("Sample frequency loaded", (Object) string);
        }
        if (this.g.f4149c >= 0) {
            int i = this.g.f4149c;
            a(i);
            a("Session timeout loaded", Integer.valueOf(i));
        }
        if (this.g.f4150d != -1) {
            boolean z = this.g.f4150d == 1;
            b(z);
            a("Auto activity tracking loaded", Boolean.valueOf(z));
        }
        if (this.g.f4151e != -1) {
            boolean z2 = this.g.f4151e == 1;
            if (z2) {
                a("&aip", "1");
            }
            a("Anonymize ip loaded", Boolean.valueOf(z2));
        }
        a(this.g.f == 1);
    }

    public void a(String str, String str2) {
        aa.a(str, (Object) "Key should be non-null");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f3263b.put(str, str2);
    }

    public void a(Map<String, String> map) {
        long jA = i().a();
        if (n().e()) {
            c("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean zD = n().d();
        HashMap map2 = new HashMap();
        a(this.f3263b, map2);
        a(map, map2);
        int i = 1;
        boolean zA = cn.a(this.f3263b.get("useSecure"), true);
        Map<String, String> map3 = this.f3264c;
        aa.a(map2);
        if (map3 != null) {
            for (Map.Entry<String, String> entry : map3.entrySet()) {
                String strA = a(entry);
                if (strA != null && !map2.containsKey(strA)) {
                    map2.put(strA, entry.getValue());
                }
            }
        }
        this.f3264c.clear();
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
        boolean z = this.f3262a;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int i2 = Integer.parseInt(this.f3263b.get("&a")) + 1;
                if (i2 < Integer.MAX_VALUE) {
                    i = i2;
                }
                this.f3263b.put("&a", Integer.toString(i));
            }
        }
        m().a(new x(this, map2, z, str, jA, zD, zA, str2));
    }

    public void a(boolean z) {
        String str;
        synchronized (this) {
            if ((this.f != null) == z) {
                return;
            }
            if (z) {
                c cVar = new c(this, Thread.getDefaultUncaughtExceptionHandler(), j());
                this.f = cVar;
                Thread.setDefaultUncaughtExceptionHandler(cVar);
                str = "Uncaught exceptions will be reported to Google Analytics";
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.f.a());
                str = "Uncaught exceptions will not be reported to Google Analytics";
            }
            b(str);
        }
    }

    public void b(boolean z) {
        this.f3266e.a(z);
    }
}
