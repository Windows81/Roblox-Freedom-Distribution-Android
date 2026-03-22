package com.google.android.gms.auth.api.a;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.f.g;
import com.google.android.gms.internal.b.i;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b extends e<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a.g<i> f3315b = new a.g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a.AbstractC0083a<i, Object> f3316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final com.google.android.gms.common.api.a<Object> f3317d;

    static {
        c cVar = new c();
        f3316c = cVar;
        f3317d = new com.google.android.gms.common.api.a<>("SmsRetriever.API", cVar, f3315b);
    }

    public b(Context context) {
        super(context, (com.google.android.gms.common.api.a<a.d>) f3317d, (a.d) null, (m) new com.google.android.gms.common.api.internal.a());
    }

    public abstract g<Void> a();
}
