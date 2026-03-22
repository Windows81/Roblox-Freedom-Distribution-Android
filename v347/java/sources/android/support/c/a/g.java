package android.support.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float[] f215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f216b;

    public g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    public g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, a.l);
        a(typedArrayA, xmlPullParser);
        typedArrayA.recycle();
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (android.support.v4.a.a.c.a(xmlPullParser, "pathData")) {
            String strA = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "pathData", 4);
            Path pathA = android.support.v4.b.b.a(strA);
            if (pathA == null) {
                throw new InflateException("The path is null, which is created from " + strA);
            }
            a(pathA);
            return;
        }
        if (!android.support.v4.a.a.c.a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!android.support.v4.a.a.c.a(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float fA = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float fA2 = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean zA = android.support.v4.a.a.c.a(xmlPullParser, "controlX2");
        if (zA != android.support.v4.a.a.c.a(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (!zA) {
            a(fA, fA2);
        } else {
            a(fA, fA2, android.support.v4.a.a.c.a(typedArray, xmlPullParser, "controlX2", 2, 0.0f), android.support.v4.a.a.c.a(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        }
    }

    private void a(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        a(path);
    }

    private void a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        a(path);
    }

    private void a(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f215a = new float[iMin];
        this.f216b = new float[iMin];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < iMin; i2++) {
            pathMeasure.getPosTan((i2 * length) / (iMin - 1), fArr, null);
            this.f215a[i2] = fArr[0];
            this.f216b[i2] = fArr[1];
        }
        if (Math.abs(this.f215a[0]) > 1.0E-5d || Math.abs(this.f216b[0]) > 1.0E-5d || Math.abs(this.f215a[iMin - 1] - 1.0f) > 1.0E-5d || Math.abs(this.f216b[iMin - 1] - 1.0f) > 1.0E-5d) {
            throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1) start: " + this.f215a[0] + "," + this.f216b[0] + " end:" + this.f215a[iMin - 1] + "," + this.f216b[iMin - 1]);
        }
        float f = 0.0f;
        int i3 = 0;
        while (i < iMin) {
            int i4 = i3 + 1;
            float f2 = this.f215a[i3];
            if (f2 < f) {
                throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
            }
            this.f215a[i] = f2;
            i++;
            f = f2;
            i3 = i4;
        }
        if (pathMeasure.nextContour()) {
            throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i;
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i2 = 0;
        int length = this.f215a.length - 1;
        while (length - i2 > 1) {
            int i3 = (i2 + length) / 2;
            if (f < this.f215a[i3]) {
                i = i2;
            } else {
                int i4 = length;
                i = i3;
                i3 = i4;
            }
            i2 = i;
            length = i3;
        }
        float f2 = this.f215a[length] - this.f215a[i2];
        if (f2 == 0.0f) {
            return this.f216b[i2];
        }
        float f3 = (f - this.f215a[i2]) / f2;
        float f4 = this.f216b[i2];
        return (f3 * (this.f216b[length] - f4)) + f4;
    }
}
