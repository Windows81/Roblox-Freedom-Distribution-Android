package com.roblox.client.components;

import android.content.Context;
import android.content.res.TypedArray;
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
import com.roblox.client.RobloxSettings;
import com.roblox.client.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RbxEditText extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected EditText f6675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LinearLayout f6676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f6677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected b f6678d;
    private TextView e;
    private AttributeSet f;
    private String g;
    private String h;
    private String i;
    private i j;
    private f k;
    private int l;
    private float m;
    private final a n;

    public interface a {
        void a();
    }

    public RbxEditText(Context context) {
        super(context);
        this.f6675a = null;
        this.f6677c = false;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 0;
        this.m = 22.0f;
        this.n = new a() { // from class: com.roblox.client.components.RbxEditText.6
            @Override // com.roblox.client.components.RbxEditText.a
            public void a() {
                if (RbxEditText.this.k != null) {
                    RbxEditText.this.k.a();
                }
            }
        };
        f();
    }

    public RbxEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6675a = null;
        this.f6677c = false;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = 0;
        this.m = 22.0f;
        this.n = new a() { // from class: com.roblox.client.components.RbxEditText.6
            @Override // com.roblox.client.components.RbxEditText.a
            public void a() {
                if (RbxEditText.this.k != null) {
                    RbxEditText.this.k.a();
                }
            }
        };
        this.f = attributeSet;
        f();
    }

    private void f() {
        inflate(getContext(), 2131361938, this);
        this.f6676b = (LinearLayout) findViewById(2131231071);
        this.f6675a = (EditText) findViewById(2131231072);
        this.e = (TextView) findViewById(2131231070);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(this.f, h.b.RbxEditText);
        this.i = typedArrayObtainStyledAttributes.getString(2);
        this.g = typedArrayObtainStyledAttributes.getString(1);
        this.h = typedArrayObtainStyledAttributes.getString(5);
        this.f6677c = typedArrayObtainStyledAttributes.getBoolean(0, false) && com.roblox.client.b.aG();
        String string = typedArrayObtainStyledAttributes.getString(4);
        if (string != null) {
            setTextBoxInput(string);
        }
        String string2 = typedArrayObtainStyledAttributes.getString(3);
        m.a(this.e, getContext(), this.f);
        m.a(this.f6675a, getContext(), this.f);
        this.f6675a.setHint(this.i);
        this.f6675a.setHintTextColor(getResources().getColor(2131034122));
        this.f6675a.setContentDescription(getContentDescription());
        if (string2 != null) {
            this.e.setText(string2);
        } else {
            this.e.setText(this.i);
        }
        this.e.setVisibility(4);
        this.e.setTextColor(getResources().getColor(2131034121));
        this.f6675a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.components.RbxEditText.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (RbxEditText.this.j != null) {
                    RbxEditText.this.j.a(view, z);
                }
                int length = RbxEditText.this.f6675a.getText().length();
                if (RbxEditText.this.f6677c && length > 0) {
                    if (z) {
                        RbxEditText.this.d();
                    } else {
                        RbxEditText.this.e();
                    }
                }
            }
        });
        if (this.f6677c) {
            com.roblox.client.b.c.a("Experiment", "EditTextClearIcon", "Enabled");
            this.k = new f() { // from class: com.roblox.client.components.RbxEditText.2
                @Override // com.roblox.client.components.f
                public void a() {
                    com.roblox.client.b.c.a("Experiment", "EditTextClearIcon", "Used");
                    RbxEditText.this.f6675a.setText("");
                }
            };
            this.f6675a.addTextChangedListener(new TextWatcher() { // from class: com.roblox.client.components.RbxEditText.3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (charSequence.length() == 0 && i3 > 0 && RbxEditText.this.f6675a.hasFocus()) {
                        RbxEditText.this.d();
                    }
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (charSequence.length() == 0) {
                        RbxEditText.this.e();
                    }
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }
            });
        }
        this.f6678d = new b(null, null, null, this.n, null);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void setTextBoxInput(String str) {
        switch (str) {
            case "email":
                this.f6675a.setInputType(33);
                break;
            case "number":
                this.f6675a.setInputType(2);
                break;
            case "date":
                this.f6675a.setInputType(20);
                break;
            case "uri":
                this.f6675a.setInputType(17);
                break;
            case "password":
                this.f6675a.setInputType(129);
                break;
            case "textNoSuggestions":
                this.f6675a.setInputType(524289);
                break;
        }
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f6678d.a(onTouchListener);
    }

    public void a(int i) {
        a(getResources().getString(i));
    }

    public void a(String str) {
        if (str != null) {
            this.e.setText(str);
        } else {
            this.e.setText(this.g);
        }
        g();
    }

    private void g() {
        if (this.e.getText().length() != 0) {
            this.e.setTextColor(getResources().getColor(2131034136));
            if (this.e.getVisibility() != 0) {
                j();
            }
            if (RobloxSettings.mDeviceDensity == 120) {
                this.f6675a.setTextSize(15.0f);
            }
        }
        this.f6675a.setBackgroundResource(2131167187);
    }

    public void b(int i) {
        b(getResources().getString(i));
    }

    public void b(String str) {
        if (str != null) {
            if (!str.equals(this.e.getText())) {
                this.e.setText(str);
            } else {
                return;
            }
        } else {
            this.e.setText(this.h);
        }
        h();
    }

    private void h() {
        if (this.e.getText().length() != 0) {
            this.m = this.f6675a.getTextSize();
            this.e.setTextColor(getResources().getColor(2131034128));
            if (this.e.getVisibility() != 0) {
                j();
            }
            if (RobloxSettings.mDeviceDensity == 120) {
                this.f6675a.setTextSize(15.0f);
            }
        } else {
            this.e.setVisibility(4);
        }
        this.f6675a.setBackgroundResource(2131167188);
    }

    public void setTextBoxText(String str) {
        this.f6675a.setText(str);
    }

    public void a() {
        if (this.e.getVisibility() != 0) {
            i();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(250L);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.roblox.client.components.RbxEditText.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                RbxEditText.this.e.setVisibility(4);
                RbxEditText.this.i();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.e.startAnimation(alphaAnimation);
    }

    public void setHintText(int i) {
        setHintText(getResources().getString(i));
    }

    public void setHintText(String str) {
        this.f6675a.setHint(str);
    }

    public void setLongHintText(int i) {
        this.e.setText(i);
    }

    public void setLongHintText(String str) {
        this.e.setText(str);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            this.f6675a.requestFocus();
        }
    }

    public EditText getTextBox() {
        return this.f6675a;
    }

    public TextView getBottomLabel() {
        return this.e;
    }

    public String getText() {
        return this.f6675a.getText().toString();
    }

    public void setRbxFocusChangedListener(i iVar) {
        this.j = iVar;
    }

    public i getRbxFocusChangedListener() {
        return this.j;
    }

    public void b() {
        startAnimation(l.a(this));
        this.f6675a.setOnTouchListener(new View.OnTouchListener() { // from class: com.roblox.client.components.RbxEditText.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        setEnabled(false);
    }

    public void c() {
        startAnimation(l.b(this));
        this.f6675a.setOnTouchListener(this.f6678d);
        setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f6675a.setBackgroundResource(2131167186);
        if (RobloxSettings.mDeviceDensity == 120) {
            this.f6675a.setTextSize(this.m);
        }
    }

    private void j() {
        a(0, 0.0f, 1.0f);
    }

    private void a(int i, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setDuration(200L);
        this.e.setAnimation(alphaAnimation);
        this.e.setVisibility(i);
    }

    protected Drawable a(Context context, int i) {
        if (i == 0) {
            return null;
        }
        return android.support.v4.a.c.a(context, i);
    }

    protected void setRightIcon(int i) {
        if (this.l != i) {
            this.l = i;
            this.f6675a.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, a(getContext(), i), (Drawable) null);
        }
    }

    protected void d() {
        this.f6675a.setOnTouchListener(this.f6678d);
        setRightIcon(2131166983);
    }

    protected void e() {
        this.f6675a.setOnTouchListener(null);
        setRightIcon(0);
    }

    protected class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f6686b = new a() { // from class: com.roblox.client.components.RbxEditText.b.1
            @Override // com.roblox.client.components.RbxEditText.a
            public void a() {
            }
        };

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a[] f6687c = new a[4];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View.OnTouchListener f6688d;

        public b(View.OnTouchListener onTouchListener, a aVar, a aVar2, a aVar3, a aVar4) {
            this.f6688d = onTouchListener;
            this.f6687c[0] = aVar == null ? this.f6686b : aVar;
            this.f6687c[1] = aVar2 == null ? this.f6686b : aVar2;
            this.f6687c[2] = aVar3 == null ? this.f6686b : aVar3;
            this.f6687c[3] = aVar4 == null ? this.f6686b : aVar4;
        }

        public void a(View.OnTouchListener onTouchListener) {
            this.f6688d = onTouchListener;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (TextView.class.isAssignableFrom(view.getClass())) {
                TextView textView = (TextView) view;
                if (motionEvent.getAction() == 1) {
                    if (textView.getCompoundDrawables()[0] != null) {
                        if (motionEvent.getRawX() >= r1.getBounds().width() + textView.getLeft()) {
                            this.f6687c[0].a();
                        }
                    }
                    if (textView.getCompoundDrawables()[1] != null) {
                        if (motionEvent.getRawX() >= r1.getBounds().height() + textView.getTop()) {
                            this.f6687c[1].a();
                        }
                    }
                    if (textView.getCompoundDrawables()[2] != null && motionEvent.getRawX() >= textView.getRight() - r1.getBounds().width()) {
                        this.f6687c[2].a();
                    }
                    if (textView.getCompoundDrawables()[3] != null && motionEvent.getRawX() >= textView.getBottom() - r1.getBounds().height()) {
                        this.f6687c[3].a();
                    }
                    view.performClick();
                    if (this.f6688d != null) {
                        this.f6688d.onTouch(view, motionEvent);
                    }
                }
            }
            return false;
        }
    }
}
