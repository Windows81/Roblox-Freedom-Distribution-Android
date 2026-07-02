package android.support.c.a;

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

/* JADX INFO: loaded from: classes.dex */
public class c extends h implements android.support.c.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Drawable.Callback f204a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f206d;
    private ArgbEvaluator e;
    private Animator.AnimatorListener f;
    private ArrayList<Object> g;

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
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
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
        this.e = null;
        this.f = null;
        this.g = null;
        this.f204a = new Drawable.Callback() { // from class: android.support.c.a.c.1
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
        this.f206d = context;
        if (aVar != null) {
            this.f205c = aVar;
        } else {
            this.f205c = new a(context, aVar, this.f204a, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f217b != null) {
            this.f217b.mutate();
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
        if (this.f217b == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new b(this.f217b.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f217b != null ? this.f217b.getChangingConfigurations() : super.getChangingConfigurations() | this.f205c.f208a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f217b != null) {
            this.f217b.draw(canvas);
            return;
        }
        this.f205c.f209b.draw(canvas);
        if (this.f205c.f210c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f217b != null) {
            this.f217b.setBounds(rect);
        } else {
            this.f205c.f209b.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.f217b != null ? this.f217b.setState(iArr) : this.f205c.f209b.setState(iArr);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f217b != null ? this.f217b.setLevel(i) : this.f205c.f209b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f217b != null ? android.support.v4.b.a.a.c(this.f217b) : this.f205c.f209b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f217b != null) {
            this.f217b.setAlpha(i);
        } else {
            this.f205c.f209b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f217b != null) {
            this.f217b.setColorFilter(colorFilter);
        } else {
            this.f205c.f209b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTint(int i) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, i);
        } else {
            this.f205c.f209b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintList(ColorStateList colorStateList) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, colorStateList);
        } else {
            this.f205c.f209b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, android.support.v4.b.a.f
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, mode);
        } else {
            this.f205c.f209b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        if (this.f217b != null) {
            return this.f217b.setVisible(z, z2);
        }
        this.f205c.f209b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f217b != null ? this.f217b.isStateful() : this.f205c.f209b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f217b != null ? this.f217b.getOpacity() : this.f205c.f209b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f217b != null ? this.f217b.getIntrinsicWidth() : this.f205c.f209b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f217b != null ? this.f217b.getIntrinsicHeight() : this.f205c.f209b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f217b != null ? android.support.v4.b.a.a.b(this.f217b) : this.f205c.f209b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, z);
        } else {
            this.f205c.f209b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayA = android.support.v4.a.a.c.a(resources, theme, attributeSet, android.support.c.a.a.e);
                    int resourceId = typedArrayA.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i iVarA = i.a(resources, resourceId, theme);
                        iVarA.a(false);
                        iVarA.setCallback(this.f204a);
                        if (this.f205c.f209b != null) {
                            this.f205c.f209b.setCallback(null);
                        }
                        this.f205c.f209b = iVarA;
                    }
                    typedArrayA.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, android.support.c.a.a.f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        if (this.f206d != null) {
                            a(string, e.a(this.f206d, resourceId2));
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
        this.f205c.a();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.support.c.a.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.f217b != null) {
            android.support.v4.b.a.a.a(this.f217b, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f217b != null) {
            return android.support.v4.b.a.a.d(this.f217b);
        }
        return false;
    }

    private static class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f212a;

        public b(Drawable.ConstantState constantState) {
            this.f212a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            cVar.f217b = this.f212a.newDrawable();
            cVar.f217b.setCallback(cVar.f204a);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            cVar.f217b = this.f212a.newDrawable(resources);
            cVar.f217b.setCallback(cVar.f204a);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            cVar.f217b = this.f212a.newDrawable(resources, theme);
            cVar.f217b.setCallback(cVar.f204a);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f212a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f212a.getChangingConfigurations();
        }
    }

    private static class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        i f209b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        AnimatorSet f210c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        android.support.v4.g.a<Animator, String> f211d;
        private ArrayList<Animator> e;

        public a(Context context, a aVar, Drawable.Callback callback, Resources resources) {
            if (aVar != null) {
                this.f208a = aVar.f208a;
                if (aVar.f209b != null) {
                    Drawable.ConstantState constantState = aVar.f209b.getConstantState();
                    if (resources != null) {
                        this.f209b = (i) constantState.newDrawable(resources);
                    } else {
                        this.f209b = (i) constantState.newDrawable();
                    }
                    this.f209b = (i) this.f209b.mutate();
                    this.f209b.setCallback(callback);
                    this.f209b.setBounds(aVar.f209b.getBounds());
                    this.f209b.a(false);
                }
                if (aVar.e != null) {
                    int size = aVar.e.size();
                    this.e = new ArrayList<>(size);
                    this.f211d = new android.support.v4.g.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = aVar.e.get(i);
                        Animator animatorClone = animator.clone();
                        String str = aVar.f211d.get(animator);
                        animatorClone.setTarget(this.f209b.a(str));
                        this.e.add(animatorClone);
                        this.f211d.put(animatorClone, str);
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
            return this.f208a;
        }

        public void a() {
            if (this.f210c == null) {
                this.f210c = new AnimatorSet();
            }
            this.f210c.playTogether(this.e);
        }
    }

    private void a(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= childAnimations.size()) {
                    break;
                }
                a(childAnimations.get(i2));
                i = i2 + 1;
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.e == null) {
                    this.e = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.e);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.f205c.f209b.a(str));
        if (Build.VERSION.SDK_INT < 21) {
            a(animator);
        }
        if (this.f205c.e == null) {
            this.f205c.e = new ArrayList();
            this.f205c.f211d = new android.support.v4.g.a<>();
        }
        this.f205c.e.add(animator);
        this.f205c.f211d.put(animator, str);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f217b != null ? ((AnimatedVectorDrawable) this.f217b).isRunning() : this.f205c.f210c.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f217b != null) {
            ((AnimatedVectorDrawable) this.f217b).start();
        } else if (!this.f205c.f210c.isStarted()) {
            this.f205c.f210c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f217b != null) {
            ((AnimatedVectorDrawable) this.f217b).stop();
        } else {
            this.f205c.f210c.end();
        }
    }
}
