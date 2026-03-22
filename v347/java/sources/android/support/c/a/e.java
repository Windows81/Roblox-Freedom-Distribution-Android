package android.support.c.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.support.v4.b.b;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {
    public static Animator a(Context context, int i) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 24) {
            return AnimatorInflater.loadAnimator(context, i);
        }
        return a(context, context.getResources(), context.getTheme(), i);
    }

    public static Animator a(Context context, Resources resources, Resources.Theme theme, int i) throws Resources.NotFoundException {
        return a(context, resources, theme, i, 1.0f);
    }

    public static Animator a(Context context, Resources resources, Resources.Theme theme, int i, float f) throws Resources.NotFoundException {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i);
                    return a(context, resources, theme, animation, f);
                } catch (IOException e) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    notFoundException.initCause(e);
                    throw notFoundException;
                }
            } catch (XmlPullParserException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }

    private static class a implements TypeEvaluator<b.C0017b[]> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b.C0017b[] f213a;

        private a() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b.C0017b[] evaluate(float f, b.C0017b[] c0017bArr, b.C0017b[] c0017bArr2) {
            if (!android.support.v4.b.b.a(c0017bArr, c0017bArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (this.f213a == null || !android.support.v4.b.b.a(this.f213a, c0017bArr)) {
                this.f213a = android.support.v4.b.b.a(c0017bArr);
            }
            for (int i = 0; i < c0017bArr.length; i++) {
                this.f213a[i].a(c0017bArr[i], c0017bArr2[i], f);
            }
            return this.f213a;
        }
    }

    private static PropertyValuesHolder a(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolderOfInt;
        int color;
        int color2;
        int color3;
        float dimension;
        float dimension2;
        float dimension3;
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        int i5 = z2 ? typedValuePeekValue2.type : 0;
        if (i == 4) {
            if ((z && a(i4)) || (z2 && a(i5))) {
                i = 3;
            } else {
                i = 0;
            }
        }
        boolean z3 = i == 0;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            b.C0017b[] c0017bArrB = android.support.v4.b.b.b(string);
            b.C0017b[] c0017bArrB2 = android.support.v4.b.b.b(string2);
            if (c0017bArrB != null || c0017bArrB2 != null) {
                if (c0017bArrB != null) {
                    a aVar = new a();
                    if (c0017bArrB2 == null) {
                        return PropertyValuesHolder.ofObject(str, aVar, c0017bArrB);
                    }
                    if (android.support.v4.b.b.a(c0017bArrB, c0017bArrB2)) {
                        return PropertyValuesHolder.ofObject(str, aVar, c0017bArrB, c0017bArrB2);
                    }
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                if (c0017bArrB2 != null) {
                    return PropertyValuesHolder.ofObject(str, new a(), c0017bArrB2);
                }
            }
            return null;
        }
        f fVarA = null;
        if (i == 3) {
            fVarA = f.a();
        }
        if (z3) {
            if (z) {
                if (i4 == 5) {
                    dimension2 = typedArray.getDimension(i2, 0.0f);
                } else {
                    dimension2 = typedArray.getFloat(i2, 0.0f);
                }
                if (z2) {
                    if (i5 == 5) {
                        dimension3 = typedArray.getDimension(i3, 0.0f);
                    } else {
                        dimension3 = typedArray.getFloat(i3, 0.0f);
                    }
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension2, dimension3);
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension2);
                }
            } else {
                if (i5 == 5) {
                    dimension = typedArray.getDimension(i3, 0.0f);
                } else {
                    dimension = typedArray.getFloat(i3, 0.0f);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension);
            }
        } else if (z) {
            if (i4 == 5) {
                color2 = (int) typedArray.getDimension(i2, 0.0f);
            } else if (a(i4)) {
                color2 = typedArray.getColor(i2, 0);
            } else {
                color2 = typedArray.getInt(i2, 0);
            }
            if (z2) {
                if (i5 == 5) {
                    color3 = (int) typedArray.getDimension(i3, 0.0f);
                } else if (a(i5)) {
                    color3 = typedArray.getColor(i3, 0);
                } else {
                    color3 = typedArray.getInt(i3, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        } else if (!z2) {
            propertyValuesHolderOfInt = null;
        } else {
            if (i5 == 5) {
                color = (int) typedArray.getDimension(i3, 0.0f);
            } else if (a(i5)) {
                color = typedArray.getColor(i3, 0);
            } else {
                color = typedArray.getInt(i3, 0);
            }
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
        }
        if (propertyValuesHolderOfInt != null && fVarA != null) {
            propertyValuesHolderOfInt.setEvaluator(fVarA);
            return propertyValuesHolderOfInt;
        }
        return propertyValuesHolderOfInt;
    }

    private static void a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long jA = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "duration", 1, 300);
        long jA2 = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "startOffset", 2, 0);
        int iA = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "valueType", 7, 4);
        if (android.support.v4.a.a.c.a(xmlPullParser, "valueFrom") && android.support.v4.a.a.c.a(xmlPullParser, "valueTo")) {
            if (iA == 4) {
                iA = a(typedArray, 5, 6);
            }
            PropertyValuesHolder propertyValuesHolderA = a(typedArray, iA, 5, 6, "");
            if (propertyValuesHolderA != null) {
                valueAnimator.setValues(propertyValuesHolderA);
            }
        }
        valueAnimator.setDuration(jA);
        valueAnimator.setStartDelay(jA2);
        valueAnimator.setRepeatCount(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            a(valueAnimator, typedArray2, iA, f, xmlPullParser);
        }
    }

    private static void a(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String strA = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "pathData", 1);
        if (strA != null) {
            String strA2 = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "propertyXName", 2);
            String strA3 = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "propertyYName", 3);
            if (i == 2 || i == 4) {
            }
            if (strA2 == null && strA3 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            a(android.support.v4.b.b.a(strA), objectAnimator, 0.5f * f, strA2, strA3);
            return;
        }
        objectAnimator.setPropertyName(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "propertyName", 0));
    }

    private static void a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        int i;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = 0.0f;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        int i2 = 0;
        float f2 = length / (iMin - 1);
        int i3 = 0;
        float fFloatValue = 0.0f;
        while (i3 < iMin) {
            pathMeasure2.getPosTan(fFloatValue, fArr3, null);
            pathMeasure2.getPosTan(fFloatValue, fArr3, null);
            fArr[i3] = fArr3[0];
            fArr2[i3] = fArr3[1];
            float f3 = fFloatValue + f2;
            if (i2 + 1 >= arrayList.size() || f3 <= ((Float) arrayList.get(i2 + 1)).floatValue()) {
                fFloatValue = f3;
                i = i2;
            } else {
                fFloatValue = f3 - ((Float) arrayList.get(i2 + 1)).floatValue();
                i = i2 + 1;
                pathMeasure2.nextContour();
            }
            i3++;
            i2 = i;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = null;
        if (str != null) {
            propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, fArr);
        }
        if (str2 != null) {
            propertyValuesHolderOfFloat2 = PropertyValuesHolder.ofFloat(str2, fArr2);
        }
        if (propertyValuesHolderOfFloat == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat2);
        } else if (propertyValuesHolderOfFloat2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        }
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) throws XmlPullParserException, IOException {
        return a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e5, code lost:
    
        if (r22 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e7, code lost:
    
        if (r13 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e9, code lost:
    
        r8 = new android.animation.Animator[r13.size()];
        r9 = r13.iterator();
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f9, code lost:
    
        if (r9.hasNext() == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00fb, code lost:
    
        r8[r6] = (android.animation.Animator) r9.next();
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0107, code lost:
    
        if (r23 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0109, code lost:
    
        r22.playTogether(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x010e, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010f, code lost:
    
        r22.playSequentially(r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.animation.Animator a(android.content.Context r17, android.content.res.Resources r18, android.content.res.Resources.Theme r19, org.xmlpull.v1.XmlPullParser r20, android.util.AttributeSet r21, android.animation.AnimatorSet r22, int r23, float r24) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.c.a.e.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    private static PropertyValuesHolder[] a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.i);
                    String strA = android.support.v4.a.a.c.a(typedArrayA, xmlPullParser, "propertyName", 3);
                    int iA = android.support.v4.a.a.c.a(typedArrayA, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder propertyValuesHolderA = a(context, resources, theme, xmlPullParser, strA, iA);
                    PropertyValuesHolder propertyValuesHolderA2 = propertyValuesHolderA == null ? a(typedArrayA, iA, 0, 1, strA) : propertyValuesHolderA;
                    if (propertyValuesHolderA2 != null) {
                        arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                        arrayList.add(propertyValuesHolderA2);
                    } else {
                        arrayList = arrayList2;
                    }
                    typedArrayA.recycle();
                } else {
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
                arrayList2 = arrayList;
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        int size = arrayList2.size();
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[size];
        for (int i = 0; i < size; i++) {
            propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList2.get(i);
        }
        return propertyValuesHolderArr;
    }

    private static int a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        int i = 0;
        TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.j);
        TypedValue typedValueB = android.support.v4.a.a.c.b(typedArrayA, xmlPullParser, "value", 0);
        if ((typedValueB != null) && a(typedValueB.type)) {
            i = 3;
        }
        typedArrayA.recycle();
        return i;
    }

    private static int a(TypedArray typedArray, int i, int i2) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        boolean z = typedValuePeekValue != null;
        int i3 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i2);
        boolean z2 = typedValuePeekValue2 != null;
        return ((z && a(i3)) || (z2 && a(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    private static PropertyValuesHolder a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
        int size;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int iA = i;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (iA == 4) {
                    iA = a(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe keyframeA = a(context, resources, theme, Xml.asAttributeSet(xmlPullParser), iA, xmlPullParser);
                if (keyframeA != null) {
                    arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList.add(keyframeA);
                } else {
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
            } else {
                arrayList = arrayList2;
            }
            arrayList2 = arrayList;
        }
        if (arrayList2 == null || (size = arrayList2.size()) <= 0) {
            return null;
        }
        Keyframe keyframe = (Keyframe) arrayList2.get(0);
        Keyframe keyframe2 = (Keyframe) arrayList2.get(size - 1);
        float fraction = keyframe2.getFraction();
        if (fraction >= 1.0f) {
            i2 = size;
        } else if (fraction < 0.0f) {
            keyframe2.setFraction(1.0f);
            i2 = size;
        } else {
            arrayList2.add(arrayList2.size(), a(keyframe2, 1.0f));
            i2 = size + 1;
        }
        float fraction2 = keyframe.getFraction();
        if (fraction2 != 0.0f) {
            if (fraction2 < 0.0f) {
                keyframe.setFraction(0.0f);
            } else {
                arrayList2.add(0, a(keyframe, 0.0f));
                i2++;
            }
        }
        Keyframe[] keyframeArr = new Keyframe[i2];
        arrayList2.toArray(keyframeArr);
        for (int i3 = 0; i3 < i2; i3++) {
            Keyframe keyframe3 = keyframeArr[i3];
            if (keyframe3.getFraction() < 0.0f) {
                if (i3 == 0) {
                    keyframe3.setFraction(0.0f);
                } else if (i3 == i2 - 1) {
                    keyframe3.setFraction(1.0f);
                } else {
                    int i4 = i3;
                    for (int i5 = i3 + 1; i5 < i2 - 1 && keyframeArr[i5].getFraction() < 0.0f; i5++) {
                        i4 = i5;
                    }
                    a(keyframeArr, keyframeArr[i4 + 1].getFraction() - keyframeArr[i3 - 1].getFraction(), i3, i4);
                }
            }
        }
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
        if (iA == 3) {
            propertyValuesHolderOfKeyframe.setEvaluator(f.a());
            return propertyValuesHolderOfKeyframe;
        }
        return propertyValuesHolderOfKeyframe;
    }

    private static Keyframe a(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    private static void a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    private static Keyframe a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.j);
        Keyframe keyframeOfFloat = null;
        float fA = android.support.v4.a.a.c.a(typedArrayA, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValueB = android.support.v4.a.a.c.b(typedArrayA, xmlPullParser, "value", 0);
        boolean z = typedValueB != null;
        if (i == 4) {
            i = (z && a(typedValueB.type)) ? 3 : 0;
        }
        if (z) {
            switch (i) {
                case 0:
                    keyframeOfFloat = Keyframe.ofFloat(fA, android.support.v4.a.a.c.a(typedArrayA, xmlPullParser, "value", 0, 0.0f));
                    break;
                case 1:
                case 3:
                    keyframeOfFloat = Keyframe.ofInt(fA, android.support.v4.a.a.c.a(typedArrayA, xmlPullParser, "value", 0, 0));
                    break;
            }
        } else {
            keyframeOfFloat = i == 0 ? Keyframe.ofFloat(fA) : Keyframe.ofInt(fA);
        }
        int iC = android.support.v4.a.a.c.c(typedArrayA, xmlPullParser, "interpolator", 1, 0);
        if (iC > 0) {
            keyframeOfFloat.setInterpolator(d.a(context, iC));
        }
        typedArrayA.recycle();
        return keyframeOfFloat;
    }

    private static ObjectAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    private static ValueAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.g);
        TypedArray typedArrayA2 = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        a(valueAnimator, typedArrayA, typedArrayA2, f, xmlPullParser);
        int iC = android.support.v4.a.a.c.c(typedArrayA, xmlPullParser, "interpolator", 0, 0);
        if (iC > 0) {
            valueAnimator.setInterpolator(d.a(context, iC));
        }
        typedArrayA.recycle();
        if (typedArrayA2 != null) {
            typedArrayA2.recycle();
        }
        return valueAnimator;
    }

    private static boolean a(int i) {
        return i >= 28 && i <= 31;
    }
}
