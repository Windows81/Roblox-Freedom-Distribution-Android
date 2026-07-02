package android.support.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.support.v4.b.b;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class i extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final PorterDuff.Mode f218a = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuffColorFilter f220d;
    private ColorFilter e;
    private boolean f;
    private boolean g;
    private Drawable.ConstantState h;
    private final float[] i;
    private final Matrix j;
    private final Rect k;

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    i() {
        this.g = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.f219c = new f();
    }

    i(f fVar) {
        this.g = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.f219c = fVar;
        this.f220d = a(this.f220d, fVar.f235c, fVar.f236d);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f217b != null) {
            this.f217b.mutate();
        } else if (!this.f && super.mutate() == this) {
            this.f219c = new f(this.f219c);
            this.f = true;
        }
        return this;
    }

    Object a(String str) {
        return this.f219c.f234b.h.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f217b != null && Build.VERSION.SDK_INT >= 24) {
            return new g(this.f217b.getConstantState());
        }
        this.f219c.f233a = getChangingConfigurations();
        return this.f219c;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f217b != null) {
            this.f217b.draw(canvas);
            return;
        }
        copyBounds(this.k);
        if (this.k.width() > 0 && this.k.height() > 0) {
            ColorFilter colorFilter = this.e == null ? this.f220d : this.e;
            canvas.getMatrix(this.j);
            this.j.getValues(this.i);
            float fAbs = Math.abs(this.i[0]);
            float fAbs2 = Math.abs(this.i[4]);
            float fAbs3 = Math.abs(this.i[1]);
            float fAbs4 = Math.abs(this.i[3]);
            if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
                fAbs2 = 1.0f;
                fAbs = 1.0f;
            }
            int iMin = Math.min(RecyclerView.ItemAnimator.FLAG_MOVED, (int) (fAbs * this.k.width()));
            int iMin2 = Math.min(RecyclerView.ItemAnimator.FLAG_MOVED, (int) (fAbs2 * this.k.height()));
            if (iMin > 0 && iMin2 > 0) {
                int iSave = canvas.save();
                canvas.translate(this.k.left, this.k.top);
                if (a()) {
                    canvas.translate(this.k.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.k.offsetTo(0, 0);
                this.f219c.b(iMin, iMin2);
                if (!this.g) {
                    this.f219c.a(iMin, iMin2);
                } else if (!this.f219c.b()) {
                    this.f219c.a(iMin, iMin2);
                    this.f219c.c();
                }
                this.f219c.a(canvas, colorFilter, this.k);
                canvas.restoreToCount(iSave);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f217b != null ? android.support.v4.b.a.a.c(this.f217b) : this.f219c.f234b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f217b != null) {
            this.f217b.setAlpha(i);
        } else if (this.f219c.f234b.getRootAlpha() != i) {
            this.f219c.f234b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f217b != null) {
            this.f217b.setColorFilter(colorFilter);
        } else {
            this.e = colorFilter;
            invalidateSelf();
        }
    }

    PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTint(int i) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintList(ColorStateList colorStateList) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, colorStateList);
            return;
        }
        f fVar = this.f219c;
        if (fVar.f235c != colorStateList) {
            fVar.f235c = colorStateList;
            this.f220d = a(this.f220d, colorStateList, fVar.f236d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, mode);
            return;
        }
        f fVar = this.f219c;
        if (fVar.f236d != mode) {
            fVar.f236d = mode;
            this.f220d = a(this.f220d, fVar.f235c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (this.f217b != null) {
            return this.f217b.isStateful();
        }
        return super.isStateful() || !(this.f219c == null || this.f219c.f235c == null || !this.f219c.f235c.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.f217b != null) {
            return this.f217b.setState(iArr);
        }
        f fVar = this.f219c;
        if (fVar.f235c != null && fVar.f236d != null) {
            this.f220d = a(this.f220d, fVar.f235c, fVar.f236d);
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f217b != null) {
            return this.f217b.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f217b != null ? this.f217b.getIntrinsicWidth() : (int) this.f219c.f234b.f230b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f217b != null ? this.f217b.getIntrinsicHeight() : (int) this.f219c.f234b.f231c;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f217b != null) {
            android.support.v4.b.a.a.d(this.f217b);
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f217b != null ? android.support.v4.b.a.a.b(this.f217b) : this.f219c.e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, z);
        } else {
            this.f219c.e = z;
        }
    }

    public static i a(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.f217b = android.support.v4.a.a.b.a(resources, i, theme);
            iVar.h = new g(iVar.f217b.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return a(resources, xml, attributeSetAsAttributeSet, theme);
        } catch (IOException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    public static i a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    static int a(int i, float f2) {
        return (((int) (Color.alpha(i) * f2)) << 24) | (16777215 & i);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.f217b != null) {
            this.f217b.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        f fVar = this.f219c;
        fVar.f234b = new e();
        TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.f200a);
        a(typedArrayA, xmlPullParser);
        typedArrayA.recycle();
        fVar.f233a = getChangingConfigurations();
        fVar.k = true;
        b(resources, xmlPullParser, attributeSet, theme);
        this.f220d = a(this.f220d, fVar.f235c, fVar.f236d);
    }

    private static PorterDuff.Mode a(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return mode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                if (Build.VERSION.SDK_INT >= 11) {
                    return PorterDuff.Mode.ADD;
                }
                return mode;
        }
    }

    private void a(TypedArray typedArray, XmlPullParser xmlPullParser) throws XmlPullParserException {
        f fVar = this.f219c;
        e eVar = fVar.f234b;
        fVar.f236d = a(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            fVar.f235c = colorStateList;
        }
        fVar.e = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "autoMirrored", 5, fVar.e);
        eVar.f232d = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "viewportWidth", 7, eVar.f232d);
        eVar.e = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "viewportHeight", 8, eVar.e);
        if (eVar.f232d <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (eVar.e <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        eVar.f230b = typedArray.getDimension(3, eVar.f230b);
        eVar.f231c = typedArray.getDimension(2, eVar.f231c);
        if (eVar.f230b <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (eVar.f231c <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        eVar.setAlpha(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "alpha", 4, eVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            eVar.g = string;
            eVar.h.put(string, eVar);
        }
    }

    private void b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        boolean z;
        f fVar = this.f219c;
        e eVar = fVar.f234b;
        Stack stack = new Stack();
        stack.push(eVar.f229a);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) stack.peek();
                if ("path".equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f225a.add(bVar);
                    if (bVar.getPathName() != null) {
                        eVar.h.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    fVar.f233a = bVar.o | fVar.f233a;
                } else if ("clip-path".equals(name)) {
                    a aVar = new a();
                    aVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f225a.add(aVar);
                    if (aVar.getPathName() != null) {
                        eVar.h.put(aVar.getPathName(), aVar);
                    }
                    fVar.f233a |= aVar.o;
                    z = z2;
                } else {
                    if ("group".equals(name)) {
                        c cVar2 = new c();
                        cVar2.a(resources, attributeSet, theme, xmlPullParser);
                        cVar.f225a.add(cVar2);
                        stack.push(cVar2);
                        if (cVar2.getGroupName() != null) {
                            eVar.h.put(cVar2.getGroupName(), cVar2);
                        }
                        fVar.f233a |= cVar2.f227c;
                    }
                    z = z2;
                }
                z2 = z;
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                stack.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z2) {
            StringBuffer stringBuffer = new StringBuffer();
            if (stringBuffer.length() > 0) {
                stringBuffer.append(" or ");
            }
            stringBuffer.append("path");
            throw new XmlPullParserException("no " + ((Object) stringBuffer) + " defined");
        }
    }

    void a(boolean z) {
        this.g = z;
    }

    private boolean a() {
        if (Build.VERSION.SDK_INT >= 17) {
            return isAutoMirrored() && android.support.v4.b.a.a.i(this) == 1;
        }
        return false;
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f217b != null) {
            this.f217b.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f217b != null ? this.f217b.getChangingConfigurations() : super.getChangingConfigurations() | this.f219c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f217b != null) {
            this.f217b.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        if (this.f217b != null) {
            this.f217b.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f217b != null ? this.f217b.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        if (this.f217b != null) {
            this.f217b.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    private static class g extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f237a;

        public g(Drawable.ConstantState constantState) {
            this.f237a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i();
            iVar.f217b = (VectorDrawable) this.f237a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.f217b = (VectorDrawable) this.f237a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.f217b = (VectorDrawable) this.f237a.newDrawable(resources, theme);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f237a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f237a.getChangingConfigurations();
        }
    }

    private static class f extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        e f234b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f235c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f236d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        PorterDuff.Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public f(f fVar) {
            this.f235c = null;
            this.f236d = i.f218a;
            if (fVar != null) {
                this.f233a = fVar.f233a;
                this.f234b = new e(fVar.f234b);
                if (fVar.f234b.n != null) {
                    this.f234b.n = new Paint(fVar.f234b.n);
                }
                if (fVar.f234b.m != null) {
                    this.f234b.m = new Paint(fVar.f234b.m);
                }
                this.f235c = fVar.f235c;
                this.f236d = fVar.f236d;
                this.e = fVar.e;
            }
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f, (Rect) null, rect, a(colorFilter));
        }

        public boolean a() {
            return this.f234b.getRootAlpha() < 255;
        }

        public Paint a(ColorFilter colorFilter) {
            if (!a() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                this.l = new Paint();
                this.l.setFilterBitmap(true);
            }
            this.l.setAlpha(this.f234b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public void a(int i, int i2) {
            this.f.eraseColor(0);
            this.f234b.a(new Canvas(this.f), i, i2, (ColorFilter) null);
        }

        public void b(int i, int i2) {
            if (this.f == null || !c(i, i2)) {
                this.f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.k = true;
            }
        }

        public boolean c(int i, int i2) {
            return i == this.f.getWidth() && i2 == this.f.getHeight();
        }

        public boolean b() {
            return !this.k && this.g == this.f235c && this.h == this.f236d && this.j == this.e && this.i == this.f234b.getRootAlpha();
        }

        public void c() {
            this.g = this.f235c;
            this.h = this.f236d;
            this.i = this.f234b.getRootAlpha();
            this.j = this.e;
            this.k = false;
        }

        public f() {
            this.f235c = null;
            this.f236d = i.f218a;
            this.f234b = new e();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f233a;
        }
    }

    private static class e {
        private static final Matrix k = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c f229a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f230b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f231c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f232d;
        float e;
        int f;
        String g;
        final android.support.v4.g.a<String, Object> h;
        private final Path i;
        private final Path j;
        private final Matrix l;
        private Paint m;
        private Paint n;
        private PathMeasure o;
        private int p;

        public e() {
            this.l = new Matrix();
            this.f230b = 0.0f;
            this.f231c = 0.0f;
            this.f232d = 0.0f;
            this.e = 0.0f;
            this.f = 255;
            this.g = null;
            this.h = new android.support.v4.g.a<>();
            this.f229a = new c();
            this.i = new Path();
            this.j = new Path();
        }

        public void setRootAlpha(int i) {
            this.f = i;
        }

        public int getRootAlpha() {
            return this.f;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (255.0f * f));
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public e(e eVar) {
            this.l = new Matrix();
            this.f230b = 0.0f;
            this.f231c = 0.0f;
            this.f232d = 0.0f;
            this.e = 0.0f;
            this.f = 255;
            this.g = null;
            this.h = new android.support.v4.g.a<>();
            this.f229a = new c(eVar.f229a, this.h);
            this.i = new Path(eVar.i);
            this.j = new Path(eVar.j);
            this.f230b = eVar.f230b;
            this.f231c = eVar.f231c;
            this.f232d = eVar.f232d;
            this.e = eVar.e;
            this.p = eVar.p;
            this.f = eVar.f;
            this.g = eVar.g;
            if (eVar.g != null) {
                this.h.put(eVar.g, this);
            }
        }

        private void a(c cVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            cVar.f228d.set(matrix);
            cVar.f228d.preConcat(cVar.k);
            canvas.save();
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < cVar.f225a.size()) {
                    Object obj = cVar.f225a.get(i4);
                    if (!(obj instanceof c)) {
                        if (obj instanceof d) {
                            a(cVar, (d) obj, canvas, i, i2, colorFilter);
                        }
                    } else {
                        a((c) obj, cVar.f228d, canvas, i, i2, colorFilter);
                    }
                    i3 = i4 + 1;
                } else {
                    canvas.restore();
                    return;
                }
            }
        }

        public void a(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            a(this.f229a, k, canvas, i, i2, colorFilter);
        }

        private void a(c cVar, d dVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f232d;
            float f2 = i2 / this.e;
            float fMin = Math.min(f, f2);
            Matrix matrix = cVar.f228d;
            this.l.set(matrix);
            this.l.postScale(f, f2);
            float fA = a(matrix);
            if (fA != 0.0f) {
                dVar.a(this.i);
                Path path = this.i;
                this.j.reset();
                if (dVar.a()) {
                    this.j.addPath(path, this.l);
                    canvas.clipPath(this.j);
                    return;
                }
                b bVar = (b) dVar;
                if (bVar.g != 0.0f || bVar.h != 1.0f) {
                    float f3 = (bVar.g + bVar.i) % 1.0f;
                    float f4 = (bVar.h + bVar.i) % 1.0f;
                    if (this.o == null) {
                        this.o = new PathMeasure();
                    }
                    this.o.setPath(this.i, false);
                    float length = this.o.getLength();
                    float f5 = f3 * length;
                    float f6 = f4 * length;
                    path.reset();
                    if (f5 > f6) {
                        this.o.getSegment(f5, length, path, true);
                        this.o.getSegment(0.0f, f6, path, true);
                    } else {
                        this.o.getSegment(f5, f6, path, true);
                    }
                    path.rLineTo(0.0f, 0.0f);
                }
                this.j.addPath(path, this.l);
                if (bVar.f223c != 0) {
                    if (this.n == null) {
                        this.n = new Paint();
                        this.n.setStyle(Paint.Style.FILL);
                        this.n.setAntiAlias(true);
                    }
                    Paint paint = this.n;
                    paint.setColor(i.a(bVar.f223c, bVar.f));
                    paint.setColorFilter(colorFilter);
                    this.j.setFillType(bVar.e == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    canvas.drawPath(this.j, paint);
                }
                if (bVar.f221a != 0) {
                    if (this.m == null) {
                        this.m = new Paint();
                        this.m.setStyle(Paint.Style.STROKE);
                        this.m.setAntiAlias(true);
                    }
                    Paint paint2 = this.m;
                    if (bVar.k != null) {
                        paint2.setStrokeJoin(bVar.k);
                    }
                    if (bVar.j != null) {
                        paint2.setStrokeCap(bVar.j);
                    }
                    paint2.setStrokeMiter(bVar.l);
                    paint2.setColor(i.a(bVar.f221a, bVar.f224d));
                    paint2.setColorFilter(colorFilter);
                    paint2.setStrokeWidth(fA * fMin * bVar.f222b);
                    canvas.drawPath(this.j, paint2);
                }
            }
        }

        private static float a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        private float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ArrayList<Object> f225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f227c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Matrix f228d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private final Matrix k;
        private int[] l;
        private String m;

        public c(c cVar, android.support.v4.g.a<String, Object> aVar) {
            d aVar2;
            this.f228d = new Matrix();
            this.f225a = new ArrayList<>();
            this.f226b = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 1.0f;
            this.h = 1.0f;
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = new Matrix();
            this.m = null;
            this.f226b = cVar.f226b;
            this.e = cVar.e;
            this.f = cVar.f;
            this.g = cVar.g;
            this.h = cVar.h;
            this.i = cVar.i;
            this.j = cVar.j;
            this.l = cVar.l;
            this.m = cVar.m;
            this.f227c = cVar.f227c;
            if (this.m != null) {
                aVar.put(this.m, this);
            }
            this.k.set(cVar.k);
            ArrayList<Object> arrayList = cVar.f225a;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    Object obj = arrayList.get(i2);
                    if (obj instanceof c) {
                        this.f225a.add(new c((c) obj, aVar));
                    } else {
                        if (obj instanceof b) {
                            aVar2 = new b((b) obj);
                        } else if (obj instanceof a) {
                            aVar2 = new a((a) obj);
                        } else {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        this.f225a.add(aVar2);
                        if (aVar2.n != null) {
                            aVar.put(aVar2.n, aVar2);
                        }
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        public c() {
            this.f228d = new Matrix();
            this.f225a = new ArrayList<>();
            this.f226b = 0.0f;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 1.0f;
            this.h = 1.0f;
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = new Matrix();
            this.m = null;
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.k;
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.f201b);
            a(typedArrayA, xmlPullParser);
            typedArrayA.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.f226b = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "rotation", 5, this.f226b);
            this.e = typedArray.getFloat(1, this.e);
            this.f = typedArray.getFloat(2, this.f);
            this.g = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "scaleX", 3, this.g);
            this.h = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "scaleY", 4, this.h);
            this.i = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "translateX", 6, this.i);
            this.j = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "translateY", 7, this.j);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            a();
        }

        private void a() {
            this.k.reset();
            this.k.postTranslate(-this.e, -this.f);
            this.k.postScale(this.g, this.h);
            this.k.postRotate(this.f226b, 0.0f, 0.0f);
            this.k.postTranslate(this.i + this.e, this.j + this.f);
        }

        public float getRotation() {
            return this.f226b;
        }

        public void setRotation(float f) {
            if (f != this.f226b) {
                this.f226b = f;
                a();
            }
        }

        public float getPivotX() {
            return this.e;
        }

        public void setPivotX(float f) {
            if (f != this.e) {
                this.e = f;
                a();
            }
        }

        public float getPivotY() {
            return this.f;
        }

        public void setPivotY(float f) {
            if (f != this.f) {
                this.f = f;
                a();
            }
        }

        public float getScaleX() {
            return this.g;
        }

        public void setScaleX(float f) {
            if (f != this.g) {
                this.g = f;
                a();
            }
        }

        public float getScaleY() {
            return this.h;
        }

        public void setScaleY(float f) {
            if (f != this.h) {
                this.h = f;
                a();
            }
        }

        public float getTranslateX() {
            return this.i;
        }

        public void setTranslateX(float f) {
            if (f != this.i) {
                this.i = f;
                a();
            }
        }

        public float getTranslateY() {
            return this.j;
        }

        public void setTranslateY(float f) {
            if (f != this.j) {
                this.j = f;
                a();
            }
        }
    }

    private static class d {
        protected b.C0017b[] m;
        String n;
        int o;

        public d() {
            this.m = null;
        }

        public d(d dVar) {
            this.m = null;
            this.n = dVar.n;
            this.o = dVar.o;
            this.m = android.support.v4.b.b.a(dVar.m);
        }

        public void a(Path path) {
            path.reset();
            if (this.m != null) {
                b.C0017b.a(this.m, path);
            }
        }

        public String getPathName() {
            return this.n;
        }

        public boolean a() {
            return false;
        }

        public b.C0017b[] getPathData() {
            return this.m;
        }

        public void setPathData(b.C0017b[] c0017bArr) {
            if (!android.support.v4.b.b.a(this.m, c0017bArr)) {
                this.m = android.support.v4.b.b.a(c0017bArr);
            } else {
                android.support.v4.b.b.b(this.m, c0017bArr);
            }
        }
    }

    private static class a extends d {
        public a() {
        }

        public a(a aVar) {
            super(aVar);
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (android.support.v4.a.a.c.a(xmlPullParser, "pathData")) {
                TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.f203d);
                a(typedArrayA);
                typedArrayA.recycle();
            }
        }

        private void a(TypedArray typedArray) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.n = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.m = android.support.v4.b.b.b(string2);
            }
        }

        @Override // android.support.c.a.i.d
        public boolean a() {
            return true;
        }
    }

    private static class b extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f223c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f224d;
        int e;
        float f;
        float g;
        float h;
        float i;
        Paint.Cap j;
        Paint.Join k;
        float l;
        private int[] p;

        public b() {
            this.f221a = 0;
            this.f222b = 0.0f;
            this.f223c = 0;
            this.f224d = 1.0f;
            this.e = 0;
            this.f = 1.0f;
            this.g = 0.0f;
            this.h = 1.0f;
            this.i = 0.0f;
            this.j = Paint.Cap.BUTT;
            this.k = Paint.Join.MITER;
            this.l = 4.0f;
        }

        public b(b bVar) {
            super(bVar);
            this.f221a = 0;
            this.f222b = 0.0f;
            this.f223c = 0;
            this.f224d = 1.0f;
            this.e = 0;
            this.f = 1.0f;
            this.g = 0.0f;
            this.h = 1.0f;
            this.i = 0.0f;
            this.j = Paint.Cap.BUTT;
            this.k = Paint.Join.MITER;
            this.l = 4.0f;
            this.p = bVar.p;
            this.f221a = bVar.f221a;
            this.f222b = bVar.f222b;
            this.f224d = bVar.f224d;
            this.f223c = bVar.f223c;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
        }

        private Paint.Cap a(int i, Paint.Cap cap) {
            switch (i) {
                case 0:
                    return Paint.Cap.BUTT;
                case 1:
                    return Paint.Cap.ROUND;
                case 2:
                    return Paint.Cap.SQUARE;
                default:
                    return cap;
            }
        }

        private Paint.Join a(int i, Paint.Join join) {
            switch (i) {
                case 0:
                    return Paint.Join.MITER;
                case 1:
                    return Paint.Join.ROUND;
                case 2:
                    return Paint.Join.BEVEL;
                default:
                    return join;
            }
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.f202c);
            a(typedArrayA, xmlPullParser);
            typedArrayA.recycle();
        }

        private void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.p = null;
            if (android.support.v4.a.a.c.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.n = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.m = android.support.v4.b.b.b(string2);
                }
                this.f223c = android.support.v4.a.a.c.b(typedArray, xmlPullParser, "fillColor", 1, this.f223c);
                this.f = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "fillAlpha", 12, this.f);
                this.j = a(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.j);
                this.k = a(android.support.v4.a.a.c.a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.k);
                this.l = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.l);
                this.f221a = android.support.v4.a.a.c.b(typedArray, xmlPullParser, "strokeColor", 3, this.f221a);
                this.f224d = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f224d);
                this.f222b = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "strokeWidth", 4, this.f222b);
                this.h = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.h);
                this.i = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.i);
                this.g = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "trimPathStart", 5, this.g);
                this.e = android.support.v4.a.a.c.a(typedArray, xmlPullParser, "fillType", 13, this.e);
            }
        }

        int getStrokeColor() {
            return this.f221a;
        }

        void setStrokeColor(int i) {
            this.f221a = i;
        }

        float getStrokeWidth() {
            return this.f222b;
        }

        void setStrokeWidth(float f) {
            this.f222b = f;
        }

        float getStrokeAlpha() {
            return this.f224d;
        }

        void setStrokeAlpha(float f) {
            this.f224d = f;
        }

        int getFillColor() {
            return this.f223c;
        }

        void setFillColor(int i) {
            this.f223c = i;
        }

        float getFillAlpha() {
            return this.f;
        }

        void setFillAlpha(float f) {
            this.f = f;
        }

        float getTrimPathStart() {
            return this.g;
        }

        void setTrimPathStart(float f) {
            this.g = f;
        }

        float getTrimPathEnd() {
            return this.h;
        }

        void setTrimPathEnd(float f) {
            this.h = f;
        }

        float getTrimPathOffset() {
            return this.i;
        }

        void setTrimPathOffset(float f) {
            this.i = f;
        }
    }
}
