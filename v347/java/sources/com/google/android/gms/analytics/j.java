package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.be;
import com.google.android.gms.internal.measurement.ca;
import com.google.android.gms.internal.measurement.cd;
import com.google.android.gms.internal.measurement.ce;
import com.google.android.gms.internal.measurement.cf;
import com.google.android.gms.internal.measurement.cg;
import com.google.android.gms.internal.measurement.ch;
import com.google.android.gms.internal.measurement.ci;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j extends com.google.android.gms.internal.measurement.o implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DecimalFormat f3258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.r f3259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Uri f3261d;

    public j(com.google.android.gms.internal.measurement.r rVar, String str) {
        this(rVar, str, true, false);
    }

    private j(com.google.android.gms.internal.measurement.r rVar, String str, boolean z, boolean z2) {
        super(rVar);
        com.google.android.gms.common.internal.w.a(str);
        this.f3259b = rVar;
        this.f3260c = str;
        this.f3261d = a(this.f3260c);
    }

    static Uri a(String str) {
        com.google.android.gms.common.internal.w.a(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    private static String a(double d2) {
        if (f3258a == null) {
            f3258a = new DecimalFormat("0.######");
        }
        return f3258a.format(d2);
    }

    private static void a(Map<String, String> map, String str, double d2) {
        if (d2 != 0.0d) {
            map.put(str, a(d2));
        }
    }

    private static void a(Map<String, String> map, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        map.put(str, new StringBuilder(23).append(i).append("x").append(i2).toString());
    }

    private static void a(Map<String, String> map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    private static void a(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    private static Map<String, String> b(o oVar) {
        String strValueOf;
        HashMap map = new HashMap();
        ch chVar = (ch) oVar.a(ch.class);
        if (chVar != null) {
            for (Map.Entry<String, Object> entry : chVar.a().entrySet()) {
                Object value = entry.getValue();
                if (value == null) {
                    strValueOf = null;
                } else if (value instanceof String) {
                    strValueOf = (String) value;
                    if (TextUtils.isEmpty(strValueOf)) {
                        strValueOf = null;
                    }
                } else if (value instanceof Double) {
                    Double d2 = (Double) value;
                    strValueOf = d2.doubleValue() != 0.0d ? a(d2.doubleValue()) : null;
                } else {
                    strValueOf = value instanceof Boolean ? value != Boolean.FALSE ? "1" : null : String.valueOf(value);
                }
                if (strValueOf != null) {
                    map.put(entry.getKey(), strValueOf);
                }
            }
        }
        com.google.android.gms.internal.measurement.d dVar = (com.google.android.gms.internal.measurement.d) oVar.a(com.google.android.gms.internal.measurement.d.class);
        if (dVar != null) {
            a(map, "t", dVar.a());
            a(map, "cid", dVar.b());
            a(map, "uid", dVar.c());
            a(map, "sc", dVar.f());
            a(map, "sf", dVar.h());
            a(map, "ni", dVar.g());
            a(map, "adid", dVar.d());
            a(map, "ate", dVar.e());
        }
        com.google.android.gms.internal.measurement.e eVar = (com.google.android.gms.internal.measurement.e) oVar.a(com.google.android.gms.internal.measurement.e.class);
        if (eVar != null) {
            a(map, "cd", eVar.a());
            a(map, "a", eVar.b());
            a(map, "dr", eVar.c());
        }
        com.google.android.gms.internal.measurement.b bVar = (com.google.android.gms.internal.measurement.b) oVar.a(com.google.android.gms.internal.measurement.b.class);
        if (bVar != null) {
            a(map, "ec", bVar.a());
            a(map, "ea", bVar.b());
            a(map, "el", bVar.c());
            a(map, "ev", bVar.d());
        }
        ce ceVar = (ce) oVar.a(ce.class);
        if (ceVar != null) {
            a(map, "cn", ceVar.a());
            a(map, "cs", ceVar.b());
            a(map, "cm", ceVar.c());
            a(map, "ck", ceVar.d());
            a(map, "cc", ceVar.e());
            a(map, "ci", ceVar.f());
            a(map, "anid", ceVar.g());
            a(map, "gclid", ceVar.h());
            a(map, "dclid", ceVar.i());
            a(map, "aclid", ceVar.j());
        }
        com.google.android.gms.internal.measurement.c cVar = (com.google.android.gms.internal.measurement.c) oVar.a(com.google.android.gms.internal.measurement.c.class);
        if (cVar != null) {
            a(map, "exd", cVar.f5951a);
            a(map, "exf", cVar.f5952b);
        }
        com.google.android.gms.internal.measurement.f fVar = (com.google.android.gms.internal.measurement.f) oVar.a(com.google.android.gms.internal.measurement.f.class);
        if (fVar != null) {
            a(map, "sn", fVar.f5983a);
            a(map, "sa", fVar.f5984b);
            a(map, "st", fVar.f5985c);
        }
        com.google.android.gms.internal.measurement.g gVar = (com.google.android.gms.internal.measurement.g) oVar.a(com.google.android.gms.internal.measurement.g.class);
        if (gVar != null) {
            a(map, "utv", gVar.f5986a);
            a(map, "utt", gVar.f5987b);
            a(map, "utc", gVar.f5988c);
            a(map, "utl", gVar.f5989d);
        }
        cf cfVar = (cf) oVar.a(cf.class);
        if (cfVar != null) {
            for (Map.Entry<Integer, String> entry2 : cfVar.a().entrySet()) {
                String strA = l.a(entry2.getKey().intValue());
                if (!TextUtils.isEmpty(strA)) {
                    map.put(strA, entry2.getValue());
                }
            }
        }
        cg cgVar = (cg) oVar.a(cg.class);
        if (cgVar != null) {
            for (Map.Entry<Integer, Double> entry3 : cgVar.a().entrySet()) {
                String strB = l.b(entry3.getKey().intValue());
                if (!TextUtils.isEmpty(strB)) {
                    map.put(strB, a(entry3.getValue().doubleValue()));
                }
            }
        }
        com.google.android.gms.internal.measurement.a aVar = (com.google.android.gms.internal.measurement.a) oVar.a(com.google.android.gms.internal.measurement.a.class);
        if (aVar != null) {
            com.google.android.gms.analytics.a.b bVarA = aVar.a();
            if (bVarA != null) {
                for (Map.Entry<String, String> entry4 : bVarA.a().entrySet()) {
                    if (entry4.getKey().startsWith("&")) {
                        map.put(entry4.getKey().substring(1), entry4.getValue());
                    } else {
                        map.put(entry4.getKey(), entry4.getValue());
                    }
                }
            }
            Iterator<com.google.android.gms.analytics.a.c> it = aVar.d().iterator();
            int i = 1;
            while (it.hasNext()) {
                map.putAll(it.next().a(l.f(i)));
                i++;
            }
            Iterator<com.google.android.gms.analytics.a.a> it2 = aVar.b().iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                map.putAll(it2.next().a(l.d(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<com.google.android.gms.analytics.a.a>> entry5 : aVar.c().entrySet()) {
                List<com.google.android.gms.analytics.a.a> value2 = entry5.getValue();
                String strI = l.i(i3);
                int i4 = 1;
                for (com.google.android.gms.analytics.a.a aVar2 : value2) {
                    String strValueOf2 = String.valueOf(strI);
                    String strValueOf3 = String.valueOf(l.g(i4));
                    map.putAll(aVar2.a(strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry5.getKey())) {
                    String strValueOf4 = String.valueOf(strI);
                    String strValueOf5 = String.valueOf("nm");
                    map.put(strValueOf5.length() != 0 ? strValueOf4.concat(strValueOf5) : new String(strValueOf4), entry5.getKey());
                }
                i3++;
            }
        }
        ci ciVar = (ci) oVar.a(ci.class);
        if (ciVar != null) {
            a(map, "ul", ciVar.a());
            a(map, "sd", ciVar.f5971a);
            a(map, "sr", ciVar.f5972b, ciVar.f5973c);
            a(map, "vp", ciVar.f5974d, ciVar.e);
        }
        cd cdVar = (cd) oVar.a(cd.class);
        if (cdVar != null) {
            a(map, "an", cdVar.a());
            a(map, "aid", cdVar.c());
            a(map, "aiid", cdVar.d());
            a(map, "av", cdVar.b());
        }
        return map;
    }

    @Override // com.google.android.gms.analytics.w
    public final Uri a() {
        return this.f3261d;
    }

    @Override // com.google.android.gms.analytics.w
    public final void a(o oVar) {
        com.google.android.gms.common.internal.w.a(oVar);
        com.google.android.gms.common.internal.w.b(oVar.f(), "Can't deliver not submitted measurement");
        com.google.android.gms.common.internal.w.c("deliver should be called on worker thread");
        o oVarA = oVar.a();
        com.google.android.gms.internal.measurement.d dVar = (com.google.android.gms.internal.measurement.d) oVarA.b(com.google.android.gms.internal.measurement.d.class);
        if (TextUtils.isEmpty(dVar.a())) {
            k().a(b(oVarA), "Ignoring measurement without type");
            return;
        }
        if (TextUtils.isEmpty(dVar.b())) {
            k().a(b(oVarA), "Ignoring measurement without client id");
            return;
        }
        if (this.f3259b.j().e()) {
            return;
        }
        double dH = dVar.h();
        if (ca.a(dH, dVar.b())) {
            b("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(dH));
            return;
        }
        Map<String, String> mapB = b(oVarA);
        mapB.put("v", "1");
        mapB.put("_v", com.google.android.gms.internal.measurement.q.f6008b);
        mapB.put("tid", this.f3260c);
        if (this.f3259b.j().d()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : mapB.entrySet()) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(entry.getKey());
                sb.append("=");
                sb.append(entry.getValue());
            }
            c("Dry run is enabled. GoogleAnalytics would have sent", sb.toString());
            return;
        }
        HashMap map = new HashMap();
        ca.a(map, "uid", dVar.c());
        cd cdVar = (cd) oVar.a(cd.class);
        if (cdVar != null) {
            ca.a(map, "an", cdVar.a());
            ca.a(map, "aid", cdVar.c());
            ca.a(map, "av", cdVar.b());
            ca.a(map, "aiid", cdVar.d());
        }
        mapB.put("_s", String.valueOf(o().a(new com.google.android.gms.internal.measurement.u(0L, dVar.b(), this.f3260c, !TextUtils.isEmpty(dVar.d()), 0L, map))));
        o().a(new be(k(), mapB, oVar.d(), true));
    }
}
