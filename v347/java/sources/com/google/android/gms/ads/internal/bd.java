package com.google.android.gms.ads.internal;

import android.webkit.CookieManager;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class bd implements Callable<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ba f3046a;

    bd(ba baVar) {
        this.f3046a = baVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        CookieManager cookieManagerC;
        return (!((Boolean) aoo.f().a(aro.cC)).booleanValue() || (cookieManagerC = aw.g().c(this.f3046a.e.f3036c)) == null) ? "" : cookieManagerC.getCookie("googleads.g.doubleclick.net");
    }
}
