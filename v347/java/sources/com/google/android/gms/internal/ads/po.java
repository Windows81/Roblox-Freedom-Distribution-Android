package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public abstract class po implements com.google.android.gms.common.api.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f5437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<pc> f5439c;

    public po(pc pcVar) {
        this.f5437a = pcVar.getContext();
        this.f5438b = com.google.android.gms.ads.internal.aw.e().b(this.f5437a, pcVar.k().f5784a);
        this.f5439c = new WeakReference<>(pcVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, Map<String, String> map) {
        pc pcVar = this.f5439c.get();
        if (pcVar != null) {
            pcVar.a(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str) {
        switch (str) {
        }
        return "internal";
    }

    @Override // com.google.android.gms.common.api.h
    public void a() {
    }

    protected final void a(String str, String str2, int i) {
        ly.f5287a.post(new pq(this, str, str2, i));
    }

    public final void a(String str, String str2, String str3, String str4) {
        ly.f5287a.post(new pr(this, str, str2, str3, str4));
    }

    public abstract boolean a(String str);

    public abstract void b();
}
