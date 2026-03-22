package android.support.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class m<T> extends Property<T, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Property<T, PointF> f546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathMeasure f547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f549d;
    private final PointF e;
    private float f;

    m(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f549d = new float[2];
        this.e = new PointF();
        this.f546a = property;
        this.f547b = new PathMeasure(path, false);
        this.f548c = this.f547b.getLength();
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
        this.f547b.getPosTan(this.f548c * f.floatValue(), this.f549d, null);
        this.e.x = this.f549d[0];
        this.e.y = this.f549d[1];
        this.f546a.set(t, this.e);
    }
}
