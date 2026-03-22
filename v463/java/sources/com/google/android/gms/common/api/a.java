package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a<O extends d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AbstractC0083a<?, O> f3441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i<?, O> f3442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g<?> f3443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j<?> f3444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3445e;

    /* JADX INFO: renamed from: com.google.android.gms.common.api.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0083a<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, O o, f.b bVar, f.c cVar);
    }

    public interface b {
    }

    public static class c<C extends b> {
    }

    public interface d {

        /* JADX INFO: renamed from: com.google.android.gms.common.api.a$d$a, reason: collision with other inner class name */
        public interface InterfaceC0084a extends c, InterfaceC0085d {
            Account a();
        }

        public interface b extends c {
            GoogleSignInAccount a();
        }

        public interface c extends d {
        }

        /* JADX INFO: renamed from: com.google.android.gms.common.api.a$d$d, reason: collision with other inner class name */
        public interface InterfaceC0085d extends d {
        }

        public interface e extends c, InterfaceC0085d {
        }
    }

    public static abstract class e<T extends b, O> {
        public int a() {
            return Integer.MAX_VALUE;
        }

        public List<Scope> a(O o) {
            return Collections.emptyList();
        }
    }

    public interface f extends b {
        void a(d.InterfaceC0090d interfaceC0090d);

        void a(d.j jVar);

        void a(com.google.android.gms.common.internal.q qVar, Set<Scope> set);

        void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        boolean c();

        Intent d();

        int f();

        void g();

        boolean h();

        boolean i();

        boolean j();

        boolean k();

        IBinder l();

        String m();

        Feature[] n();
    }

    public static final class g<C extends f> extends c<C> {
    }

    public interface h<T extends IInterface> extends b {
        T a(IBinder iBinder);

        String a();

        void a(int i, T t);

        String b();
    }

    public static abstract class i<T extends h, O> extends e<T, O> {
    }

    public static final class j<C extends h> extends c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> a(String str, AbstractC0083a<C, O> abstractC0083a, g<C> gVar) {
        aa.a(abstractC0083a, "Cannot construct an Api with a null ClientBuilder");
        aa.a(gVar, "Cannot construct an Api with a null ClientKey");
        this.f3445e = str;
        this.f3441a = abstractC0083a;
        this.f3442b = null;
        this.f3443c = gVar;
        this.f3444d = null;
    }

    public final e<?, O> a() {
        return this.f3441a;
    }

    public final AbstractC0083a<?, O> b() {
        aa.a(this.f3441a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f3441a;
    }

    public final c<?> c() {
        g<?> gVar = this.f3443c;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    public final String d() {
        return this.f3445e;
    }
}
