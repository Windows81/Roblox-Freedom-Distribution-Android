package com.roblox.client.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.roblox.client.o;
import com.roblox.client.u;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RbxEditText extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected EditText f5790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LinearLayout f5791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LinearLayout f5792c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f5793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected b f5794e;
    boolean f;
    private TextView g;
    private AttributeSet h;
    private String i;
    private String j;
    private String k;
    private f l;
    private c m;
    private View.OnClickListener n;
    private int o;
    private float p;
    private boolean q;
    private float r;
    private final a s;

    public interface a {
        void a();
    }

    public RbxEditText(Context context) {
        super(context);
        this.f5790a = null;
        this.f5793d = false;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.o = 0;
        this.f = true;
        this.r = 22.0f;
        this.s = new a() { // from class: com.roblox.client.components.RbxEditText.8
            @Override // com.roblox.client.components.RbxEditText.a
            public void a() {
                if (RbxEditText.this.m != null) {
                    RbxEditText.this.m.a();
                }
                if (RbxEditText.this.n != null) {
                    RbxEditText.this.n.onClick(RbxEditText.this.f5790a);
                }
            }
        };
        f();
    }

    public RbxEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5790a = null;
        this.f5793d = false;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.o = 0;
        this.f = true;
        this.r = 22.0f;
        this.s = new a() { // from class: com.roblox.client.components.RbxEditText.8
            @Override // com.roblox.client.components.RbxEditText.a
            public void a() {
                if (RbxEditText.this.m != null) {
                    RbxEditText.this.m.a();
                }
                if (RbxEditText.this.n != null) {
                    RbxEditText.this.n.onClick(RbxEditText.this.f5790a);
                }
            }
        };
        this.h = attributeSet;
        f();
    }

    private void f() {
        inflate(getContext(), o.g.rbx_edittext, this);
        this.f5791b = (LinearLayout) findViewById(o.f.rbxEditTextBottomLayout);
        this.f5792c = (LinearLayout) findViewById(o.f.rbxEditTextTopLayout);
        this.f5790a = (EditText) findViewById(o.f.rbxEditTextTextBox);
        this.g = (TextView) findViewById(o.f.rbxEditTextBottomLabel);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(this.h, o.l.RbxEditText);
        this.k = typedArrayObtainStyledAttributes.getString(o.l.RbxEditText_hintText);
        this.i = typedArrayObtainStyledAttributes.getString(o.l.RbxEditText_errorText);
        this.j = typedArrayObtainStyledAttributes.getString(o.l.RbxEditText_successText);
        boolean z = false;
        if (typedArrayObtainStyledAttributes.getBoolean(o.l.RbxEditText_enableClearTextIcon, false) && com.roblox.client.b.ad()) {
            z = true;
        }
        this.f5793d = z;
        String string = typedArrayObtainStyledAttributes.getString(o.l.RbxEditText_inputType);
        if (string != null) {
            setTextBoxInput(string);
        }
        String string2 = typedArrayObtainStyledAttributes.getString(o.l.RbxEditText_hintTextLong);
        h.a(this.g, getContext(), this.h);
        h.a(this.f5790a, getContext(), this.h);
        this.f5790a.setHint(this.k);
        this.f5790a.setHintTextColor(getResources().getColor(o.c.RbxGray3));
        this.f5790a.setContentDescription(getContentDescription());
        if (string2 != null) {
            this.g.setText(string2);
        } else {
            this.g.setText(this.k);
        }
        this.g.setVisibility(4);
        this.g.setTextColor(getResources().getColor(o.c.RbxGray2));
        this.f5790a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.components.RbxEditText.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z2) {
                if (RbxEditText.this.l != null) {
                    RbxEditText.this.l.a(view, z2);
                }
                int length = RbxEditText.this.f5790a.getText().length();
                if (!RbxEditText.this.f5793d || length <= 0) {
                    return;
                }
                if (z2) {
                    RbxEditText.this.d();
                } else {
                    RbxEditText.this.e();
                }
            }
        });
        if (this.f5793d) {
            com.roblox.client.analytics.d.a("Experiment", "EditTextClearIcon", "Enabled");
            this.m = new c() { // from class: com.roblox.client.components.RbxEditText.2
                @Override // com.roblox.client.components.c
                public void a() {
                    com.roblox.client.analytics.d.a("Experiment", "EditTextClearIcon", "Used");
                    RbxEditText.this.f5790a.setText("");
                }
            };
            this.f5790a.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.components.RbxEditText.3
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (charSequence.length() == 0 && i3 > 0 && RbxEditText.this.f5790a.hasFocus()) {
                        RbxEditText.this.d();
                    }
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (charSequence.length() == 0) {
                        RbxEditText.this.e();
                    }
                }
            });
        }
        this.p = this.f5790a.getTextSize();
        this.f5790a.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.components.RbxEditText.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.length() > 0 && RbxEditText.this.q && RbxEditText.this.f) {
                    RbxEditText.this.f = false;
                    EditText editText = RbxEditText.this.f5790a;
                    RbxEditText rbxEditText = RbxEditText.this;
                    editText.setTextSize(rbxEditText.a(rbxEditText.getContext()));
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 0 && RbxEditText.this.q) {
                    RbxEditText.this.f5790a.setTextSize(RbxEditText.this.p);
                    RbxEditText.this.f = true;
                }
            }
        });
        b bVar = new b(null, null, null, this.s, null);
        this.f5794e = bVar;
        this.f5790a.setOnTouchListener(bVar);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void setTextBoxInput(java.lang.String r4) {
        /*
            r3 = this;
            int r0 = r4.hashCode()
            r1 = 3
            r2 = 2
            switch(r0) {
                case -1034364087: goto L46;
                case 116076: goto L3c;
                case 3076014: goto L32;
                case 96619420: goto L28;
                case 106642798: goto L1e;
                case 223353409: goto L14;
                case 1216985755: goto La;
                default: goto L9;
            }
        L9:
            goto L50
        La:
            java.lang.String r0 = "password"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 4
            goto L51
        L14:
            java.lang.String r0 = "textNoSuggestions"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 5
            goto L51
        L1e:
            java.lang.String r0 = "phone"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 6
            goto L51
        L28:
            java.lang.String r0 = "email"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 0
            goto L51
        L32:
            java.lang.String r0 = "date"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 2
            goto L51
        L3c:
            java.lang.String r0 = "uri"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 3
            goto L51
        L46:
            java.lang.String r0 = "number"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L50
            r4 = 1
            goto L51
        L50:
            r4 = -1
        L51:
            switch(r4) {
                case 0: goto L82;
                case 1: goto L7c;
                case 2: goto L74;
                case 3: goto L6c;
                case 4: goto L64;
                case 5: goto L5b;
                case 6: goto L55;
                default: goto L54;
            }
        L54:
            goto L89
        L55:
            android.widget.EditText r4 = r3.f5790a
            r4.setInputType(r1)
            goto L89
        L5b:
            android.widget.EditText r4 = r3.f5790a
            r0 = 524289(0x80001, float:7.34685E-40)
            r4.setInputType(r0)
            goto L89
        L64:
            android.widget.EditText r4 = r3.f5790a
            r0 = 129(0x81, float:1.81E-43)
            r4.setInputType(r0)
            goto L89
        L6c:
            android.widget.EditText r4 = r3.f5790a
            r0 = 17
            r4.setInputType(r0)
            goto L89
        L74:
            android.widget.EditText r4 = r3.f5790a
            r0 = 20
            r4.setInputType(r0)
            goto L89
        L7c:
            android.widget.EditText r4 = r3.f5790a
            r4.setInputType(r2)
            goto L89
        L82:
            android.widget.EditText r4 = r3.f5790a
            r0 = 33
            r4.setInputType(r0)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.components.RbxEditText.setTextBoxInput(java.lang.String):void");
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f5794e.a(onTouchListener);
    }

    public void setRightDrawableClickListener(View.OnClickListener onClickListener) {
        this.n = onClickListener;
    }

    public void b(int i) {
        b(getResources().getString(i));
    }

    public void c(String str) {
        if (str != null) {
            this.g.setText(str);
        } else {
            this.g.setText(this.i);
        }
        g();
    }

    private void g() {
        if (this.g.getText().length() != 0) {
            this.g.setTextColor(getResources().getColor(o.c.RbxGray2));
            if (this.g.getVisibility() != 0) {
                k();
            }
            if (u.f7520d == 120) {
                this.f5790a.setTextSize(15.0f);
            }
        }
        j();
    }

    public void b(String str) {
        if (str != null) {
            this.g.setText(str);
        } else {
            this.g.setText(this.i);
        }
        h();
    }

    private void h() {
        if (this.g.getText().length() != 0) {
            this.g.setTextColor(getResources().getColor(o.c.RbxRed2));
            if (this.g.getVisibility() != 0) {
                k();
            }
            androidx.core.widget.i.a(this.g, 11, 100, 1, 2);
            if (u.f7520d == 120) {
                this.f5790a.setTextSize(15.0f);
            }
        }
        this.f5790a.setBackgroundResource(o.e.rbx_bg_flat_edittext_error);
    }

    public void a(int i) {
        a(getResources().getString(i));
    }

    public void a(String str) {
        if (str != null) {
            if (str.equals(this.g.getText())) {
                return;
            } else {
                this.g.setText(str);
            }
        } else {
            this.g.setText(this.j);
        }
        i();
    }

    private void i() {
        if (this.g.getText().length() != 0) {
            this.r = this.f5790a.getTextSize();
            this.g.setTextColor(getResources().getColor(o.c.RbxGreen1));
            if (this.g.getVisibility() != 0) {
                k();
            }
            if (u.f7520d == 120) {
                this.f5790a.setTextSize(15.0f);
            }
        } else {
            this.g.setVisibility(4);
        }
        if (com.roblox.client.ae.l.b() && getId() == o.f.fragment_sign_up_username) {
            this.f5790a.setBackgroundResource(o.e.rbx_bg_flat_edittext);
        } else {
            this.f5790a.setBackgroundResource(o.e.rbx_bg_flat_edittext_success);
        }
    }

    public void setTextBoxText(String str) {
        this.f5790a.setText(str);
    }

    public void a() {
        if (this.g.getVisibility() != 0) {
            j();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(250L);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxEditText.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                RbxEditText.this.g.setVisibility(4);
                RbxEditText.this.j();
            }
        });
        this.g.startAnimation(alphaAnimation);
    }

    public void setHintText(int i) {
        setHintText(getResources().getString(i));
    }

    public void setHintText(final String str) {
        this.f5790a.post(new Runnable() { // from class: com.roblox.client.components.RbxEditText.6
            @Override // java.lang.Runnable
            public void run() {
                Context context = RbxEditText.this.getContext();
                float fA = RbxEditText.this.a(context);
                RbxEditText.this.f5790a.setTextSize(fA);
                if (new Paint(RbxEditText.this.f5790a.getPaint()).measureText(str) >= RbxEditText.this.f5790a.getWidth()) {
                    RbxEditText rbxEditText = RbxEditText.this;
                    fA = x.a(context, rbxEditText.a(str, r2, (rbxEditText.f5790a.getWidth() - RbxEditText.this.f5790a.getPaddingLeft()) - RbxEditText.this.f5790a.getPaddingRight()));
                    RbxEditText.this.f5790a.setTextSize(fA);
                    RbxEditText.this.q = true;
                }
                RbxEditText.this.p = fA;
            }
        });
        this.f5790a.setHint(str);
    }

    int a(String str, Paint paint, float f) {
        float f2 = 100.0f;
        float f3 = 12.0f;
        while (f2 - f3 > 0.5f) {
            float f4 = (f2 + f3) / 2.0f;
            paint.setTextSize(f4);
            if (paint.measureText(str) >= f) {
                f2 = f4;
            } else {
                f3 = f4;
            }
        }
        return (int) f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(Context context) {
        return com.roblox.client.ae.f.a(context) < 360 ? 18 : 22;
    }

    public void setLongHintText(int i) {
        this.g.setText(i);
    }

    public void setLongHintText(String str) {
        this.g.setText(str);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            this.f5790a.requestFocus();
        }
    }

    public EditText getTextBox() {
        return this.f5790a;
    }

    public TextView getBottomLabel() {
        return this.g;
    }

    public LinearLayout getBottomContainer() {
        return this.f5791b;
    }

    public LinearLayout getTopContainer() {
        return this.f5792c;
    }

    public String getText() {
        return this.f5790a.getText().toString();
    }

    public void setRbxFocusChangedListener(f fVar) {
        this.l = fVar;
    }

    public f getRbxFocusChangedListener() {
        return this.l;
    }

    public void b() {
        startAnimation(g.a(this));
        this.f5790a.setOnTouchListener(new View.OnTouchListener() { // from class: com.roblox.client.components.RbxEditText.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        setEnabled(false);
    }

    public void c() {
        startAnimation(g.b(this));
        this.f5790a.setOnTouchListener(this.f5794e);
        setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f5790a.setBackgroundResource(o.e.rbx_bg_flat_edittext);
        if (u.f7520d == 120) {
            this.f5790a.setTextSize(this.r);
        }
    }

    private void k() {
        a(0, 0.0f, 1.0f);
    }

    private void a(int i, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setDuration(200L);
        this.g.setAnimation(alphaAnimation);
        this.g.setVisibility(i);
    }

    protected Drawable a(Context context, int i) {
        if (i == 0) {
            return null;
        }
        return androidx.core.a.b.a(context, i);
    }

    protected void setRightIcon(int i) {
        if (this.o == i) {
            return;
        }
        this.o = i;
        this.f5790a.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, a(getContext(), i), (Drawable) null);
    }

    protected void d() {
        this.f5790a.setOnTouchListener(this.f5794e);
        setRightIcon(o.e.ic_clear);
    }

    protected void e() {
        this.f5790a.setOnTouchListener(null);
        setRightIcon(0);
    }

    protected class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f5805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a[] f5806c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View.OnTouchListener f5807d;

        public b(View.OnTouchListener onTouchListener, a aVar, a aVar2, a aVar3, a aVar4) {
            a aVar5 = new a() { // from class: com.roblox.client.components.RbxEditText.b.1
                @Override // com.roblox.client.components.RbxEditText.a
                public void a() {
                }
            };
            this.f5805b = aVar5;
            this.f5807d = onTouchListener;
            a[] aVarArr = new a[4];
            this.f5806c = aVarArr;
            aVarArr[0] = aVar == null ? aVar5 : aVar;
            this.f5806c[1] = aVar2 == null ? this.f5805b : aVar2;
            this.f5806c[2] = aVar3 == null ? this.f5805b : aVar3;
            this.f5806c[3] = aVar4 == null ? this.f5805b : aVar4;
        }

        public void a(View.OnTouchListener onTouchListener) {
            this.f5807d = onTouchListener;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!TextView.class.isAssignableFrom(view.getClass())) {
                return false;
            }
            TextView textView = (TextView) view;
            if (motionEvent.getAction() == 1) {
                if (textView.getCompoundDrawables()[0] != null && motionEvent.getRawX() >= textView.getLeft() + r2.getBounds().width()) {
                    this.f5806c[0].a();
                }
                if (textView.getCompoundDrawables()[1] != null && motionEvent.getRawX() >= textView.getTop() + r2.getBounds().height()) {
                    this.f5806c[1].a();
                }
                if (textView.getCompoundDrawables()[2] != null && motionEvent.getRawX() >= textView.getRight() - r2.getBounds().width()) {
                    this.f5806c[2].a();
                }
                if (textView.getCompoundDrawables()[3] != null && motionEvent.getRawX() >= textView.getBottom() - r2.getBounds().height()) {
                    this.f5806c[3].a();
                }
                view.performClick();
                View.OnTouchListener onTouchListener = this.f5807d;
                if (onTouchListener != null) {
                    onTouchListener.onTouch(view, motionEvent);
                }
            }
            return false;
        }
    }
}
