package com.google.firebase.components;

import com.google.android.gms.common.internal.aa;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<Class<? super T>> f5136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<f> f5137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d<T> f5139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<Class<?>> f5140e;

    static final /* synthetic */ Object a(Object obj) {
        return obj;
    }

    /* synthetic */ a(Set set, Set set2, int i, d dVar, Set set3, byte b2) {
        this(set, set2, i, dVar, set3);
    }

    private a(Set<Class<? super T>> set, Set<f> set2, int i, d<T> dVar, Set<Class<?>> set3) {
        this.f5136a = Collections.unmodifiableSet(set);
        this.f5137b = Collections.unmodifiableSet(set2);
        this.f5138c = i;
        this.f5139d = dVar;
        this.f5140e = Collections.unmodifiableSet(set3);
    }

    public final Set<Class<? super T>> a() {
        return this.f5136a;
    }

    public final Set<f> b() {
        return this.f5137b;
    }

    public final d<T> c() {
        return this.f5139d;
    }

    public final Set<Class<?>> d() {
        return this.f5140e;
    }

    public final boolean e() {
        return this.f5138c == 1;
    }

    public final boolean f() {
        return this.f5138c == 2;
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f5136a.toArray()) + ">{" + this.f5138c + ", deps=" + Arrays.toString(this.f5137b.toArray()) + "}";
    }

    public static <T> C0114a<T> a(Class<T> cls) {
        return new C0114a<>(cls, new Class[0], (byte) 0);
    }

    public static <T> C0114a<T> a(Class<T> cls, Class<? super T>... clsArr) {
        return new C0114a<>(cls, clsArr, (byte) 0);
    }

    @SafeVarargs
    public static <T> a<T> a(final T t, Class<T> cls, Class<? super T>... clsArr) {
        return a(cls, clsArr).a(new d(t) { // from class: com.google.firebase.components.j

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Object f5150a;

            {
                this.f5150a = t;
            }

            @Override // com.google.firebase.components.d
            public final Object a(b bVar) {
                return a.a(this.f5150a);
            }
        }).b();
    }

    /* JADX INFO: renamed from: com.google.firebase.components.a$a, reason: collision with other inner class name */
    public static class C0114a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set<Class<? super T>> f5141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<f> f5142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f5143c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d<T> f5144d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Set<Class<?>> f5145e;

        /* synthetic */ C0114a(Class cls, Class[] clsArr, byte b2) {
            this(cls, clsArr);
        }

        private C0114a(Class<T> cls, Class<? super T>... clsArr) {
            this.f5141a = new HashSet();
            this.f5142b = new HashSet();
            this.f5143c = 0;
            this.f5145e = new HashSet();
            aa.a(cls, "Null interface");
            this.f5141a.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                aa.a(cls2, "Null interface");
            }
            Collections.addAll(this.f5141a, clsArr);
        }

        public C0114a<T> a(f fVar) {
            aa.a(fVar, "Null dependency");
            aa.b(!this.f5141a.contains(fVar.a()), "Components are not allowed to depend on interfaces they themselves provide.");
            this.f5142b.add(fVar);
            return this;
        }

        public C0114a<T> a() {
            return a(1);
        }

        private C0114a<T> a(int i) {
            aa.a(this.f5143c == 0, "Instantiation type has already been set.");
            this.f5143c = i;
            return this;
        }

        public C0114a<T> a(d<T> dVar) {
            this.f5144d = (d) aa.a(dVar, "Null factory");
            return this;
        }

        public a<T> b() {
            aa.a(this.f5144d != null, "Missing required property: factory.");
            return new a<>(new HashSet(this.f5141a), new HashSet(this.f5142b), this.f5143c, this.f5144d, this.f5145e, (byte) 0);
        }
    }
}
