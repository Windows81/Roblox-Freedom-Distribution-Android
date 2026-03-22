package androidx.l.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends h implements androidx.l.a.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<Object> f2050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Drawable.Callback f2051b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f2052d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f2053e;
    private ArgbEvaluator f;
    private Animator.AnimatorListener g;

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    c() {
        this(null, null, null);
    }

    private c(Context context) {
        this(context, null, null);
    }

    private c(Context context, a aVar, Resources resources) {
        this.f = null;
        this.g = null;
        this.f2050a = null;
        this.f2051b = new Drawable.Callback() { // from class: androidx.l.a.a.c.1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                c.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                c.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                c.this.unscheduleSelf(runnable);
            }
        };
        this.f2053e = context;
        if (aVar != null) {
            this.f2052d = aVar;
        } else {
            this.f2052d = new a(context, aVar, this.f2051b, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f2065c != null) {
            this.f2065c.mutate();
        }
        return this;
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f2065c == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(this.f2065c.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        if (this.f2065c != null) {
            return this.f2065c.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f2052d.f2055a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f2065c != null) {
            this.f2065c.draw(canvas);
            return;
        }
        this.f2052d.f2056b.draw(canvas);
        if (this.f2052d.f2057c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2065c != null) {
            this.f2065c.setBounds(rect);
        } else {
            this.f2052d.f2056b.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.f2065c != null) {
            return this.f2065c.setState(iArr);
        }
        return this.f2052d.f2056b.setState(iArr);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.f2065c != null) {
            return this.f2065c.setLevel(i);
        }
        return this.f2052d.f2056b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        if (this.f2065c != null) {
            return androidx.core.graphics.drawable.a.c(this.f2065c);
        }
        return this.f2052d.f2056b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f2065c != null) {
            this.f2065c.setAlpha(i);
        } else {
            this.f2052d.f2056b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f2065c != null) {
            this.f2065c.setColorFilter(colorFilter);
        } else {
            this.f2052d.f2056b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        if (this.f2065c != null) {
            androidx.core.graphics.drawable.a.a(this.f2065c, i);
        } else {
            this.f2052d.f2056b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f2065c != null) {
            androidx.core.graphics.drawable.a.a(this.f2065c, colorStateList);
        } else {
            this.f2052d.f2056b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f2065c != null) {
            androidx.core.graphics.drawable.a.a(this.f2065c, mode);
        } else {
            this.f2052d.f2056b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.f2065c != null) {
            return this.f2065c.setVisible(z, z2);
        }
        this.f2052d.f2056b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (this.f2065c != null) {
            return this.f2065c.isStateful();
        }
        return this.f2052d.f2056b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f2065c != null) {
            return this.f2065c.getOpacity();
        }
        return this.f2052d.f2056b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f2065c != null) {
            return this.f2065c.getIntrinsicWidth();
        }
        return this.f2052d.f2056b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f2065c != null) {
            return this.f2065c.getIntrinsicHeight();
        }
        return this.f2052d.f2056b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        if (this.f2065c != null) {
            return androidx.core.graphics.drawable.a.b(this.f2065c);
        }
        return this.f2052d.f2056b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f2065c != null) {
            androidx.core.graphics.drawable.a.a(this.f2065c, z);
        } else {
            this.f2052d.f2056b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.f2065c != null) {
            androidx.core.graphics.drawable.a.a(this.f2065c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayA = androidx.core.a.a.g.a(resources, theme, attributeSet, androidx.l.a.a.a.f2049e);
                    int resourceId = typedArrayA.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i iVarA = i.a(resources, resourceId, theme);
                        iVarA.a(false);
                        iVarA.setCallback(this.f2051b);
                        if (this.f2052d.f2056b != null) {
                            this.f2052d.f2056b.setCallback(null);
                        }
                        this.f2052d.f2056b = iVarA;
                    }
                    typedArrayA.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.l.a.a.a.f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f2053e;
                        if (context != null) {
                            a(string, e.a(context, resourceId2));
                        } else {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f2052d.a();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.f2065c != null) {
            androidx.core.graphics.drawable.a.a(this.f2065c, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f2065c != null) {
            return androidx.core.graphics.drawable.a.d(this.f2065c);
        }
        return false;
    }

    private static class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f2060a;

        public b(Drawable.ConstantState constantState) {
            this.f2060a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            cVar.f2065c = this.f2060a.newDrawable();
            cVar.f2065c.setCallback(cVar.f2051b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.f2065c = this.f2060a.newDrawable(resources);
            cVar.f2065c.setCallback(cVar.f2051b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.f2065c = this.f2060a.newDrawable(resources, theme);
            cVar.f2065c.setCallback(cVar.f2051b);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2060a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2060a.getChangingConfigurations();
        }
    }

    private static class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2055a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        i f2056b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        AnimatorSet f2057c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Animator> f2058d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.c.a<Animator, String> f2059e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f2055a = aVar.f2055a;
                i iVar = aVar.f2056b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.f2056b = (i) constantState.newDrawable(resources);
                    } else {
                        this.f2056b = (i) constantState.newDrawable();
                    }
                    i iVar2 = (i) this.f2056b.mutate();
                    this.f2056b = iVar2;
                    iVar2.setCallback(callback);
                    this.f2056b.setBounds(aVar.f2056b.getBounds());
                    this.f2056b.a(false);
                }
                ArrayList<Animator> arrayList = aVar.f2058d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f2058d = new ArrayList<>(size);
                    this.f2059e = new androidx.c.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = aVar.f2058d.get(i);
                        Animator animatorClone = animator.clone();
                        String str = aVar.f2059e.get(animator);
                        animatorClone.setTarget(this.f2056b.a(str));
                        this.f2058d.add(animatorClone);
                        this.f2059e.put(animatorClone, str);
                    }
                    a();
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2055a;
        }

        public void a() {
            if (this.f2057c == null) {
                this.f2057c = new AnimatorSet();
            }
            this.f2057c.playTogether(this.f2058d);
        }
    }

    private void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                a(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f == null) {
                    this.f = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.f2052d.f2056b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        if (this.f2052d.f2058d == null) {
            this.f2052d.f2058d = new ArrayList<>();
            this.f2052d.f2059e = new androidx.c.a<>();
        }
        this.f2052d.f2058d.add(animator);
        this.f2052d.f2059e.put(animator, str);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        if (this.f2065c != null) {
            return ((AnimatedVectorDrawable) this.f2065c).isRunning();
        }
        return this.f2052d.f2057c.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f2065c != null) {
            ((AnimatedVectorDrawable) this.f2065c).start();
        } else {
            if (this.f2052d.f2057c.isStarted()) {
                return;
            }
            this.f2052d.f2057c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f2065c != null) {
            ((AnimatedVectorDrawable) this.f2065c).stop();
        } else {
            this.f2052d.f2057c.end();
        }
    }
}
