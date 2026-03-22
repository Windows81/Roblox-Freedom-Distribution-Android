package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class asx extends auz implements ath {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aso f4461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final android.support.v4.g.m<String, ass> f4463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final android.support.v4.g.m<String, String> f4464d;
    private aqc e;
    private View f;
    private final Object g = new Object();
    private ate h;

    public asx(String str, android.support.v4.g.m<String, ass> mVar, android.support.v4.g.m<String, String> mVar2, aso asoVar, aqc aqcVar, View view) {
        this.f4462b = str;
        this.f4463c = mVar;
        this.f4464d = mVar2;
        this.f4461a = asoVar;
        this.e = aqcVar;
        this.f = view;
    }

    static /* synthetic */ ate a(asx asxVar, ate ateVar) {
        asxVar.h = null;
        return null;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final String a(String str) {
        return this.f4464d.get(str);
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final List<String> a() {
        int i = 0;
        String[] strArr = new String[this.f4463c.size() + this.f4464d.size()];
        int i2 = 0;
        for (int i3 = 0; i3 < this.f4463c.size(); i3++) {
            strArr[i2] = this.f4463c.b(i3);
            i2++;
        }
        while (i < this.f4464d.size()) {
            strArr[i2] = this.f4464d.b(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final void a(ate ateVar) {
        synchronized (this.g) {
            this.h = ateVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final boolean a(com.google.android.gms.b.a aVar) {
        if (this.h == null) {
            mj.c("Attempt to call renderVideoInMediaView before ad initialized.");
            return false;
        }
        if (this.f == null) {
            return false;
        }
        asy asyVar = new asy(this);
        this.h.a((FrameLayout) com.google.android.gms.b.b.a(aVar), asyVar);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final com.google.android.gms.b.a b() {
        return com.google.android.gms.b.b.a(this.h);
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final aub b(String str) {
        return this.f4463c.get(str);
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final aqc c() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final void c(String str) {
        synchronized (this.g) {
            if (this.h == null) {
                mj.c("#001 Attempt to perform click before app native ad initialized.");
            } else {
                this.h.a(null, str, null, null, null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final void d() {
        synchronized (this.g) {
            if (this.h == null) {
                mj.c("#002 Attempt to record impression before native ad initialized.");
            } else {
                this.h.a((View) null, (Map<String, WeakReference<View>>) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final com.google.android.gms.b.a e() {
        return com.google.android.gms.b.b.a(this.h.m().getApplicationContext());
    }

    @Override // com.google.android.gms.internal.ads.auy
    public final void f() {
        jm.f5184a.post(new asz(this));
        this.e = null;
        this.f = null;
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final String k() {
        return "3";
    }

    @Override // com.google.android.gms.internal.ads.auy, com.google.android.gms.internal.ads.ath
    public final String l() {
        return this.f4462b;
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final aso m() {
        return this.f4461a;
    }

    @Override // com.google.android.gms.internal.ads.ath
    public final View o() {
        return this.f;
    }
}
