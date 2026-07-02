package com.google.android.gms.signin;

import android.os.Bundle;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.signin.internal.g;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a.g<g> f6035a = new a.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a.g<g> f6036b = new a.g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a.AbstractC0068a<g, c> f6037c = new d();
    private static final a.AbstractC0068a<g, C0085a> h = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Scope f6038d = new Scope("profile");
    public static final Scope e = new Scope("email");
    public static final com.google.android.gms.common.api.a<c> f = new com.google.android.gms.common.api.a<>("SignIn.API", f6037c, f6035a);
    public static final com.google.android.gms.common.api.a<C0085a> g = new com.google.android.gms.common.api.a<>("SignIn.INTERNAL_API", h, f6036b);

    /* JADX INFO: renamed from: com.google.android.gms.signin.a$a, reason: collision with other inner class name */
    public static class C0085a implements a.d.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Bundle f6039a;

        public Bundle a() {
            return this.f6039a;
        }
    }
}
