package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzang f5419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final arz f5420d;
    private final asb e;
    private final long[] g;
    private final String[] h;
    private boolean m;
    private om n;
    private boolean o;
    private boolean p;
    private final ks f = new kv().a("min_1", Double.MIN_VALUE, 1.0d).a("1_5", 1.0d, 5.0d).a("5_10", 5.0d, 10.0d).a("10_20", 10.0d, 20.0d).a("20_30", 20.0d, 30.0d).a("30_max", 30.0d, Double.MAX_VALUE).a();
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private long q = -1;

    public pd(Context context, zzang zzangVar, String str, asb asbVar, arz arzVar) {
        this.f5417a = context;
        this.f5419c = zzangVar;
        this.f5418b = str;
        this.e = asbVar;
        this.f5420d = arzVar;
        String str2 = (String) aoo.f().a(aro.u);
        if (str2 == null) {
            this.h = new String[0];
            this.g = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, ",");
        this.h = new String[strArrSplit.length];
        this.g = new long[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            try {
                this.g[i] = Long.parseLong(strArrSplit[i]);
            } catch (NumberFormatException e) {
                jd.c("Unable to parse frame hash target time number.", e);
                this.g[i] = -1;
            }
        }
    }

    public final void a() {
        if (!this.i || this.j) {
            return;
        }
        aru.a(this.e, this.f5420d, "vfr2");
        this.j = true;
    }

    public final void a(om omVar) {
        aru.a(this.e, this.f5420d, "vpc2");
        this.i = true;
        if (this.e != null) {
            this.e.a("vpn", omVar.a());
        }
        this.n = omVar;
    }

    public final void b() {
        if (!((Boolean) aoo.f().a(aro.t)).booleanValue() || this.o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f5418b);
        bundle.putString("player", this.n.a());
        for (ku kuVar : this.f.a()) {
            String strValueOf = String.valueOf("fps_c_");
            String strValueOf2 = String.valueOf(kuVar.f5228a);
            bundle.putString(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), Integer.toString(kuVar.f5230c));
            String strValueOf3 = String.valueOf("fps_p_");
            String strValueOf4 = String.valueOf(kuVar.f5228a);
            bundle.putString(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3), Double.toString(kuVar.f5229b));
        }
        for (int i = 0; i < this.g.length; i++) {
            String str = this.h[i];
            if (str != null) {
                String strValueOf5 = String.valueOf(Long.valueOf(this.g[i]));
                bundle.putString(new StringBuilder(String.valueOf(strValueOf5).length() + 3).append("fh_").append(strValueOf5).toString(), str);
            }
        }
        com.google.android.gms.ads.internal.aw.e().a(this.f5417a, this.f5419c.f5784a, "gmob-apps", bundle, true);
        this.o = true;
    }

    public final void b(om omVar) {
        long j;
        if (this.k && !this.l) {
            if (jd.a() && !this.l) {
                jd.a("VideoMetricsMixin first frame");
            }
            aru.a(this.e, this.f5420d, "vff2");
            this.l = true;
        }
        long jC = com.google.android.gms.ads.internal.aw.l().c();
        if (this.m && this.p && this.q != -1) {
            this.f.a(TimeUnit.SECONDS.toNanos(1L) / (jC - this.q));
        }
        this.p = this.m;
        this.q = jC;
        long jLongValue = ((Long) aoo.f().a(aro.v)).longValue();
        long currentPosition = omVar.getCurrentPosition();
        for (int i = 0; i < this.h.length; i++) {
            if (this.h[i] == null && jLongValue > Math.abs(currentPosition - this.g[i])) {
                String[] strArr = this.h;
                Bitmap bitmap = omVar.getBitmap(8, 8);
                long j2 = 0;
                long j3 = 63;
                int i2 = 0;
                while (i2 < 8) {
                    int i3 = 0;
                    long j4 = j2;
                    while (true) {
                        j = j3;
                        if (i3 < 8) {
                            int pixel = bitmap.getPixel(i3, i2);
                            j4 |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > 128 ? 1L : 0L) << ((int) j);
                            i3++;
                            j3 = j - 1;
                        }
                    }
                    i2++;
                    j3 = j;
                    j2 = j4;
                }
                strArr[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
        }
    }

    public final void c() {
        this.m = true;
        if (!this.j || this.k) {
            return;
        }
        aru.a(this.e, this.f5420d, "vfp2");
        this.k = true;
    }

    public final void d() {
        this.m = false;
    }
}
