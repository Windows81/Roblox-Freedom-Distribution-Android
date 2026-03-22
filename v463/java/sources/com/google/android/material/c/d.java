package com.google.android.material.c;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.c.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface d extends c.a {
    void a();

    void b();

    int getCircularRevealScrimColor();

    C0109d getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(C0109d c0109d);

    /* JADX INFO: renamed from: com.google.android.material.c.d$d, reason: collision with other inner class name */
    public static class C0109d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f4914a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f4915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f4916c;

        private C0109d() {
        }

        public C0109d(float f, float f2, float f3) {
            this.f4914a = f;
            this.f4915b = f2;
            this.f4916c = f3;
        }

        public C0109d(C0109d c0109d) {
            this(c0109d.f4914a, c0109d.f4915b, c0109d.f4916c);
        }

        public void a(float f, float f2, float f3) {
            this.f4914a = f;
            this.f4915b = f2;
            this.f4916c = f3;
        }

        public void a(C0109d c0109d) {
            a(c0109d.f4914a, c0109d.f4915b, c0109d.f4916c);
        }

        public boolean a() {
            return this.f4916c == Float.MAX_VALUE;
        }
    }

    public static class b extends Property<d, C0109d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property<d, C0109d> f4912a = new b("circularReveal");

        private b(String str) {
            super(C0109d.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0109d get(d dVar) {
            return dVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, C0109d c0109d) {
            dVar.setRevealInfo(c0109d);
        }
    }

    public static class a implements TypeEvaluator<C0109d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TypeEvaluator<C0109d> f4910a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0109d f4911b = new C0109d();

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0109d evaluate(float f, C0109d c0109d, C0109d c0109d2) {
            this.f4911b.a(com.google.android.material.e.a.a(c0109d.f4914a, c0109d2.f4914a, f), com.google.android.material.e.a.a(c0109d.f4915b, c0109d2.f4915b, f), com.google.android.material.e.a.a(c0109d.f4916c, c0109d2.f4916c, f));
            return this.f4911b;
        }
    }

    public static class c extends Property<d, Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property<d, Integer> f4913a = new c("circularRevealScrimColor");

        private c(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(d dVar) {
            return Integer.valueOf(dVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Integer num) {
            dVar.setCircularRevealScrimColor(num.intValue());
        }
    }
}
