package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final android.support.v4.g.a<ag<?>, ConnectionResult> f3355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final android.support.v4.g.a<ag<?>, String> f3356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.d.g<Map<ag<?>, String>> f3357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3358d;
    private boolean e;

    public final Set<ag<?>> a() {
        return this.f3355a.keySet();
    }

    public final void a(ag<?> agVar, ConnectionResult connectionResult, String str) {
        this.f3355a.put(agVar, connectionResult);
        this.f3356b.put(agVar, str);
        this.f3358d--;
        if (!connectionResult.b()) {
            this.e = true;
        }
        if (this.f3358d == 0) {
            if (!this.e) {
                this.f3357c.a(this.f3356b);
            } else {
                this.f3357c.a(new com.google.android.gms.common.api.c(this.f3355a));
            }
        }
    }
}
