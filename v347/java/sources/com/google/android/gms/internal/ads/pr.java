package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class pr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f5450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f5451d;
    private final /* synthetic */ po e;

    pr(po poVar, String str, String str2, String str3, String str4) {
        this.e = poVar;
        this.f5448a = str;
        this.f5449b = str2;
        this.f5450c = str3;
        this.f5451d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheCanceled");
        map.put("src", this.f5448a);
        if (!TextUtils.isEmpty(this.f5449b)) {
            map.put("cachedSrc", this.f5449b);
        }
        po poVar = this.e;
        map.put("type", po.b(this.f5450c));
        map.put("reason", this.f5450c);
        if (!TextUtils.isEmpty(this.f5451d)) {
            map.put("message", this.f5451d);
        }
        this.e.a("onPrecacheEvent", (Map<String, String>) map);
    }
}
