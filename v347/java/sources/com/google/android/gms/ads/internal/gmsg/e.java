package com.google.android.gms.ads.internal.gmsg;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.ads.internal.bu;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.internal.ads.agv;
import com.google.android.gms.internal.ads.agw;
import com.google.android.gms.internal.ads.anv;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ic;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qz;
import com.google.android.gms.internal.ads.ra;
import com.google.android.gms.internal.ads.re;
import com.google.android.gms.internal.ads.rh;
import com.google.android.gms.internal.ads.rk;
import com.google.android.gms.internal.ads.zzang;
import java.net.URISyntaxException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class e<T extends qz & ra & re & rh & rk> implements ae<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final agv f3112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzang f3113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.overlay.s f3114d;
    private final anv e;
    private final com.google.android.gms.ads.internal.overlay.m f;
    private final k g;
    private final m h;
    private final bu i;
    private final com.google.android.gms.internal.ads.d j;
    private final qd k = null;

    public e(Context context, zzang zzangVar, agv agvVar, com.google.android.gms.ads.internal.overlay.s sVar, anv anvVar, k kVar, m mVar, com.google.android.gms.ads.internal.overlay.m mVar2, bu buVar, com.google.android.gms.internal.ads.d dVar) {
        this.f3111a = context;
        this.f3113c = zzangVar;
        this.f3112b = agvVar;
        this.f3114d = sVar;
        this.e = anvVar;
        this.g = kVar;
        this.h = mVar;
        this.i = buVar;
        this.j = dVar;
        this.f = mVar2;
    }

    static String a(Context context, agv agvVar, String str, View view, Activity activity) {
        if (agvVar == null) {
            return str;
        }
        try {
            Uri uriA = Uri.parse(str);
            if (agvVar.b(uriA)) {
                uriA = agvVar.a(uriA, context, view, activity);
            }
            return uriA.toString();
        } catch (agw e) {
            return str;
        } catch (Exception e2) {
            aw.i().a(e2, "OpenGmsgHandler.maybeAddClickSignalsToUrl");
            return str;
        }
    }

    private final void a(boolean z) {
        if (this.j != null) {
            this.j.a(z);
        }
    }

    private static boolean a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return aw.g().b();
            }
            if ("l".equalsIgnoreCase(str)) {
                return aw.g().a();
            }
            if ("c".equalsIgnoreCase(str)) {
                return aw.g().c();
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(Object obj, Map map) throws URISyntaxException {
        Intent uri;
        String strA;
        Uri uri2;
        qz qzVar = (qz) obj;
        String strA2 = ic.a((String) map.get("u"), qzVar.getContext());
        String str = (String) map.get("a");
        if (str == null) {
            jd.e("Action missing from an open GMSG.");
            return;
        }
        if (this.i != null && !this.i.b()) {
            this.i.a(strA2);
            return;
        }
        if ("expand".equalsIgnoreCase(str)) {
            if (((ra) qzVar).z()) {
                jd.e("Cannot expand WebView that is already expanded.");
                return;
            } else {
                a(false);
                ((re) qzVar).a(a((Map<String, String>) map), b(map));
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str)) {
            a(false);
            if (strA2 != null) {
                ((re) qzVar).a(a((Map<String, String>) map), b(map), strA2);
                return;
            } else {
                ((re) qzVar).a(a((Map<String, String>) map), b(map), (String) map.get("html"), (String) map.get("baseurl"));
                return;
            }
        }
        if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            a(true);
            qzVar.getContext();
            if (TextUtils.isEmpty(strA2)) {
                jd.e("Destination url cannot be empty.");
                return;
            }
            try {
                ((re) qzVar).a(new zzc(new f(qzVar.getContext(), ((rh) qzVar).y(), ((rk) qzVar).getView()).a((Map<String, String>) map)));
                return;
            } catch (ActivityNotFoundException e) {
                jd.e(e.getMessage());
                return;
            }
        }
        a(true);
        String str2 = (String) map.get("intent_url");
        if (TextUtils.isEmpty(str2)) {
            uri = null;
        } else {
            try {
                uri = Intent.parseUri(str2, 0);
            } catch (URISyntaxException e2) {
                String strValueOf = String.valueOf(str2);
                jd.b(strValueOf.length() != 0 ? "Error parsing the url: ".concat(strValueOf) : new String("Error parsing the url: "), e2);
                uri = null;
            }
        }
        if (uri != null && uri.getData() != null) {
            Uri data = uri.getData();
            String string = data.toString();
            if (TextUtils.isEmpty(string)) {
                uri2 = data;
                uri.setData(uri2);
            } else {
                try {
                    strA = a(qzVar.getContext(), ((rh) qzVar).y(), string, ((rk) qzVar).getView(), qzVar.d());
                } catch (Exception e3) {
                    jd.b("Error occurred while adding signals.", e3);
                    aw.i().a(e3, "OpenGmsgHandler.onGmsg");
                    strA = string;
                }
                try {
                    uri2 = Uri.parse(strA);
                } catch (Exception e4) {
                    String strValueOf2 = String.valueOf(strA);
                    jd.b(strValueOf2.length() != 0 ? "Error parsing the uri: ".concat(strValueOf2) : new String("Error parsing the uri: "), e4);
                    aw.i().a(e4, "OpenGmsgHandler.onGmsg");
                    uri2 = data;
                }
                uri.setData(uri2);
            }
        }
        if (uri != null) {
            ((re) qzVar).a(new zzc(uri));
            return;
        }
        if (!TextUtils.isEmpty(strA2)) {
            strA2 = a(qzVar.getContext(), ((rh) qzVar).y(), strA2, ((rk) qzVar).getView(), qzVar.d());
        }
        ((re) qzVar).a(new zzc((String) map.get("i"), strA2, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
    }
}
