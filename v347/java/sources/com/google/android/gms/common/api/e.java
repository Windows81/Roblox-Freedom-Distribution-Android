package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.internal.ag;
import com.google.android.gms.common.api.internal.b;
import com.google.android.gms.common.api.internal.x;
import com.google.android.gms.common.internal.e;
import java.util.Collections;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e<O extends a.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a<O> f3329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final O f3330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ag<O> f3331d;
    private final int e;

    public a.f a(Looper looper, b.a<O> aVar) {
        return this.f3329b.a().a(this.f3328a, looper, c().a(), this.f3330c, aVar, aVar);
    }

    public final ag<O> a() {
        return this.f3331d;
    }

    public x a(Context context, Handler handler) {
        return new x(context, handler, c().a());
    }

    public final int b() {
        return this.e;
    }

    protected e.a c() {
        GoogleSignInAccount googleSignInAccountA;
        GoogleSignInAccount googleSignInAccountA2;
        return new e.a().a((!(this.f3330c instanceof a.d.b) || (googleSignInAccountA2 = ((a.d.b) this.f3330c).a()) == null) ? this.f3330c instanceof a.d.InterfaceC0069a ? ((a.d.InterfaceC0069a) this.f3330c).a() : null : googleSignInAccountA2.d()).a((!(this.f3330c instanceof a.d.b) || (googleSignInAccountA = ((a.d.b) this.f3330c).a()) == null) ? Collections.emptySet() : googleSignInAccountA.l()).b(this.f3328a.getClass().getName()).a(this.f3328a.getPackageName());
    }
}
