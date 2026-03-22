package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.g;
import com.google.android.gms.auth.api.signin.internal.h;
import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.auth.k;
import com.google.android.gms.internal.auth.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a.g<k> f3304a = new a.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a.g<h> f3305b = new a.g<>();
    private static final a.AbstractC0083a<k, C0077a> i = new b();
    private static final a.AbstractC0083a<h, GoogleSignInOptions> j = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<f> f3306c = d.f3369a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<C0077a> f3307d = new com.google.android.gms.common.api.a<>("Auth.CREDENTIALS_API", i, f3304a);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.google.android.gms.common.api.a<GoogleSignInOptions> f3308e = new com.google.android.gms.common.api.a<>("Auth.GOOGLE_SIGN_IN_API", j, f3305b);
    public static final com.google.android.gms.auth.api.b.a f = new u();
    public static final com.google.android.gms.auth.api.credentials.d g = new com.google.android.gms.internal.auth.c();
    public static final com.google.android.gms.auth.api.signin.b h = new g();

    /* JADX INFO: renamed from: com.google.android.gms.auth.api.a$a, reason: collision with other inner class name */
    @Deprecated
    public static class C0077a implements a.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final C0077a f3309a = new C0078a().a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3310b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final PasswordSpecification f3311c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f3312d;

        /* JADX INFO: renamed from: com.google.android.gms.auth.api.a$a$a, reason: collision with other inner class name */
        @Deprecated
        public static class C0078a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            protected PasswordSpecification f3313a = PasswordSpecification.f3358a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            protected Boolean f3314b = false;

            public C0077a a() {
                return new C0077a(this);
            }
        }

        public C0077a(C0078a c0078a) {
            this.f3311c = c0078a.f3313a;
            this.f3312d = c0078a.f3314b.booleanValue();
        }

        public final PasswordSpecification a() {
            return this.f3311c;
        }

        public final Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putParcelable("password_specification", this.f3311c);
            bundle.putBoolean("force_save_dialog", this.f3312d);
            return bundle;
        }
    }
}
