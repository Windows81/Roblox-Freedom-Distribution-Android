package com.google.android.gms.signin;

import android.os.Bundle;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.signin.internal.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a.g<g> f4743a = new a.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a.g<g> f4744b = new a.g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a.AbstractC0083a<g, c> f4745c = new d();
    private static final a.AbstractC0083a<g, C0104a> h = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Scope f4746d = new Scope("profile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Scope f4747e = new Scope("email");
    public static final com.google.android.gms.common.api.a<c> f = new com.google.android.gms.common.api.a<>("SignIn.API", f4745c, f4743a);
    public static final com.google.android.gms.common.api.a<C0104a> g = new com.google.android.gms.common.api.a<>("SignIn.INTERNAL_API", h, f4744b);

    /* JADX INFO: renamed from: com.google.android.gms.signin.a$a, reason: collision with other inner class name */
    public static class C0104a implements a.d.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Bundle f4748a;

        public Bundle a() {
            return this.f4748a;
        }
    }
}
