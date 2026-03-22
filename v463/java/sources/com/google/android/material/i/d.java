package com.google.android.material.i;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f4967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f4969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f4970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<c> f4971e;

    public static abstract class c {
        protected final Matrix g = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    public void a(float f, float f2) {
        this.f4967a = f;
        this.f4968b = f2;
        this.f4969c = f;
        this.f4970d = f2;
        this.f4971e.clear();
    }

    public void b(float f, float f2) {
        b bVar = new b();
        bVar.f4977a = f;
        bVar.f4978b = f2;
        this.f4971e.add(bVar);
        this.f4969c = f;
        this.f4970d = f2;
    }

    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        a aVar = new a(f, f2, f3, f4);
        aVar.f4976e = f5;
        aVar.f = f6;
        this.f4971e.add(aVar);
        double d2 = f5 + f6;
        this.f4969c = ((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d2))));
        this.f4970d = ((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d2))));
    }

    public void a(Matrix matrix, Path path) {
        int size = this.f4971e.size();
        for (int i = 0; i < size; i++) {
            this.f4971e.get(i).a(matrix, path);
        }
    }

    public static class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f4977a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f4978b;

        @Override // com.google.android.material.i.d.c
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f4977a, this.f4978b);
            path.transform(matrix);
        }
    }

    public static class a extends c {
        private static final RectF h = new RectF();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f4972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f4973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f4974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f4975d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f4976e;
        public float f;

        public a(float f, float f2, float f3, float f4) {
            this.f4972a = f;
            this.f4973b = f2;
            this.f4974c = f3;
            this.f4975d = f4;
        }

        @Override // com.google.android.material.i.d.c
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.g;
            matrix.invert(matrix2);
            path.transform(matrix2);
            h.set(this.f4972a, this.f4973b, this.f4974c, this.f4975d);
            path.arcTo(h, this.f4976e, this.f, false);
            path.transform(matrix);
        }
    }
}
