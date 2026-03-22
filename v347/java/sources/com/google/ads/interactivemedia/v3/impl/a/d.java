package com.google.ads.interactivemedia.v3.impl.a;

import android.util.Log;
import com.google.ads.interactivemedia.v3.api.Ad;
import java.net.URI;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static d f2798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2799b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f2800c = {-2013265920, -2013265920};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2801d = -1728053248;
    public int e = 1;
    public int f = 1728053247;
    public int g = 1;
    public String h = "Advertisement";
    public int i = -3355444;
    public String j = "Arial";
    public int k = 12;
    public int l = 4;
    public boolean m = true;
    public String n = "···";
    public String o;
    public int p;
    public float q;
    public int r;
    public int s;
    public int t;

    public d() {
        String strValueOf = String.valueOf(this.n);
        this.o = strValueOf.length() != 0 ? "Learn More ".concat(strValueOf) : new String("Learn More ");
        this.p = -3355444;
        this.q = 16.0f;
        this.r = 15;
        this.s = 25;
        this.t = 8;
    }

    public static d a(Ad ad) {
        if (f2798a != null) {
            return f2798a;
        }
        d dVar = new d();
        dVar.f2799b = ad.isSkippable();
        a(dVar, ad);
        return dVar;
    }

    static void a(d dVar, Ad ad) {
        String clickThruUrl = ((com.google.ads.interactivemedia.v3.impl.data.b) ad).getClickThruUrl();
        try {
            if (com.google.ads.interactivemedia.v3.impl.b.b.a(clickThruUrl)) {
                throw new Exception();
            }
            new URI(clickThruUrl);
        } catch (Exception e) {
            String strValueOf = String.valueOf(clickThruUrl);
            Log.w("IMASDK", strValueOf.length() != 0 ? "Malformed clickthrough URL: ".concat(strValueOf) : new String("Malformed clickthrough URL: "));
            dVar.m = false;
        }
    }
}
