package e;

import c.ac;
import c.ad;
import c.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ac f7888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f7889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ad f7890c;

    public static <T> l<T> a(T t, ac acVar) {
        if (acVar == null) {
            throw new NullPointerException("rawResponse == null");
        }
        if (!acVar.c()) {
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        return new l<>(acVar, t, null);
    }

    public static <T> l<T> a(ad adVar, ac acVar) {
        if (adVar == null) {
            throw new NullPointerException("body == null");
        }
        if (acVar == null) {
            throw new NullPointerException("rawResponse == null");
        }
        if (acVar.c()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new l<>(acVar, null, adVar);
    }

    private l(ac acVar, T t, ad adVar) {
        this.f7888a = acVar;
        this.f7889b = t;
        this.f7890c = adVar;
    }

    public int a() {
        return this.f7888a.b();
    }

    public String b() {
        return this.f7888a.d();
    }

    public s c() {
        return this.f7888a.f();
    }

    public boolean d() {
        return this.f7888a.c();
    }

    public T e() {
        return this.f7889b;
    }

    public ad f() {
        return this.f7890c;
    }
}
