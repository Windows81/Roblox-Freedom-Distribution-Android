package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bp;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.internal.cg;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.e;
import java.util.Collections;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e<O extends a.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.google.android.gms.common.api.internal.d f3448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f3450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final O f3451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cg<O> f3452e;
    private final Looper f;
    private final int g;
    private final f h;
    private final com.google.android.gms.common.api.internal.m i;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f3453a = new C0086a().a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.gms.common.api.internal.m f3454b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Looper f3455c;

        /* JADX INFO: renamed from: com.google.android.gms.common.api.e$a$a, reason: collision with other inner class name */
        public static class C0086a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private com.google.android.gms.common.api.internal.m f3456a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Looper f3457b;

            public C0086a a(Looper looper) {
                aa.a(looper, "Looper must not be null.");
                this.f3457b = looper;
                return this;
            }

            public C0086a a(com.google.android.gms.common.api.internal.m mVar) {
                aa.a(mVar, "StatusExceptionMapper must not be null.");
                this.f3456a = mVar;
                return this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public a a() {
                if (this.f3456a == null) {
                    this.f3456a = new com.google.android.gms.common.api.internal.a();
                }
                if (this.f3457b == null) {
                    this.f3457b = Looper.getMainLooper();
                }
                return new a(this.f3456a, this.f3457b);
            }
        }

        private a(com.google.android.gms.common.api.internal.m mVar, Account account, Looper looper) {
            this.f3454b = mVar;
            this.f3455c = looper;
        }
    }

    public e(Activity activity, com.google.android.gms.common.api.a<O> aVar, O o, a aVar2) {
        aa.a(activity, "Null activity is not permitted.");
        aa.a(aVar, "Api must not be null.");
        aa.a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f3449b = activity.getApplicationContext();
        this.f3450c = aVar;
        this.f3451d = o;
        this.f = aVar2.f3455c;
        this.f3452e = cg.a(this.f3450c, this.f3451d);
        this.h = new bg(this);
        com.google.android.gms.common.api.internal.d dVarA = com.google.android.gms.common.api.internal.d.a(this.f3449b);
        this.f3448a = dVarA;
        this.g = dVarA.c();
        this.i = aVar2.f3454b;
        com.google.android.gms.common.api.internal.u.a(activity, this.f3448a, (cg<?>) this.f3452e);
        this.f3448a.a((e<?>) this);
    }

    @Deprecated
    public e(Activity activity, com.google.android.gms.common.api.a<O> aVar, O o, com.google.android.gms.common.api.internal.m mVar) {
        this(activity, (com.google.android.gms.common.api.a) aVar, (a.d) o, new a.C0086a().a(mVar).a(activity.getMainLooper()).a());
    }

    protected e(Context context, com.google.android.gms.common.api.a<O> aVar, Looper looper) {
        aa.a(context, "Null context is not permitted.");
        aa.a(aVar, "Api must not be null.");
        aa.a(looper, "Looper must not be null.");
        this.f3449b = context.getApplicationContext();
        this.f3450c = aVar;
        this.f3451d = null;
        this.f = looper;
        this.f3452e = cg.a(aVar);
        this.h = new bg(this);
        com.google.android.gms.common.api.internal.d dVarA = com.google.android.gms.common.api.internal.d.a(this.f3449b);
        this.f3448a = dVarA;
        this.g = dVarA.c();
        this.i = new com.google.android.gms.common.api.internal.a();
    }

    public e(Context context, com.google.android.gms.common.api.a<O> aVar, O o, a aVar2) {
        aa.a(context, "Null context is not permitted.");
        aa.a(aVar, "Api must not be null.");
        aa.a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f3449b = context.getApplicationContext();
        this.f3450c = aVar;
        this.f3451d = o;
        this.f = aVar2.f3455c;
        this.f3452e = cg.a(this.f3450c, this.f3451d);
        this.h = new bg(this);
        com.google.android.gms.common.api.internal.d dVarA = com.google.android.gms.common.api.internal.d.a(this.f3449b);
        this.f3448a = dVarA;
        this.g = dVarA.c();
        this.i = aVar2.f3454b;
        this.f3448a.a((e<?>) this);
    }

    @Deprecated
    public e(Context context, com.google.android.gms.common.api.a<O> aVar, O o, com.google.android.gms.common.api.internal.m mVar) {
        this(context, aVar, o, new a.C0086a().a(mVar).a());
    }

    private final <A extends a.b, T extends c.a<? extends l, A>> T a(int i, T t) {
        t.h();
        this.f3448a.a(this, i, t);
        return t;
    }

    private final <TResult, A extends a.b> com.google.android.gms.f.g<TResult> a(int i, com.google.android.gms.common.api.internal.o<A, TResult> oVar) {
        com.google.android.gms.f.h hVar = new com.google.android.gms.f.h();
        this.f3448a.a(this, i, oVar, hVar, this.i);
        return hVar.a();
    }

    public a.f a(Looper looper, d.a<O> aVar) {
        return this.f3450c.b().a(this.f3449b, looper, h().a(), this.f3451d, aVar, aVar);
    }

    public bp a(Context context, Handler handler) {
        return new bp(context, handler, h().a());
    }

    public <A extends a.b, T extends c.a<? extends l, A>> T a(T t) {
        return (T) a(0, t);
    }

    public <TResult, A extends a.b> com.google.android.gms.f.g<TResult> a(com.google.android.gms.common.api.internal.o<A, TResult> oVar) {
        return a(1, oVar);
    }

    public final com.google.android.gms.common.api.a<O> b() {
        return this.f3450c;
    }

    public <A extends a.b, T extends c.a<? extends l, A>> T b(T t) {
        return (T) a(1, t);
    }

    public final cg<O> c() {
        return this.f3452e;
    }

    public final int d() {
        return this.g;
    }

    public f e() {
        return this.h;
    }

    public Looper f() {
        return this.f;
    }

    public Context g() {
        return this.f3449b;
    }

    protected e.a h() {
        Account accountA;
        GoogleSignInAccount googleSignInAccountA;
        GoogleSignInAccount googleSignInAccountA2;
        e.a aVar = new e.a();
        O o = this.f3451d;
        if (!(o instanceof a.d.b) || (googleSignInAccountA2 = ((a.d.b) o).a()) == null) {
            O o2 = this.f3451d;
            accountA = o2 instanceof a.d.InterfaceC0084a ? ((a.d.InterfaceC0084a) o2).a() : null;
        } else {
            accountA = googleSignInAccountA2.d();
        }
        e.a aVarA = aVar.a(accountA);
        O o3 = this.f3451d;
        return aVarA.a((!(o3 instanceof a.d.b) || (googleSignInAccountA = ((a.d.b) o3).a()) == null) ? Collections.emptySet() : googleSignInAccountA.l()).b(this.f3449b.getClass().getName()).a(this.f3449b.getPackageName());
    }
}
