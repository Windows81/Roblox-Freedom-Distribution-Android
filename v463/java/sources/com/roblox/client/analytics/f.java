package com.roblox.client.analytics;

import android.content.Context;
import com.google.android.gms.analytics.e;
import com.roblox.client.ae.k;
import com.roblox.client.ae.t;
import com.roblox.client.analytics.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.analytics.h f5678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.analytics.h f5679b;

    /* JADX INFO: renamed from: com.roblox.client.analytics.f$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5680a;

        static {
            int[] iArr = new int[d.a.values().length];
            f5680a = iArr;
            try {
                iArr[d.a.VIP_TRACKER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5680a[d.a.DEFAULT_TRACKER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private com.google.android.gms.analytics.h a(d.a aVar) {
        if (AnonymousClass1.f5680a[aVar.ordinal()] == 1) {
            return this.f5679b;
        }
        return this.f5678a;
    }

    @Override // com.roblox.client.analytics.e
    public void a(Context context) {
        com.google.android.gms.analytics.d dVarA = com.google.android.gms.analytics.d.a(context);
        this.f5678a = dVarA.a(2131886080);
        if (com.roblox.client.b.bH()) {
            com.google.android.gms.analytics.h hVarA = dVarA.a(2131886080);
            this.f5679b = hVarA;
            hVarA.a(com.roblox.client.b.bI());
            return;
        }
        this.f5679b = this.f5678a;
    }

    @Override // com.roblox.client.analytics.e
    public void a(d.a aVar, String str, String str2, String str3, Long l) {
        if ((str == null || str.isEmpty()) && (str2 == null || str2.isEmpty())) {
            return;
        }
        e.a aVarB = new e.a().a(str).b(str2);
        if (str3 == null || str3.isEmpty()) {
            str3 = "NO_LABEL";
        } else {
            aVarB.c(str3);
        }
        if (l != null) {
            aVarB.a(l.longValue());
        } else {
            l = 0L;
        }
        a(aVar).a(aVarB.a());
        k.b("rbx.GA", t.a("sendAnalytics: %s %s %s %s", str, str2, str3, l.toString()));
    }

    @Override // com.roblox.client.analytics.e
    public void a(String str, String str2, long j) {
        com.google.android.gms.analytics.h hVarA = a(d.a.DEFAULT_TRACKER);
        if (hVarA != null) {
            hVarA.a(new e.d().b(str).a(str2).a(j).a());
            k.b("rbx.GA", t.a("sendTiming: %s %s %d", str, str2, Long.valueOf(j)));
        }
    }

    @Override // com.roblox.client.analytics.e
    public void a(String str, boolean z) {
        com.google.android.gms.analytics.h hVarA = a(d.a.DEFAULT_TRACKER);
        if (hVarA != null) {
            k.b("rbx.GA", "sendException: " + str + ", isFatal: " + z);
            hVarA.a(new e.b().a(str).a(z).a());
        }
    }
}
