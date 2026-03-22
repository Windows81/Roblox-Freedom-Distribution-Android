package androidx.appcompat.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.a;
import androidx.appcompat.b.a.b;
import androidx.core.a.a.g;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f736b;

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    d() {
        this(null, null);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iB = this.f735a.b(iArr);
        if (iB < 0) {
            iB = this.f735a.b(StateSet.WILD_CARD);
        }
        return a(iB) || zOnStateChange;
    }

    public void b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayA = g.a(resources, theme, attributeSet, a.j.StateListDrawable);
        setVisible(typedArrayA.getBoolean(a.j.StateListDrawable_android_visible, true), true);
        a(typedArrayA);
        a(resources);
        typedArrayA.recycle();
        a(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    private void a(TypedArray typedArray) {
        a aVar = this.f735a;
        if (Build.VERSION.SDK_INT >= 21) {
            aVar.f |= typedArray.getChangingConfigurations();
        }
        aVar.k = typedArray.getBoolean(a.j.StateListDrawable_android_variablePadding, aVar.k);
        aVar.n = typedArray.getBoolean(a.j.StateListDrawable_android_constantSize, aVar.n);
        aVar.C = typedArray.getInt(a.j.StateListDrawable_android_enterFadeDuration, aVar.C);
        aVar.D = typedArray.getInt(a.j.StateListDrawable_android_exitFadeDuration, aVar.D);
        aVar.z = typedArray.getBoolean(a.j.StateListDrawable_android_dither, aVar.z);
    }

    private void a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        a aVar = this.f735a;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next2 == 3) {
                return;
            }
            if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayA = g.a(resources, theme, attributeSet, a.j.StateListDrawableItem);
                int resourceId = typedArrayA.getResourceId(a.j.StateListDrawableItem_android_drawable, -1);
                Drawable drawableB = resourceId > 0 ? androidx.appcompat.a.a.a.b(context, resourceId) : null;
                typedArrayA.recycle();
                int[] iArrA = a(attributeSet);
                if (drawableB == null) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        drawableB = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                    } else {
                        drawableB = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                    }
                }
                aVar.a(iArrA, drawableB);
            }
        }
    }

    int[] a(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i3 = i + 1;
                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i] = attributeNameResource;
                i = i3;
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f736b && super.mutate() == this) {
            this.f735a.a();
            this.f736b = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.b.a.b
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a c() {
        return new a(this.f735a, this, null);
    }

    static class a extends b.AbstractC0018b {
        int[][] L;

        a(a aVar, d dVar, Resources resources) {
            super(aVar, dVar, resources);
            if (aVar != null) {
                this.L = aVar.L;
            } else {
                this.L = new int[c()][];
            }
        }

        @Override // androidx.appcompat.b.a.b.AbstractC0018b
        void a() {
            int[][] iArr = this.L;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.L;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.L = iArr2;
        }

        int a(int[] iArr, Drawable drawable) {
            int iA = a(drawable);
            this.L[iA] = iArr;
            return iA;
        }

        int b(int[] iArr) {
            int[][] iArr2 = this.L;
            int iD = d();
            for (int i = 0; i < iD; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }

        @Override // androidx.appcompat.b.a.b.AbstractC0018b
        public void e(int i, int i2) {
            super.e(i, i2);
            int[][] iArr = new int[i2][];
            System.arraycopy(this.L, 0, iArr, 0, i);
            this.L = iArr;
        }
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.b.a.b
    protected void a(b.AbstractC0018b abstractC0018b) {
        super.a(abstractC0018b);
        if (abstractC0018b instanceof a) {
            this.f735a = (a) abstractC0018b;
        }
    }

    d(a aVar, Resources resources) {
        a(new a(aVar, this, resources));
        onStateChange(getState());
    }

    d(a aVar) {
        if (aVar != null) {
            a(aVar);
        }
    }
}
