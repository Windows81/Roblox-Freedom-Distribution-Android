package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.support.v7.a.a;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Hashtable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final RectF f1680a = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Hashtable<String, Method> f1681b = new Hashtable<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1682c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1683d = false;
    private float e = -1.0f;
    private float f = -1.0f;
    private float g = -1.0f;
    private int[] h = new int[0];
    private boolean i = false;
    private TextPaint j;
    private final TextView k;
    private final Context l;

    m(TextView textView) {
        this.k = textView;
        this.l = this.k.getContext();
    }

    void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.l.obtainStyledAttributes(attributeSet, a.j.AppCompatTextView, i, 0);
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeTextType)) {
            this.f1682c = typedArrayObtainStyledAttributes.getInt(a.j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(a.j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(a.j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(a.j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(a.j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            a(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (k()) {
            if (this.f1682c == 1) {
                if (!this.i) {
                    DisplayMetrics displayMetrics = this.l.getResources().getDisplayMetrics();
                    if (dimension2 == -1.0f) {
                        dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (dimension3 == -1.0f) {
                        dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (dimension == -1.0f) {
                        dimension = 1.0f;
                    }
                    a(dimension2, dimension3, dimension);
                }
                i();
                return;
            }
            return;
        }
        this.f1682c = 0;
    }

    void a(int i) {
        if (k()) {
            switch (i) {
                case 0:
                    j();
                    return;
                case 1:
                    DisplayMetrics displayMetrics = this.l.getResources().getDisplayMetrics();
                    a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (i()) {
                        f();
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
        }
    }

    void a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (k()) {
            DisplayMetrics displayMetrics = this.l.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (i()) {
                f();
            }
        }
    }

    void a(int[] iArr, int i) throws IllegalArgumentException {
        if (k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.l.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.h = a(iArrCopyOf);
                if (!h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.i = false;
            }
            if (i()) {
                f();
            }
        }
    }

    int a() {
        return this.f1682c;
    }

    int b() {
        return Math.round(this.e);
    }

    int c() {
        return Math.round(this.f);
    }

    int d() {
        return Math.round(this.g);
    }

    int[] e() {
        return this.h;
    }

    private void a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.h = a(iArr);
            h();
        }
    }

    private boolean h() {
        this.i = this.h.length > 0;
        if (this.i) {
            this.f1682c = 1;
            this.f = this.h[0];
            this.g = this.h[r3 - 1];
            this.e = -1.0f;
        }
        return this.i;
    }

    private int[] a(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                iArr = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
            }
        }
        return iArr;
    }

    private void a(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f1682c = 1;
        this.f = f;
        this.g = f2;
        this.e = f3;
        this.i = false;
    }

    private boolean i() {
        if (k() && this.f1682c == 1) {
            if (!this.i || this.h.length == 0) {
                float fRound = Math.round(this.f);
                int i = 1;
                while (Math.round(this.e + fRound) <= Math.round(this.g)) {
                    i++;
                    fRound += this.e;
                }
                int[] iArr = new int[i];
                float f = this.f;
                for (int i2 = 0; i2 < i; i2++) {
                    iArr[i2] = Math.round(f);
                    f += this.e;
                }
                this.h = a(iArr);
            }
            this.f1683d = true;
        } else {
            this.f1683d = false;
        }
        return this.f1683d;
    }

    void f() {
        if (g()) {
            if (this.f1683d) {
                if (this.k.getMeasuredHeight() > 0 && this.k.getMeasuredWidth() > 0) {
                    int measuredWidth = ((Boolean) a(this.k, "getHorizontallyScrolling", false)).booleanValue() ? 1048576 : (this.k.getMeasuredWidth() - this.k.getTotalPaddingLeft()) - this.k.getTotalPaddingRight();
                    int height = (this.k.getHeight() - this.k.getCompoundPaddingBottom()) - this.k.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        synchronized (f1680a) {
                            f1680a.setEmpty();
                            f1680a.right = measuredWidth;
                            f1680a.bottom = height;
                            float fA = a(f1680a);
                            if (fA != this.k.getTextSize()) {
                                a(0, fA);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f1683d = true;
        }
    }

    private void j() {
        this.f1682c = 0;
        this.f = -1.0f;
        this.g = -1.0f;
        this.e = -1.0f;
        this.h = new int[0];
        this.f1683d = false;
    }

    void a(int i, float f) {
        Resources resources;
        if (this.l == null) {
            resources = Resources.getSystem();
        } else {
            resources = this.l.getResources();
        }
        a(TypedValue.applyDimension(i, f, resources.getDisplayMetrics()));
    }

    private void a(float f) {
        if (f != this.k.getPaint().getTextSize()) {
            this.k.getPaint().setTextSize(f);
            boolean zIsInLayout = Build.VERSION.SDK_INT >= 18 ? this.k.isInLayout() : false;
            if (this.k.getLayout() != null) {
                this.f1683d = false;
                try {
                    Method methodA = a("nullLayouts");
                    if (methodA != null) {
                        methodA.invoke(this.k, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!zIsInLayout) {
                    this.k.requestLayout();
                } else {
                    this.k.forceLayout();
                }
                this.k.invalidate();
            }
        }
    }

    private int a(RectF rectF) {
        int length = this.h.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = 0;
        int i2 = 1;
        int i3 = length - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) / 2;
            if (a(this.h[i4], rectF)) {
                int i5 = i4 + 1;
                i = i2;
                i2 = i5;
            } else {
                i3 = i4 - 1;
                i = i3;
            }
        }
        return this.h[i];
    }

    private boolean a(int i, RectF rectF) {
        StaticLayout staticLayoutA;
        CharSequence transformation;
        CharSequence text = this.k.getText();
        TransformationMethod transformationMethod = this.k.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.k)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.k.getMaxLines() : -1;
        if (this.j == null) {
            this.j = new TextPaint();
        } else {
            this.j.reset();
        }
        this.j.set(this.k.getPaint());
        this.j.setTextSize(i);
        Layout.Alignment alignment = (Layout.Alignment) a(this.k, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
        if (Build.VERSION.SDK_INT >= 23) {
            staticLayoutA = a(text, alignment, Math.round(rectF.right), maxLines);
        } else {
            staticLayoutA = a(text, alignment, Math.round(rectF.right));
        }
        if (maxLines == -1 || (staticLayoutA.getLineCount() <= maxLines && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == text.length())) {
            return ((float) staticLayoutA.getHeight()) <= rectF.bottom;
        }
        return false;
    }

    @TargetApi(23)
    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        TextDirectionHeuristic textDirectionHeuristic = (TextDirectionHeuristic) a(this.k, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
        StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.j, i).setAlignment(alignment).setLineSpacing(this.k.getLineSpacingExtra(), this.k.getLineSpacingMultiplier()).setIncludePad(this.k.getIncludeFontPadding()).setBreakStrategy(this.k.getBreakStrategy()).setHyphenationFrequency(this.k.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        return hyphenationFrequency.setMaxLines(i2).setTextDirection(textDirectionHeuristic).build();
    }

    @TargetApi(14)
    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i) {
        float fFloatValue;
        float fFloatValue2;
        boolean zBooleanValue;
        if (Build.VERSION.SDK_INT >= 16) {
            fFloatValue = this.k.getLineSpacingMultiplier();
            fFloatValue2 = this.k.getLineSpacingExtra();
            zBooleanValue = this.k.getIncludeFontPadding();
        } else {
            fFloatValue = ((Float) a(this.k, "getLineSpacingMultiplier", Float.valueOf(1.0f))).floatValue();
            fFloatValue2 = ((Float) a(this.k, "getLineSpacingExtra", Float.valueOf(0.0f))).floatValue();
            zBooleanValue = ((Boolean) a(this.k, "getIncludeFontPadding", true)).booleanValue();
        }
        return new StaticLayout(charSequence, this.j, i, alignment, fFloatValue, fFloatValue2, zBooleanValue);
    }

    private <T> T a(Object obj, String str, T t) {
        boolean z = false;
        try {
            try {
                T t2 = (T) a(str).invoke(obj, new Object[0]);
                if (t2 == null) {
                }
                return t2;
            } catch (Exception e) {
                z = true;
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
                if (0 != 0) {
                    return null;
                }
                return t;
            }
        } catch (Throwable th) {
            if (0 != 0 || z) {
            }
            throw th;
        }
    }

    private Method a(String str) {
        try {
            Method method = f1681b.get(str);
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f1681b.put(str, declaredMethod);
                    return declaredMethod;
                }
                return declaredMethod;
            }
            return method;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    boolean g() {
        return k() && this.f1682c != 0;
    }

    private boolean k() {
        return !(this.k instanceof AppCompatEditText);
    }
}
