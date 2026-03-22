package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class kl extends com.google.android.gms.analytics.q<kl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4667c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4669e;
    private String f;

    public final String a() {
        return this.f;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        kl klVar = (kl) qVar;
        int i = this.f4665a;
        if (i != 0) {
            klVar.f4665a = i;
        }
        int i2 = this.f4666b;
        if (i2 != 0) {
            klVar.f4666b = i2;
        }
        int i3 = this.f4667c;
        if (i3 != 0) {
            klVar.f4667c = i3;
        }
        int i4 = this.f4668d;
        if (i4 != 0) {
            klVar.f4668d = i4;
        }
        int i5 = this.f4669e;
        if (i5 != 0) {
            klVar.f4669e = i5;
        }
        if (TextUtils.isEmpty(this.f)) {
            return;
        }
        klVar.f = this.f;
    }

    public final void a(String str) {
        this.f = str;
    }

    public final String toString() {
        HashMap map = new HashMap();
        map.put("language", this.f);
        map.put("screenColors", Integer.valueOf(this.f4665a));
        map.put("screenWidth", Integer.valueOf(this.f4666b));
        map.put("screenHeight", Integer.valueOf(this.f4667c));
        map.put("viewportWidth", Integer.valueOf(this.f4668d));
        map.put("viewportHeight", Integer.valueOf(this.f4669e));
        return a((Object) map);
    }
}
