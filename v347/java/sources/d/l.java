package d;

import b.ab;
import b.ac;
import b.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class l<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ab f8140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f8141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ac f8142c;

    public static <T> l<T> a(T t, ab abVar) {
        if (abVar == null) {
            throw new NullPointerException("rawResponse == null");
        }
        if (!abVar.c()) {
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        return new l<>(abVar, t, null);
    }

    public static <T> l<T> a(ac acVar, ab abVar) {
        if (acVar == null) {
            throw new NullPointerException("body == null");
        }
        if (abVar == null) {
            throw new NullPointerException("rawResponse == null");
        }
        if (abVar.c()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new l<>(abVar, null, acVar);
    }

    private l(ab abVar, T t, ac acVar) {
        this.f8140a = abVar;
        this.f8141b = t;
        this.f8142c = acVar;
    }

    public int a() {
        return this.f8140a.b();
    }

    public r b() {
        return this.f8140a.f();
    }

    public boolean c() {
        return this.f8140a.c();
    }

    public T d() {
        return this.f8141b;
    }

    public ac e() {
        return this.f8142c;
    }
}
