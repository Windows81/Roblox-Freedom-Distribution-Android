package com.google.android.gms.ads.internal.gmsg;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.agv;
import com.google.android.gms.internal.ads.agw;
import com.google.android.gms.internal.ads.ayi;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ic;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.lm;
import com.google.android.gms.internal.ads.pc;
import com.google.android.gms.internal.ads.pj;
import com.google.android.gms.internal.ads.pk;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qz;
import com.google.android.gms.internal.ads.rh;
import com.google.android.gms.internal.ads.rj;
import com.google.android.gms.internal.ads.rk;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class o {
    private static final ae<Object> s = new u();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ae<qd> f3122a = p.f3126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ae<qd> f3123b = q.f3127a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ae<qd> f3124c = r.f3128a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ae<qd> f3125d = new w();
    public static final ae<qd> e = new x();
    public static final ae<qd> f = s.f3129a;
    public static final ae<Object> g = new y();
    public static final ae<qd> h = new z();
    public static final ae<qd> i = t.f3130a;
    public static final ae<qd> j = new aa();
    public static final ae<qd> k = new ab();
    public static final ae<pc> l = new pj();
    public static final ae<pc> m = new pk();
    public static final ae<qd> n = new n();
    public static final g o = new g();
    public static final ae<qd> p = new ac();
    public static final ae<qd> q = new ad();
    public static final ae<qd> r = new v();

    static final /* synthetic */ void a(ayi ayiVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            jd.e("URL missing from click GMSG.");
            return;
        }
        Uri uriA = Uri.parse(str);
        try {
            agv agvVarY = ((rh) ayiVar).y();
            uriA = (agvVarY == null || !agvVarY.a(uriA)) ? uriA : agvVarY.a(uriA, ((qz) ayiVar).getContext(), ((rk) ayiVar).getView(), ((qz) ayiVar).d());
        } catch (agw e2) {
            String strValueOf = String.valueOf(str);
            jd.e(strValueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf) : new String("Unable to append parameter to URL: "));
        }
        new lm(((qz) ayiVar).getContext(), ((rj) ayiVar).k().f5784a, ic.a(uriA, ((qz) ayiVar).getContext()).toString()).h();
    }

    static final /* synthetic */ void a(qz qzVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            jd.e("URL missing from httpTrack GMSG.");
        } else {
            new lm(qzVar.getContext(), ((rj) qzVar).k().f5784a, str).h();
        }
    }

    static final /* synthetic */ void a(rh rhVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int i2 = Integer.parseInt(str);
            int i3 = Integer.parseInt(str2);
            int i4 = Integer.parseInt(str3);
            agv agvVarY = rhVar.y();
            if (agvVarY != null) {
                agvVarY.a().a(i2, i3, i4);
            }
        } catch (NumberFormatException e2) {
            jd.e("Could not parse touch parameters from gmsg.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static final /* synthetic */ void b(com.google.android.gms.internal.ads.qz r16, java.util.Map r17) {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.gmsg.o.b(com.google.android.gms.internal.ads.qz, java.util.Map):void");
    }

    static final /* synthetic */ void c(qz qzVar, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            jd.e("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] strArrSplit = str.split(",");
        HashMap map2 = new HashMap();
        PackageManager packageManager = qzVar.getContext().getPackageManager();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(";", 2);
            map2.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) != null));
        }
        ((ayi) qzVar).a("openableURLs", map2);
    }
}
