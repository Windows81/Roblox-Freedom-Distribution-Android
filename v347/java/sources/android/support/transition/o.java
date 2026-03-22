package android.support.transition;

import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class o implements q {
    o() {
    }

    @Override // android.support.transition.q
    public PropertyValuesHolder a(Property<?, PointF> property, Path path) {
        return PropertyValuesHolder.ofFloat(new m(property, path), 0.0f, 1.0f);
    }
}
