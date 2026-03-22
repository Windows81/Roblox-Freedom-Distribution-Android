package androidx.appcompat.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AbstractC0018b f724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Rect f725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f727d;
    private boolean f;
    private boolean i;
    private Runnable j;
    private long k;
    private long l;
    private a m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f728e = 255;
    private int g = -1;
    private int h = -1;

    b() {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f726c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f727d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f724a.getChangingConfigurations();
    }

    private boolean a() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectE = this.f724a.e();
        if (rectE != null) {
            rect.set(rectE);
            padding = (rectE.right | ((rectE.left | rectE.top) | rectE.bottom)) != 0;
        } else {
            Drawable drawable = this.f726c;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if (a()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f726c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f && this.f728e == i) {
            return;
        }
        this.f = true;
        this.f728e = i;
        Drawable drawable = this.f726c;
        if (drawable != null) {
            if (this.k == 0) {
                drawable.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f728e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.f724a.z != z) {
            this.f724a.z = z;
            Drawable drawable = this.f726c;
            if (drawable != null) {
                drawable.setDither(this.f724a.z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f724a.G = true;
        if (this.f724a.F != colorFilter) {
            this.f724a.F = colorFilter;
            Drawable drawable = this.f726c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f724a.J = true;
        if (this.f724a.H != colorStateList) {
            this.f724a.H = colorStateList;
            androidx.core.graphics.drawable.a.a(this.f726c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f724a.K = true;
        if (this.f724a.I != mode) {
            this.f724a.I = mode;
            androidx.core.graphics.drawable.a.a(this.f726c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f727d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f726c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f724a.m();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f724a.E != z) {
            this.f724a.E = z;
            Drawable drawable = this.f726c;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.a(drawable, this.f724a.E);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f724a.E;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f727d;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f727d = null;
            this.h = -1;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f726c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f) {
                this.f726c.setAlpha(this.f728e);
            }
        }
        if (this.l != 0) {
            this.l = 0L;
            z = true;
        }
        if (this.k != 0) {
            this.k = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f726c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f725b;
        if (rect == null) {
            this.f725b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f726c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f725b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f727d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f726c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f727d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f726c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f724a.d(i, d());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f724a.f()) {
            return this.f724a.g();
        }
        Drawable drawable = this.f726c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f724a.f()) {
            return this.f724a.h();
        }
        Drawable drawable = this.f726c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f724a.f()) {
            return this.f724a.i();
        }
        Drawable drawable = this.f726c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f724a.f()) {
            return this.f724a.j();
        }
        Drawable drawable = this.f726c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC0018b abstractC0018b = this.f724a;
        if (abstractC0018b != null) {
            abstractC0018b.b();
        }
        if (drawable != this.f726c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f726c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f726c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f727d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f726c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f726c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f724a.l();
    }

    int d() {
        return this.g;
    }

    boolean a(int i) {
        if (i == this.g) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f724a.D > 0) {
            Drawable drawable = this.f727d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f726c;
            if (drawable2 != null) {
                this.f727d = drawable2;
                this.h = this.g;
                this.l = ((long) this.f724a.D) + jUptimeMillis;
            } else {
                this.f727d = null;
                this.h = -1;
                this.l = 0L;
            }
        } else {
            Drawable drawable3 = this.f726c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i >= 0 && i < this.f724a.j) {
            Drawable drawableB = this.f724a.b(i);
            this.f726c = drawableB;
            this.g = i;
            if (drawableB != null) {
                if (this.f724a.C > 0) {
                    this.k = jUptimeMillis + ((long) this.f724a.C);
                }
                a(drawableB);
            }
        } else {
            this.f726c = null;
            this.g = -1;
        }
        if (this.k != 0 || this.l != 0) {
            Runnable runnable = this.j;
            if (runnable == null) {
                this.j = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.a(true);
                        b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    private void a(Drawable drawable) {
        if (this.m == null) {
            this.m = new a();
        }
        drawable.setCallback(this.m.a(drawable.getCallback()));
        try {
            if (this.f724a.C <= 0 && this.f) {
                drawable.setAlpha(this.f728e);
            }
            if (this.f724a.G) {
                drawable.setColorFilter(this.f724a.F);
            } else {
                if (this.f724a.J) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f724a.H);
                }
                if (this.f724a.K) {
                    androidx.core.graphics.drawable.a.a(drawable, this.f724a.I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f724a.z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f724a.E);
            }
            Rect rect = this.f725b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.m.a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f726c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L3a
            long r9 = r13.k
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L3c
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f728e
            r3.setAlpha(r9)
            r13.k = r7
            goto L3c
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r3 = (int) r9
            androidx.appcompat.b.a.b$b r9 = r13.f724a
            int r9 = r9.C
            int r3 = r3 / r9
            android.graphics.drawable.Drawable r9 = r13.f726c
            int r3 = 255 - r3
            int r10 = r13.f728e
            int r3 = r3 * r10
            int r3 = r3 / 255
            r9.setAlpha(r3)
            r3 = 1
            goto L3d
        L3a:
            r13.k = r7
        L3c:
            r3 = 0
        L3d:
            android.graphics.drawable.Drawable r9 = r13.f727d
            if (r9 == 0) goto L6c
            long r10 = r13.l
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L6e
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L57
            r9.setVisible(r6, r6)
            r0 = 0
            r13.f727d = r0
            r0 = -1
            r13.h = r0
            r13.l = r7
            goto L6e
        L57:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.b.a.b$b r4 = r13.f724a
            int r4 = r4.D
            int r3 = r3 / r4
            android.graphics.drawable.Drawable r4 = r13.f727d
            int r5 = r13.f728e
            int r3 = r3 * r5
            int r3 = r3 / 255
            r4.setAlpha(r3)
            goto L6f
        L6c:
            r13.l = r7
        L6e:
            r0 = r3
        L6f:
            if (r14 == 0) goto L7b
            if (r0 == 0) goto L7b
            java.lang.Runnable r14 = r13.j
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.b.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f726c;
    }

    final void a(Resources resources) {
        this.f724a.a(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f724a.a(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f724a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f724a.n()) {
            return null;
        }
        this.f724a.f = getChangingConfigurations();
        return this.f724a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.i && super.mutate() == this) {
            AbstractC0018b abstractC0018bC = c();
            abstractC0018bC.a();
            a(abstractC0018bC);
            this.i = true;
        }
        return this;
    }

    AbstractC0018b c() {
        return this.f724a;
    }

    /* JADX INFO: renamed from: androidx.appcompat.b.a.b$b, reason: collision with other inner class name */
    static abstract class AbstractC0018b extends Drawable.ConstantState {
        boolean A;
        int B;
        int C;
        int D;
        boolean E;
        ColorFilter F;
        boolean G;
        ColorStateList H;
        PorterDuff.Mode I;
        boolean J;
        boolean K;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final b f731c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Resources f732d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f733e;
        int f;
        int g;
        SparseArray<Drawable.ConstantState> h;
        Drawable[] i;
        int j;
        boolean k;
        boolean l;
        Rect m;
        boolean n;
        boolean o;
        int p;
        int q;
        int r;
        int s;
        boolean t;
        int u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        boolean z;

        AbstractC0018b(AbstractC0018b abstractC0018b, b bVar, Resources resources) {
            Resources resources2;
            this.f733e = 160;
            this.k = false;
            this.n = false;
            this.z = true;
            this.C = 0;
            this.D = 0;
            this.f731c = bVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = abstractC0018b != null ? abstractC0018b.f732d : null;
            }
            this.f732d = resources2;
            int iA = b.a(resources, abstractC0018b != null ? abstractC0018b.f733e : 0);
            this.f733e = iA;
            if (abstractC0018b != null) {
                this.f = abstractC0018b.f;
                this.g = abstractC0018b.g;
                this.x = true;
                this.y = true;
                this.k = abstractC0018b.k;
                this.n = abstractC0018b.n;
                this.z = abstractC0018b.z;
                this.A = abstractC0018b.A;
                this.B = abstractC0018b.B;
                this.C = abstractC0018b.C;
                this.D = abstractC0018b.D;
                this.E = abstractC0018b.E;
                this.F = abstractC0018b.F;
                this.G = abstractC0018b.G;
                this.H = abstractC0018b.H;
                this.I = abstractC0018b.I;
                this.J = abstractC0018b.J;
                this.K = abstractC0018b.K;
                if (abstractC0018b.f733e == iA) {
                    if (abstractC0018b.l) {
                        this.m = new Rect(abstractC0018b.m);
                        this.l = true;
                    }
                    if (abstractC0018b.o) {
                        this.p = abstractC0018b.p;
                        this.q = abstractC0018b.q;
                        this.r = abstractC0018b.r;
                        this.s = abstractC0018b.s;
                        this.o = true;
                    }
                }
                if (abstractC0018b.t) {
                    this.u = abstractC0018b.u;
                    this.t = true;
                }
                if (abstractC0018b.v) {
                    this.w = abstractC0018b.w;
                    this.v = true;
                }
                Drawable[] drawableArr = abstractC0018b.i;
                this.i = new Drawable[drawableArr.length];
                this.j = abstractC0018b.j;
                SparseArray<Drawable.ConstantState> sparseArray = abstractC0018b.h;
                if (sparseArray != null) {
                    this.h = sparseArray.clone();
                } else {
                    this.h = new SparseArray<>(this.j);
                }
                int i = this.j;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.h.put(i2, constantState);
                        } else {
                            this.i[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.i = new Drawable[10];
            this.j = 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f | this.g;
        }

        public final int a(Drawable drawable) {
            int i = this.j;
            if (i >= this.i.length) {
                e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f731c);
            this.i[i] = drawable;
            this.j++;
            this.g = drawable.getChangingConfigurations() | this.g;
            b();
            this.m = null;
            this.l = false;
            this.o = false;
            this.x = false;
            return i;
        }

        void b() {
            this.t = false;
            this.v = false;
        }

        final int c() {
            return this.i.length;
        }

        private void o() {
            SparseArray<Drawable.ConstantState> sparseArray = this.h;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.i[this.h.keyAt(i)] = b(this.h.valueAt(i).newDrawable(this.f732d));
                }
                this.h = null;
            }
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.B);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f731c);
            return drawableMutate;
        }

        public final int d() {
            return this.j;
        }

        public final Drawable b(int i) {
            int iIndexOfKey;
            Drawable drawable = this.i[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.h;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable drawableB = b(this.h.valueAt(iIndexOfKey).newDrawable(this.f732d));
            this.i[i] = drawableB;
            this.h.removeAt(iIndexOfKey);
            if (this.h.size() == 0) {
                this.h = null;
            }
            return drawableB;
        }

        final boolean d(int i, int i2) {
            int i3 = this.j;
            Drawable[] drawableArr = this.i;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    if (i4 == i2) {
                        z = layoutDirection;
                    }
                }
            }
            this.B = i;
            return z;
        }

        final void a(Resources resources) {
            if (resources != null) {
                this.f732d = resources;
                int iA = b.a(resources, this.f733e);
                int i = this.f733e;
                this.f733e = iA;
                if (i != iA) {
                    this.o = false;
                    this.l = false;
                }
            }
        }

        final void a(Resources.Theme theme) {
            if (theme != null) {
                o();
                int i = this.j;
                Drawable[] drawableArr = this.i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    if (drawable.canApplyTheme()) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                }
            }
            return false;
        }

        void a() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.A = true;
        }

        public final void a(boolean z) {
            this.k = z;
        }

        public final Rect e() {
            Rect rect = null;
            if (this.k) {
                return null;
            }
            if (this.m != null || this.l) {
                return this.m;
            }
            o();
            Rect rect2 = new Rect();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect2)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    if (rect2.left > rect.left) {
                        rect.left = rect2.left;
                    }
                    if (rect2.top > rect.top) {
                        rect.top = rect2.top;
                    }
                    if (rect2.right > rect.right) {
                        rect.right = rect2.right;
                    }
                    if (rect2.bottom > rect.bottom) {
                        rect.bottom = rect2.bottom;
                    }
                }
            }
            this.l = true;
            this.m = rect;
            return rect;
        }

        public final void b(boolean z) {
            this.n = z;
        }

        public final boolean f() {
            return this.n;
        }

        public final int g() {
            if (!this.o) {
                k();
            }
            return this.p;
        }

        public final int h() {
            if (!this.o) {
                k();
            }
            return this.q;
        }

        public final int i() {
            if (!this.o) {
                k();
            }
            return this.r;
        }

        public final int j() {
            if (!this.o) {
                k();
            }
            return this.s;
        }

        protected void k() {
            this.o = true;
            o();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            this.q = -1;
            this.p = -1;
            this.s = 0;
            this.r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.p) {
                    this.p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.q) {
                    this.q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.r) {
                    this.r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.s) {
                    this.s = minimumHeight;
                }
            }
        }

        public final void c(int i) {
            this.C = i;
        }

        public final void d(int i) {
            this.D = i;
        }

        public final int l() {
            if (this.t) {
                return this.u;
            }
            o();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.u = opacity;
            this.t = true;
            return opacity;
        }

        public final boolean m() {
            if (this.v) {
                return this.w;
            }
            o();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                }
                i2++;
            }
            this.w = z;
            this.v = true;
            return z;
        }

        public void e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.i, 0, drawableArr, 0, i);
            this.i = drawableArr;
        }

        public synchronized boolean n() {
            if (this.x) {
                return this.y;
            }
            o();
            this.x = true;
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.y = false;
                    return false;
                }
            }
            this.y = true;
            return true;
        }
    }

    protected void a(AbstractC0018b abstractC0018b) {
        this.f724a = abstractC0018b;
        int i = this.g;
        if (i >= 0) {
            Drawable drawableB = abstractC0018b.b(i);
            this.f726c = drawableB;
            if (drawableB != null) {
                a(drawableB);
            }
        }
        this.h = -1;
        this.f727d = null;
    }

    static class a implements Drawable.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable.Callback f730a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        a() {
        }

        public a a(Drawable.Callback callback) {
            this.f730a = callback;
            return this;
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f730a;
            this.f730a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f730a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f730a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static int a(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }
}
