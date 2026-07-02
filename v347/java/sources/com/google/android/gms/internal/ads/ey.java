package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ey {
    private zzael B;
    private String D;
    private List<String> E;
    private boolean F;
    private String G;
    private zzaiq H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private String M;
    private final zzaef N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f4992d;
    private String e;
    private String f;
    private String g;
    private List<String> h;
    private List<String> i;
    private List<String> m;
    private zzaig x;
    private List<String> y;
    private List<String> z;
    private long j = -1;
    private boolean k = false;
    private final long l = -1;
    private long n = -1;
    private int o = -1;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = true;
    private boolean t = true;
    private String u = "";
    private boolean v = false;
    private boolean w = false;
    private boolean A = false;
    private boolean C = false;

    public ey(zzaef zzaefVar, String str) {
        this.f4990b = str;
        this.N = zzaefVar;
    }

    private static String a(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static long b(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list != null && !list.isEmpty()) {
            String str2 = list.get(0);
            try {
                return (long) (Float.parseFloat(str2) * 1000.0f);
            } catch (NumberFormatException e) {
                jd.e(new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length()).append("Could not parse float from ").append(str).append(" header: ").append(str2).toString());
            }
        }
        return -1L;
    }

    private static List<String> c(Map<String, List<String>> map, String str) {
        String str2;
        List<String> list = map.get(str);
        if (list == null || list.isEmpty() || (str2 = list.get(0)) == null) {
            return null;
        }
        return Arrays.asList(str2.trim().split("\\s+"));
    }

    private static boolean d(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list == null || list.isEmpty()) {
            return false;
        }
        return Boolean.valueOf(list.get(0)).booleanValue();
    }

    public final zzaej a(long j, boolean z) {
        return new zzaej(this.N, this.f4990b, this.f4991c, this.f4992d, this.h, this.j, this.k, -1L, this.m, this.n, this.o, this.f4989a, j, this.f, this.g, this.p, this.q, this.r, this.s, false, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, this.e, this.t, this.I, this.J, z ? 2 : 1, this.K, this.i, this.L, this.M);
    }

    public final void a(String str, Map<String, List<String>> map, String str2) {
        this.f4991c = str2;
        a(map);
    }

    public final void a(Map<String, List<String>> map) {
        this.f4989a = a(map, "X-Afma-Ad-Size");
        this.G = a(map, "X-Afma-Ad-Slot-Size");
        List<String> listC = c(map, "X-Afma-Click-Tracking-Urls");
        if (listC != null) {
            this.f4992d = listC;
        }
        this.e = a(map, "X-Afma-Debug-Signals");
        List<String> list = map.get("X-Afma-Debug-Dialog");
        if (list != null && !list.isEmpty()) {
            this.f = list.get(0);
        }
        List<String> listC2 = c(map, "X-Afma-Tracking-Urls");
        if (listC2 != null) {
            this.h = listC2;
        }
        List<String> listC3 = c(map, "X-Afma-Downloaded-Impression-Urls");
        if (listC3 != null) {
            this.i = listC3;
        }
        long jB = b(map, "X-Afma-Interstitial-Timeout");
        if (jB != -1) {
            this.j = jB;
        }
        this.k |= d(map, "X-Afma-Mediation");
        List<String> listC4 = c(map, "X-Afma-Manual-Tracking-Urls");
        if (listC4 != null) {
            this.m = listC4;
        }
        long jB2 = b(map, "X-Afma-Refresh-Rate");
        if (jB2 != -1) {
            this.n = jB2;
        }
        List<String> list2 = map.get("X-Afma-Orientation");
        if (list2 != null && !list2.isEmpty()) {
            String str = list2.get(0);
            if ("portrait".equalsIgnoreCase(str)) {
                this.o = com.google.android.gms.ads.internal.aw.g().b();
            } else if ("landscape".equalsIgnoreCase(str)) {
                this.o = com.google.android.gms.ads.internal.aw.g().a();
            }
        }
        this.g = a(map, "X-Afma-ActiveView");
        List<String> list3 = map.get("X-Afma-Use-HTTPS");
        if (list3 != null && !list3.isEmpty()) {
            this.r = Boolean.valueOf(list3.get(0)).booleanValue();
        }
        this.p |= d(map, "X-Afma-Custom-Rendering-Allowed");
        this.q = "native".equals(a(map, "X-Afma-Ad-Format"));
        List<String> list4 = map.get("X-Afma-Content-Url-Opted-Out");
        if (list4 != null && !list4.isEmpty()) {
            this.s = Boolean.valueOf(list4.get(0)).booleanValue();
        }
        List<String> list5 = map.get("X-Afma-Content-Vertical-Opted-Out");
        if (list5 != null && !list5.isEmpty()) {
            this.t = Boolean.valueOf(list5.get(0)).booleanValue();
        }
        List<String> list6 = map.get("X-Afma-Gws-Query-Id");
        if (list6 != null && !list6.isEmpty()) {
            this.u = list6.get(0);
        }
        String strA = a(map, "X-Afma-Fluid");
        if (strA != null && strA.equals("height")) {
            this.v = true;
        }
        this.w = "native_express".equals(a(map, "X-Afma-Ad-Format"));
        this.x = zzaig.a(a(map, "X-Afma-Rewards"));
        if (this.y == null) {
            this.y = c(map, "X-Afma-Reward-Video-Start-Urls");
        }
        if (this.z == null) {
            this.z = c(map, "X-Afma-Reward-Video-Complete-Urls");
        }
        this.A |= d(map, "X-Afma-Use-Displayed-Impression");
        this.C |= d(map, "X-Afma-Auto-Collect-Location");
        this.D = a(map, "Set-Cookie");
        String strA2 = a(map, "X-Afma-Auto-Protection-Configuration");
        if (strA2 == null || TextUtils.isEmpty(strA2)) {
            Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204").buildUpon();
            builderBuildUpon.appendQueryParameter("id", "gmob-apps-blocked-navigation");
            if (!TextUtils.isEmpty(this.f)) {
                builderBuildUpon.appendQueryParameter("debugDialog", this.f);
            }
            boolean zBooleanValue = ((Boolean) aoo.f().a(aro.g)).booleanValue();
            String string = builderBuildUpon.toString();
            this.B = new zzael(zBooleanValue, Arrays.asList(new StringBuilder(String.valueOf(string).length() + 31).append(string).append("&navigationURL={NAVIGATION_URL}").toString()));
        } else {
            try {
                this.B = zzael.a(new JSONObject(strA2));
            } catch (JSONException e) {
                jd.c("Error parsing configuration JSON", e);
                this.B = new zzael();
            }
        }
        List<String> listC5 = c(map, "X-Afma-Remote-Ping-Urls");
        if (listC5 != null) {
            this.E = listC5;
        }
        String strA3 = a(map, "X-Afma-Safe-Browsing");
        if (!TextUtils.isEmpty(strA3)) {
            try {
                this.H = zzaiq.a(new JSONObject(strA3));
            } catch (JSONException e2) {
                jd.c("Error parsing safe browsing header", e2);
            }
        }
        this.F |= d(map, "X-Afma-Render-In-Browser");
        String strA4 = a(map, "X-Afma-Pool");
        if (!TextUtils.isEmpty(strA4)) {
            try {
                this.I = new JSONObject(strA4).getBoolean("never_pool");
            } catch (JSONException e3) {
                jd.c("Error parsing interstitial pool header", e3);
            }
        }
        this.J = d(map, "X-Afma-Custom-Close-Blocked");
        this.K = d(map, "X-Afma-Enable-Omid");
        this.L = d(map, "X-Afma-Disable-Closable-Area");
        this.M = a(map, "X-Afma-Omid-Settings");
    }
}
