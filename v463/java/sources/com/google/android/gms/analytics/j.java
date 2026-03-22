package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.ab;
import com.google.android.gms.internal.measurement.ad;
import com.google.android.gms.internal.measurement.ae;
import com.google.android.gms.internal.measurement.ah;
import com.google.android.gms.internal.measurement.br;
import com.google.android.gms.internal.measurement.cn;
import com.google.android.gms.internal.measurement.jq;
import com.google.android.gms.internal.measurement.jr;
import com.google.android.gms.internal.measurement.js;
import com.google.android.gms.internal.measurement.kg;
import com.google.android.gms.internal.measurement.kk;
import com.google.android.gms.internal.measurement.kl;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j extends ab implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DecimalFormat f3274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ae f3275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Uri f3277d;

    public j(ae aeVar, String str) {
        this(aeVar, str, true, false);
    }

    private j(ae aeVar, String str, boolean z, boolean z2) {
        super(aeVar);
        aa.a(str);
        this.f3275b = aeVar;
        this.f3276c = str;
        this.f3277d = a(str);
    }

    static Uri a(String str) {
        aa.a(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    private static String a(double d2) {
        if (f3274a == null) {
            f3274a = new DecimalFormat("0.######");
        }
        return f3274a.format(d2);
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
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        map.put(str, sb.toString());
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
        HashMap map = new HashMap();
        kk kkVar = (kk) oVar.a(kk.class);
        if (kkVar != null) {
            for (Map.Entry<String, Object> entry : kkVar.a().entrySet()) {
                Object value = entry.getValue();
                String strValueOf = null;
                if (value != null) {
                    if (value instanceof String) {
                        String str = (String) value;
                        if (!TextUtils.isEmpty(str)) {
                            strValueOf = str;
                        }
                    } else if (value instanceof Double) {
                        Double d2 = (Double) value;
                        if (d2.doubleValue() != 0.0d) {
                            strValueOf = a(d2.doubleValue());
                        }
                    } else if (!(value instanceof Boolean)) {
                        strValueOf = String.valueOf(value);
                    } else if (value != Boolean.FALSE) {
                        strValueOf = "1";
                    }
                }
                if (strValueOf != null) {
                    map.put(entry.getKey(), strValueOf);
                }
            }
        }
        com.google.android.gms.internal.measurement.q qVar = (com.google.android.gms.internal.measurement.q) oVar.a(com.google.android.gms.internal.measurement.q.class);
        if (qVar != null) {
            a(map, "t", qVar.a());
            a(map, "cid", qVar.b());
            a(map, "uid", qVar.c());
            a(map, "sc", qVar.f());
            a(map, "sf", qVar.h());
            a(map, "ni", qVar.g());
            a(map, "adid", qVar.d());
            a(map, "ate", qVar.e());
        }
        com.google.android.gms.internal.measurement.r rVar = (com.google.android.gms.internal.measurement.r) oVar.a(com.google.android.gms.internal.measurement.r.class);
        if (rVar != null) {
            a(map, "cd", rVar.a());
            a(map, "a", rVar.b());
            a(map, "dr", rVar.c());
        }
        com.google.android.gms.internal.measurement.b bVar = (com.google.android.gms.internal.measurement.b) oVar.a(com.google.android.gms.internal.measurement.b.class);
        if (bVar != null) {
            a(map, "ec", bVar.a());
            a(map, "ea", bVar.b());
            a(map, "el", bVar.c());
            a(map, "ev", bVar.d());
        }
        jr jrVar = (jr) oVar.a(jr.class);
        if (jrVar != null) {
            a(map, "cn", jrVar.a());
            a(map, "cs", jrVar.b());
            a(map, "cm", jrVar.c());
            a(map, "ck", jrVar.d());
            a(map, "cc", jrVar.e());
            a(map, "ci", jrVar.f());
            a(map, "anid", jrVar.g());
            a(map, "gclid", jrVar.h());
            a(map, "dclid", jrVar.i());
            a(map, "aclid", jrVar.j());
        }
        com.google.android.gms.internal.measurement.h hVar = (com.google.android.gms.internal.measurement.h) oVar.a(com.google.android.gms.internal.measurement.h.class);
        if (hVar != null) {
            a(map, "exd", hVar.f4457a);
            a(map, "exf", hVar.f4458b);
        }
        com.google.android.gms.internal.measurement.s sVar = (com.google.android.gms.internal.measurement.s) oVar.a(com.google.android.gms.internal.measurement.s.class);
        if (sVar != null) {
            a(map, "sn", sVar.f4688a);
            a(map, "sa", sVar.f4689b);
            a(map, "st", sVar.f4690c);
        }
        com.google.android.gms.internal.measurement.t tVar = (com.google.android.gms.internal.measurement.t) oVar.a(com.google.android.gms.internal.measurement.t.class);
        if (tVar != null) {
            a(map, "utv", tVar.f4691a);
            a(map, "utt", tVar.f4692b);
            a(map, "utc", tVar.f4693c);
            a(map, "utl", tVar.f4694d);
        }
        js jsVar = (js) oVar.a(js.class);
        if (jsVar != null) {
            for (Map.Entry<Integer, String> entry2 : jsVar.a().entrySet()) {
                String strA = l.a(entry2.getKey().intValue());
                if (!TextUtils.isEmpty(strA)) {
                    map.put(strA, entry2.getValue());
                }
            }
        }
        kg kgVar = (kg) oVar.a(kg.class);
        if (kgVar != null) {
            for (Map.Entry<Integer, Double> entry3 : kgVar.a().entrySet()) {
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
                    map.put(entry4.getKey().startsWith("&") ? entry4.getKey().substring(1) : entry4.getKey(), entry4.getValue());
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
                    map.put("nm".length() != 0 ? strValueOf4.concat("nm") : new String(strValueOf4), entry5.getKey());
                }
                i3++;
            }
        }
        kl klVar = (kl) oVar.a(kl.class);
        if (klVar != null) {
            a(map, "ul", klVar.a());
            a(map, "sd", klVar.f4665a);
            a(map, "sr", klVar.f4666b, klVar.f4667c);
            a(map, "vp", klVar.f4668d, klVar.f4669e);
        }
        jq jqVar = (jq) oVar.a(jq.class);
        if (jqVar != null) {
            a(map, "an", jqVar.a());
            a(map, "aid", jqVar.c());
            a(map, "aiid", jqVar.d());
            a(map, "av", jqVar.b());
        }
        return map;
    }

    @Override // com.google.android.gms.analytics.w
    public final Uri a() {
        return this.f3277d;
    }

    @Override // com.google.android.gms.analytics.w
    public final void a(o oVar) {
        aa.a(oVar);
        aa.b(oVar.f(), "Can't deliver not submitted measurement");
        aa.c("deliver should be called on worker thread");
        o oVarA = oVar.a();
        com.google.android.gms.internal.measurement.q qVar = (com.google.android.gms.internal.measurement.q) oVarA.b(com.google.android.gms.internal.measurement.q.class);
        if (TextUtils.isEmpty(qVar.a())) {
            k().a(b(oVarA), "Ignoring measurement without type");
            return;
        }
        if (TextUtils.isEmpty(qVar.b())) {
            k().a(b(oVarA), "Ignoring measurement without client id");
            return;
        }
        if (this.f3275b.j().e()) {
            return;
        }
        double dH = qVar.h();
        if (cn.a(dH, qVar.b())) {
            b("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(dH));
            return;
        }
        Map<String, String> mapB = b(oVarA);
        mapB.put("v", "1");
        mapB.put("_v", ad.f4009b);
        mapB.put("tid", this.f3276c);
        if (this.f3275b.j().d()) {
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
        cn.a(map, "uid", qVar.c());
        jq jqVar = (jq) oVar.a(jq.class);
        if (jqVar != null) {
            cn.a(map, "an", jqVar.a());
            cn.a(map, "aid", jqVar.c());
            cn.a(map, "av", jqVar.b());
            cn.a(map, "aiid", jqVar.d());
        }
        mapB.put("_s", String.valueOf(o().a(new ah(0L, qVar.b(), this.f3276c, !TextUtils.isEmpty(qVar.d()), 0L, map))));
        o().a(new br(k(), mapB, oVar.d(), true));
    }
}
