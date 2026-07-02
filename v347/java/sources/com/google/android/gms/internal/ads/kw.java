package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class kw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static aze f5235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f5236b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    private static final lc<Void> f5237c = new kx();

    public kw(Context context) {
        a(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    private static aze a(Context context) {
        aze azeVar;
        aze azeVar2;
        synchronized (f5236b) {
            if (f5235a == null) {
                aro.a(context);
                if (((Boolean) aoo.f().a(aro.cI)).booleanValue()) {
                    azeVar2 = kq.a(context);
                } else {
                    azeVar2 = new aze(new ld(new File(context.getCacheDir(), "volley")), new ia((hb) new ri()));
                    azeVar2.a();
                }
                f5235a = azeVar2;
            }
            azeVar = f5235a;
        }
        return azeVar;
    }

    public final nd<String> a(int i, String str, Map<String, String> map, byte[] bArr) {
        le leVar = new le(null);
        la laVar = new la(this, str, leVar);
        mc mcVar = new mc(null);
        lb lbVar = new lb(this, i, str, leVar, laVar, bArr, map, mcVar);
        if (mc.c()) {
            try {
                mcVar.a(str, Constants.HTTP_GET, lbVar.b(), lbVar.a());
            } catch (a e) {
                jd.e(e.getMessage());
            }
        }
        f5235a.a(lbVar);
        return leVar;
    }

    @Deprecated
    public final <T> nd<T> a(String str, lc<T> lcVar) {
        no noVar = new no();
        f5235a.a(new lf(str, noVar));
        return ms.a(ms.a(noVar, new kz(this, lcVar), jk.f5180a), Throwable.class, new ky(this, lcVar), nj.f5347b);
    }

    public final nd<String> a(String str, Map<String, String> map) {
        return a(0, str, map, null);
    }
}
