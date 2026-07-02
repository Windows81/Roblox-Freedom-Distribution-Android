package android.support.design.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.a;
import android.support.v4.view.AbsSavedState;
import android.support.v4.widget.Space;
import android.support.v7.a.a;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.DrawableUtils;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.WithHint;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements WithHint {
    private boolean A;
    private Drawable B;
    private Drawable C;
    private ColorStateList D;
    private boolean E;
    private PorterDuff.Mode F;
    private boolean G;
    private ColorStateList H;
    private ColorStateList I;
    private boolean J;
    private boolean K;
    private ValueAnimator L;
    private boolean M;
    private boolean N;
    private boolean O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    EditText f345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final d f348d;
    private final FrameLayout e;
    private CharSequence f;
    private boolean g;
    private CharSequence h;
    private Paint i;
    private final Rect j;
    private LinearLayout k;
    private int l;
    private Typeface m;
    private boolean n;
    private int o;
    private boolean p;
    private CharSequence q;
    private TextView r;
    private int s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private Drawable x;
    private CharSequence y;
    private CheckableImageButton z;

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.j = new Rect();
        this.f348d = new d(this);
        q.a(context);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.e = new FrameLayout(context);
        this.e.setAddStatesFromChildren(true);
        addView(this.e);
        this.f348d.a(android.support.design.widget.a.f359b);
        this.f348d.b(new AccelerateInterpolator());
        this.f348d.b(8388659);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, a.j.TextInputLayout, i, a.i.Widget_Design_TextInputLayout);
        this.g = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.TextInputLayout_hintEnabled, true);
        setHint(tintTypedArrayObtainStyledAttributes.getText(a.j.TextInputLayout_android_hint));
        this.K = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.TextInputLayout_hintAnimationEnabled, true);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateList = tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.TextInputLayout_android_textColorHint);
            this.I = colorStateList;
            this.H = colorStateList;
        }
        if (tintTypedArrayObtainStyledAttributes.getResourceId(a.j.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(tintTypedArrayObtainStyledAttributes.getResourceId(a.j.TextInputLayout_hintTextAppearance, 0));
        }
        this.o = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.TextInputLayout_errorTextAppearance, 0);
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.TextInputLayout_errorEnabled, false);
        boolean z2 = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(tintTypedArrayObtainStyledAttributes.getInt(a.j.TextInputLayout_counterMaxLength, -1));
        this.t = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.TextInputLayout_counterTextAppearance, 0);
        this.u = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.TextInputLayout_counterOverflowTextAppearance, 0);
        this.w = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.TextInputLayout_passwordToggleEnabled, false);
        this.x = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.TextInputLayout_passwordToggleDrawable);
        this.y = tintTypedArrayObtainStyledAttributes.getText(a.j.TextInputLayout_passwordToggleContentDescription);
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextInputLayout_passwordToggleTint)) {
            this.E = true;
            this.D = tintTypedArrayObtainStyledAttributes.getColorStateList(a.j.TextInputLayout_passwordToggleTint);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(a.j.TextInputLayout_passwordToggleTintMode)) {
            this.G = true;
            this.F = u.a(tintTypedArrayObtainStyledAttributes.getInt(a.j.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        setErrorEnabled(z);
        setCounterEnabled(z2);
        h();
        if (android.support.v4.view.s.d(this) == 0) {
            android.support.v4.view.s.a((View) this, 1);
        }
        android.support.v4.view.s.a(this, new a());
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.e.addView(view, layoutParams2);
            this.e.setLayoutParams(layoutParams);
            a();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    public void setTypeface(Typeface typeface) {
        if ((this.m != null && !this.m.equals(typeface)) || (this.m == null && typeface != null)) {
            this.m = typeface;
            this.f348d.a(typeface);
            if (this.r != null) {
                this.r.setTypeface(typeface);
            }
            if (this.f346b != null) {
                this.f346b.setTypeface(typeface);
            }
        }
    }

    public Typeface getTypeface() {
        return this.m;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        if (this.f == null || this.f345a == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        CharSequence hint = this.f345a.getHint();
        this.f345a.setHint(this.f);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f345a.setHint(hint);
        }
    }

    private void setEditText(EditText editText) {
        if (this.f345a != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (!(editText instanceof p)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f345a = editText;
        if (!f()) {
            this.f348d.a(this.f345a.getTypeface());
        }
        this.f348d.a(this.f345a.getTextSize());
        int gravity = this.f345a.getGravity();
        this.f348d.b((gravity & (-113)) | 48);
        this.f348d.a(gravity);
        this.f345a.addTextChangedListener(new TextWatcher() { // from class: android.support.design.widget.TextInputLayout.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.a(!TextInputLayout.this.O);
                if (TextInputLayout.this.f347c) {
                    TextInputLayout.this.a(editable.length());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        if (this.H == null) {
            this.H = this.f345a.getHintTextColors();
        }
        if (this.g && TextUtils.isEmpty(this.h)) {
            this.f = this.f345a.getHint();
            setHint(this.f);
            this.f345a.setHint((CharSequence) null);
        }
        if (this.r != null) {
            a(this.f345a.getText().length());
        }
        if (this.k != null) {
            b();
        }
        e();
        a(false, true);
    }

    private void a() {
        int i;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.e.getLayoutParams();
        if (this.g) {
            if (this.i == null) {
                this.i = new Paint();
            }
            this.i.setTypeface(this.f348d.b());
            this.i.setTextSize(this.f348d.e());
            i = (int) (-this.i.ascent());
        } else {
            i = 0;
        }
        if (i != layoutParams.topMargin) {
            layoutParams.topMargin = i;
            this.e.requestLayout();
        }
    }

    void a(boolean z) {
        a(z, false);
    }

    void a(boolean z, boolean z2) {
        boolean zIsEnabled = isEnabled();
        boolean z3 = (this.f345a == null || TextUtils.isEmpty(this.f345a.getText())) ? false : true;
        boolean zA = a(getDrawableState(), R.attr.state_focused);
        boolean z4 = TextUtils.isEmpty(getError()) ? false : true;
        if (this.H != null) {
            this.f348d.b(this.H);
        }
        if (zIsEnabled && this.v && this.r != null) {
            this.f348d.a(this.r.getTextColors());
        } else if (zIsEnabled && zA && this.I != null) {
            this.f348d.a(this.I);
        } else if (this.H != null) {
            this.f348d.a(this.H);
        }
        if (z3 || (isEnabled() && (zA || z4))) {
            if (z2 || this.J) {
                c(z);
                return;
            }
            return;
        }
        if (z2 || !this.J) {
            d(z);
        }
    }

    public EditText getEditText() {
        return this.f345a;
    }

    public void setHint(CharSequence charSequence) {
        if (this.g) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(RecyclerView.ItemAnimator.FLAG_MOVED);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        this.h = charSequence;
        this.f348d.a(charSequence);
    }

    @Override // android.support.v7.widget.WithHint
    public CharSequence getHint() {
        if (this.g) {
            return this.h;
        }
        return null;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.g) {
            this.g = z;
            CharSequence hint = this.f345a.getHint();
            if (!this.g) {
                if (!TextUtils.isEmpty(this.h) && TextUtils.isEmpty(hint)) {
                    this.f345a.setHint(this.h);
                }
                setHintInternal(null);
            } else if (!TextUtils.isEmpty(hint)) {
                if (TextUtils.isEmpty(this.h)) {
                    setHint(hint);
                }
                this.f345a.setHint((CharSequence) null);
            }
            if (this.f345a != null) {
                a();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        this.f348d.c(i);
        this.I = this.f348d.h();
        if (this.f345a != null) {
            a(false);
            a();
        }
    }

    private void a(TextView textView, int i) {
        if (this.k == null) {
            this.k = new LinearLayout(getContext());
            this.k.setOrientation(0);
            addView(this.k, -1, -2);
            this.k.addView(new Space(getContext()), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f345a != null) {
                b();
            }
        }
        this.k.setVisibility(0);
        this.k.addView(textView, i);
        this.l++;
    }

    private void b() {
        android.support.v4.view.s.a(this.k, android.support.v4.view.s.f(this.f345a), 0, android.support.v4.view.s.g(this.f345a), this.f345a.getPaddingBottom());
    }

    private void a(TextView textView) {
        if (this.k != null) {
            this.k.removeView(textView);
            int i = this.l - 1;
            this.l = i;
            if (i == 0) {
                this.k.setVisibility(8);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setErrorEnabled(boolean r6) {
        /*
            r5 = this;
            r1 = 1
            r2 = 0
            boolean r0 = r5.n
            if (r0 == r6) goto L79
            android.widget.TextView r0 = r5.f346b
            if (r0 == 0) goto L13
            android.widget.TextView r0 = r5.f346b
            android.view.ViewPropertyAnimator r0 = r0.animate()
            r0.cancel()
        L13:
            if (r6 == 0) goto L7d
            android.support.v7.widget.AppCompatTextView r0 = new android.support.v7.widget.AppCompatTextView
            android.content.Context r3 = r5.getContext()
            r0.<init>(r3)
            r5.f346b = r0
            android.widget.TextView r0 = r5.f346b
            int r3 = android.support.design.a.e.textinput_error
            r0.setId(r3)
            android.graphics.Typeface r0 = r5.m
            if (r0 == 0) goto L32
            android.widget.TextView r0 = r5.f346b
            android.graphics.Typeface r3 = r5.m
            r0.setTypeface(r3)
        L32:
            android.widget.TextView r0 = r5.f346b     // Catch: java.lang.Exception -> L7a
            int r3 = r5.o     // Catch: java.lang.Exception -> L7a
            android.support.v4.widget.n.a(r0, r3)     // Catch: java.lang.Exception -> L7a
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L7a
            r3 = 23
            if (r0 < r3) goto L8b
            android.widget.TextView r0 = r5.f346b     // Catch: java.lang.Exception -> L7a
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: java.lang.Exception -> L7a
            int r0 = r0.getDefaultColor()     // Catch: java.lang.Exception -> L7a
            r3 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r3) goto L8b
            r0 = r1
        L4f:
            if (r0 == 0) goto L67
            android.widget.TextView r0 = r5.f346b
            int r3 = android.support.v7.a.a.i.TextAppearance_AppCompat_Caption
            android.support.v4.widget.n.a(r0, r3)
            android.widget.TextView r0 = r5.f346b
            android.content.Context r3 = r5.getContext()
            int r4 = android.support.v7.a.a.c.error_color_material
            int r3 = android.support.v4.a.c.c(r3, r4)
            r0.setTextColor(r3)
        L67:
            android.widget.TextView r0 = r5.f346b
            r3 = 4
            r0.setVisibility(r3)
            android.widget.TextView r0 = r5.f346b
            android.support.v4.view.s.b(r0, r1)
            android.widget.TextView r0 = r5.f346b
            r5.a(r0, r2)
        L77:
            r5.n = r6
        L79:
            return
        L7a:
            r0 = move-exception
            r0 = r1
            goto L4f
        L7d:
            r5.p = r2
            r5.c()
            android.widget.TextView r0 = r5.f346b
            r5.a(r0)
            r0 = 0
            r5.f346b = r0
            goto L77
        L8b:
            r0 = r2
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.TextInputLayout.setErrorEnabled(boolean):void");
    }

    public void setErrorTextAppearance(int i) {
        this.o = i;
        if (this.f346b != null) {
            android.support.v4.widget.n.a(this.f346b, i);
        }
    }

    public void setError(CharSequence charSequence) {
        a(charSequence, android.support.v4.view.s.v(this) && isEnabled() && (this.f346b == null || !TextUtils.equals(this.f346b.getText(), charSequence)));
    }

    private void a(final CharSequence charSequence, boolean z) {
        this.q = charSequence;
        if (!this.n) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        this.p = TextUtils.isEmpty(charSequence) ? false : true;
        this.f346b.animate().cancel();
        if (this.p) {
            this.f346b.setText(charSequence);
            this.f346b.setVisibility(0);
            if (z) {
                if (this.f346b.getAlpha() == 1.0f) {
                    this.f346b.setAlpha(0.0f);
                }
                this.f346b.animate().alpha(1.0f).setDuration(200L).setInterpolator(android.support.design.widget.a.f361d).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.TextInputLayout.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        TextInputLayout.this.f346b.setVisibility(0);
                    }
                }).start();
            } else {
                this.f346b.setAlpha(1.0f);
            }
        } else if (this.f346b.getVisibility() == 0) {
            if (z) {
                this.f346b.animate().alpha(0.0f).setDuration(200L).setInterpolator(android.support.design.widget.a.f360c).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.TextInputLayout.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TextInputLayout.this.f346b.setText(charSequence);
                        TextInputLayout.this.f346b.setVisibility(4);
                    }
                }).start();
            } else {
                this.f346b.setText(charSequence);
                this.f346b.setVisibility(4);
            }
        }
        c();
        a(z);
    }

    public void setCounterEnabled(boolean z) {
        if (this.f347c != z) {
            if (z) {
                this.r = new AppCompatTextView(getContext());
                this.r.setId(a.e.textinput_counter);
                if (this.m != null) {
                    this.r.setTypeface(this.m);
                }
                this.r.setMaxLines(1);
                try {
                    android.support.v4.widget.n.a(this.r, this.t);
                } catch (Exception e) {
                    android.support.v4.widget.n.a(this.r, a.i.TextAppearance_AppCompat_Caption);
                    this.r.setTextColor(android.support.v4.a.c.c(getContext(), a.c.error_color_material));
                }
                a(this.r, -1);
                if (this.f345a == null) {
                    a(0);
                } else {
                    a(this.f345a.getText().length());
                }
            } else {
                a(this.r);
                this.r = null;
            }
            this.f347c = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.s != i) {
            if (i > 0) {
                this.s = i;
            } else {
                this.s = -1;
            }
            if (this.f347c) {
                a(this.f345a == null ? 0 : this.f345a.getText().length());
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        a((ViewGroup) this, z);
        super.setEnabled(z);
    }

    private static void a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z);
            }
        }
    }

    public int getCounterMaxLength() {
        return this.s;
    }

    void a(int i) {
        boolean z = this.v;
        if (this.s == -1) {
            this.r.setText(String.valueOf(i));
            this.v = false;
        } else {
            this.v = i > this.s;
            if (z != this.v) {
                android.support.v4.widget.n.a(this.r, this.v ? this.u : this.t);
            }
            this.r.setText(getContext().getString(a.h.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.s)));
        }
        if (this.f345a != null && z != this.v) {
            a(false);
            c();
        }
    }

    private void c() {
        Drawable background;
        if (this.f345a != null && (background = this.f345a.getBackground()) != null) {
            d();
            if (DrawableUtils.canSafelyMutateDrawable(background)) {
                background = background.mutate();
            }
            if (this.p && this.f346b != null) {
                background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.f346b.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else if (this.v && this.r != null) {
                background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.r.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else {
                android.support.v4.b.a.a.f(background);
                this.f345a.refreshDrawableState();
            }
        }
    }

    private void d() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i == 21 || i == 22) && (background = this.f345a.getBackground()) != null && !this.M) {
            Drawable drawableNewDrawable = background.getConstantState().newDrawable();
            if (background instanceof DrawableContainer) {
                this.M = f.a((DrawableContainer) background, drawableNewDrawable.getConstantState());
            }
            if (!this.M) {
                android.support.v4.view.s.a(this.f345a, drawableNewDrawable);
                this.M = true;
            }
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.TextInputLayout.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CharSequence f355a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f356b;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f355a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f356b = parcel.readInt() == 1;
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f355a, parcel, i);
            parcel.writeInt(this.f356b ? 1 : 0);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f355a) + "}";
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.p) {
            savedState.f355a = getError();
        }
        savedState.f356b = this.A;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f355a);
        if (savedState.f356b) {
            b(true);
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.O = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.O = false;
    }

    public CharSequence getError() {
        if (this.n) {
            return this.q;
        }
        return null;
    }

    public void setHintAnimationEnabled(boolean z) {
        this.K = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.g) {
            this.f348d.a(canvas);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        e();
        super.onMeasure(i, i2);
    }

    private void e() {
        if (this.f345a != null) {
            if (g()) {
                if (this.z == null) {
                    this.z = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(a.g.design_text_input_password_icon, (ViewGroup) this.e, false);
                    this.z.setImageDrawable(this.x);
                    this.z.setContentDescription(this.y);
                    this.e.addView(this.z);
                    this.z.setOnClickListener(new View.OnClickListener() { // from class: android.support.design.widget.TextInputLayout.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TextInputLayout.this.b(false);
                        }
                    });
                }
                if (this.f345a != null && android.support.v4.view.s.i(this.f345a) <= 0) {
                    this.f345a.setMinimumHeight(android.support.v4.view.s.i(this.z));
                }
                this.z.setVisibility(0);
                this.z.setChecked(this.A);
                if (this.B == null) {
                    this.B = new ColorDrawable();
                }
                this.B.setBounds(0, 0, this.z.getMeasuredWidth(), 1);
                Drawable[] drawableArrB = android.support.v4.widget.n.b(this.f345a);
                if (drawableArrB[2] != this.B) {
                    this.C = drawableArrB[2];
                }
                android.support.v4.widget.n.a(this.f345a, drawableArrB[0], drawableArrB[1], this.B, drawableArrB[3]);
                this.z.setPadding(this.f345a.getPaddingLeft(), this.f345a.getPaddingTop(), this.f345a.getPaddingRight(), this.f345a.getPaddingBottom());
                return;
            }
            if (this.z != null && this.z.getVisibility() == 0) {
                this.z.setVisibility(8);
            }
            if (this.B != null) {
                Drawable[] drawableArrB2 = android.support.v4.widget.n.b(this.f345a);
                if (drawableArrB2[2] == this.B) {
                    android.support.v4.widget.n.a(this.f345a, drawableArrB2[0], drawableArrB2[1], this.C, drawableArrB2[3]);
                    this.B = null;
                }
            }
        }
    }

    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? android.support.v7.b.a.b.b(getContext(), i) : null);
    }

    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.x = drawable;
        if (this.z != null) {
            this.z.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.y = charSequence;
        if (this.z != null) {
            this.z.setContentDescription(charSequence);
        }
    }

    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.x;
    }

    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.y;
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (this.w != z) {
            this.w = z;
            if (!z && this.A && this.f345a != null) {
                this.f345a.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.A = false;
            e();
        }
    }

    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.D = colorStateList;
        this.E = true;
        h();
    }

    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.F = mode;
        this.G = true;
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (this.w) {
            int selectionEnd = this.f345a.getSelectionEnd();
            if (f()) {
                this.f345a.setTransformationMethod(null);
                this.A = true;
            } else {
                this.f345a.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.A = false;
            }
            this.z.setChecked(this.A);
            if (z) {
                this.z.jumpDrawablesToCurrentState();
            }
            this.f345a.setSelection(selectionEnd);
        }
    }

    private boolean f() {
        return this.f345a != null && (this.f345a.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private boolean g() {
        return this.w && (f() || this.A);
    }

    private void h() {
        if (this.x != null) {
            if (this.E || this.G) {
                this.x = android.support.v4.b.a.a.g(this.x).mutate();
                if (this.E) {
                    android.support.v4.b.a.a.a(this.x, this.D);
                }
                if (this.G) {
                    android.support.v4.b.a.a.a(this.x, this.F);
                }
                if (this.z != null && this.z.getDrawable() != this.x) {
                    this.z.setImageDrawable(this.x);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.g && this.f345a != null) {
            Rect rect = this.j;
            r.b(this, this.f345a, rect);
            int compoundPaddingLeft = rect.left + this.f345a.getCompoundPaddingLeft();
            int compoundPaddingRight = rect.right - this.f345a.getCompoundPaddingRight();
            this.f348d.a(compoundPaddingLeft, rect.top + this.f345a.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f345a.getCompoundPaddingBottom());
            this.f348d.b(compoundPaddingLeft, getPaddingTop(), compoundPaddingRight, (i4 - i2) - getPaddingBottom());
            this.f348d.f();
        }
    }

    private void c(boolean z) {
        if (this.L != null && this.L.isRunning()) {
            this.L.cancel();
        }
        if (z && this.K) {
            a(1.0f);
        } else {
            this.f348d.b(1.0f);
        }
        this.J = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (!this.N) {
            this.N = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            a(android.support.v4.view.s.v(this) && isEnabled());
            c();
            if (this.f348d != null ? this.f348d.a(drawableState) | false : false) {
                invalidate();
            }
            this.N = false;
        }
    }

    private void d(boolean z) {
        if (this.L != null && this.L.isRunning()) {
            this.L.cancel();
        }
        if (z && this.K) {
            a(0.0f);
        } else {
            this.f348d.b(0.0f);
        }
        this.J = true;
    }

    void a(float f) {
        if (this.f348d.d() != f) {
            if (this.L == null) {
                this.L = new ValueAnimator();
                this.L.setInterpolator(android.support.design.widget.a.f358a);
                this.L.setDuration(200L);
                this.L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.TextInputLayout.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        TextInputLayout.this.f348d.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            }
            this.L.setFloatValues(this.f348d.d(), f);
            this.L.start();
        }
    }

    private class a extends android.support.v4.view.a {
        a() {
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
        }

        @Override // android.support.v4.view.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            CharSequence charSequenceG = TextInputLayout.this.f348d.g();
            if (!TextUtils.isEmpty(charSequenceG)) {
                accessibilityEvent.getText().add(charSequenceG);
            }
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
            super.onInitializeAccessibilityNodeInfo(view, bVar);
            bVar.a((CharSequence) TextInputLayout.class.getSimpleName());
            CharSequence charSequenceG = TextInputLayout.this.f348d.g();
            if (!TextUtils.isEmpty(charSequenceG)) {
                bVar.b(charSequenceG);
            }
            if (TextInputLayout.this.f345a != null) {
                bVar.a((View) TextInputLayout.this.f345a);
            }
            CharSequence text = TextInputLayout.this.f346b != null ? TextInputLayout.this.f346b.getText() : null;
            if (!TextUtils.isEmpty(text)) {
                bVar.d(true);
                bVar.c(text);
            }
        }
    }

    private static boolean a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
