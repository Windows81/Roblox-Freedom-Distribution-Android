package androidx.k;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class h<T> extends Property<T, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Property<T, PointF> f1996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathMeasure f1997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f1998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f1999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PointF f2000e;
    private float f;

    h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f1999d = new float[2];
        this.f2000e = new PointF();
        this.f1996a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f1997b = pathMeasure;
        this.f1998c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t) {
        return Float.valueOf(this.f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f) {
        this.f = f.floatValue();
        this.f1997b.getPosTan(this.f1998c * f.floatValue(), this.f1999d, null);
        this.f2000e.x = this.f1999d[0];
        this.f2000e.y = this.f1999d[1];
        this.f1996a.set(t, this.f2000e);
    }
}
