package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.w;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a<O extends d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AbstractC0068a<?, O> f3322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i<?, O> f3323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g<?> f3324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j<?> f3325d;
    private final String e;

    /* JADX INFO: renamed from: com.google.android.gms.common.api.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0068a<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, O o, f.a aVar, f.b bVar);
    }

    public interface b {
    }

    public static class c<C extends b> {
    }

    public interface d {

        /* JADX INFO: renamed from: com.google.android.gms.common.api.a$d$a, reason: collision with other inner class name */
        public interface InterfaceC0069a extends c, InterfaceC0070d {
            Account a();
        }

        public interface b extends c {
            GoogleSignInAccount a();
        }

        public interface c extends d {
        }

        /* JADX INFO: renamed from: com.google.android.gms.common.api.a$d$d, reason: collision with other inner class name */
        public interface InterfaceC0070d extends d {
        }

        public interface e extends c, InterfaceC0070d {
        }
    }

    public static abstract class e<T extends b, O> {
    }

    public interface f extends b {
        void a();

        void a(d.InterfaceC0074d interfaceC0074d);

        void a(d.j jVar);

        void a(o oVar, Set<Scope> set);

        boolean b();

        boolean c();

        boolean d();

        boolean e();

        String f();

        int g();

        Feature[] h();
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
    public <C extends f> a(String str, AbstractC0068a<C, O> abstractC0068a, g<C> gVar) {
        w.a(abstractC0068a, "Cannot construct an Api with a null ClientBuilder");
        w.a(gVar, "Cannot construct an Api with a null ClientKey");
        this.e = str;
        this.f3322a = abstractC0068a;
        this.f3323b = null;
        this.f3324c = gVar;
        this.f3325d = null;
    }

    public final AbstractC0068a<?, O> a() {
        w.a(this.f3322a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f3322a;
    }

    public final String b() {
        return this.e;
    }
}
