package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a;
import android.support.v7.view.menu.p;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements p.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f1357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f1358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RadioButton f1359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f1360d;
    private CheckBox e;
    private TextView f;
    private ImageView g;
    private Drawable h;
    private int i;
    private Context j;
    private boolean k;
    private Drawable l;
    private int m;
    private LayoutInflater n;
    private boolean o;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0032a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, a.j.MenuView, i, 0);
        this.h = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.MenuView_android_itemBackground);
        this.i = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.MenuView_android_itemTextAppearance, -1);
        this.k = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.MenuView_preserveIconSpacing, false);
        this.j = context;
        this.l = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.MenuView_subMenuArrow);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        android.support.v4.view.s.a(this, this.h);
        this.f1360d = (TextView) findViewById(a.f.title);
        if (this.i != -1) {
            this.f1360d.setTextAppearance(this.j, this.i);
        }
        this.f = (TextView) findViewById(a.f.shortcut);
        this.g = (ImageView) findViewById(a.f.submenuarrow);
        if (this.g != null) {
            this.g.setImageDrawable(this.l);
        }
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.f1357a = jVar;
        this.m = i;
        setVisibility(jVar.isVisible() ? 0 : 8);
        setTitle(jVar.a((p.a) this));
        setCheckable(jVar.isCheckable());
        a(jVar.f(), jVar.d());
        setIcon(jVar.getIcon());
        setEnabled(jVar.isEnabled());
        setSubMenuArrowVisible(jVar.hasSubMenu());
        setContentDescription(jVar.getContentDescription());
    }

    public void setForceShowIcon(boolean z) {
        this.o = z;
        this.k = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f1360d.setText(charSequence);
            if (this.f1360d.getVisibility() != 0) {
                this.f1360d.setVisibility(0);
                return;
            }
            return;
        }
        if (this.f1360d.getVisibility() != 8) {
            this.f1360d.setVisibility(8);
        }
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.f1357a;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.f1359c != null || this.e != null) {
            if (this.f1357a.g()) {
                if (this.f1359c == null) {
                    c();
                }
                compoundButton = this.f1359c;
                compoundButton2 = this.e;
            } else {
                if (this.e == null) {
                    d();
                }
                compoundButton = this.e;
                compoundButton2 = this.f1359c;
            }
            if (z) {
                compoundButton.setChecked(this.f1357a.isChecked());
                int i = z ? 0 : 8;
                if (compoundButton.getVisibility() != i) {
                    compoundButton.setVisibility(i);
                }
                if (compoundButton2 != null && compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.e != null) {
                this.e.setVisibility(8);
            }
            if (this.f1359c != null) {
                this.f1359c.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f1357a.g()) {
            if (this.f1359c == null) {
                c();
            }
            compoundButton = this.f1359c;
        } else {
            if (this.e == null) {
                d();
            }
            compoundButton = this.e;
        }
        compoundButton.setChecked(z);
    }

    private void setSubMenuArrowVisible(boolean z) {
        if (this.g != null) {
            this.g.setVisibility(z ? 0 : 8);
        }
    }

    public void a(boolean z, char c2) {
        int i = (z && this.f1357a.f()) ? 0 : 8;
        if (i == 0) {
            this.f.setText(this.f1357a.e());
        }
        if (this.f.getVisibility() != i) {
            this.f.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f1357a.i() || this.o;
        if (z || this.k) {
            if (this.f1358b != null || drawable != null || this.k) {
                if (this.f1358b == null) {
                    b();
                }
                if (drawable != null || this.k) {
                    ImageView imageView = this.f1358b;
                    if (!z) {
                        drawable = null;
                    }
                    imageView.setImageDrawable(drawable);
                    if (this.f1358b.getVisibility() != 0) {
                        this.f1358b.setVisibility(0);
                        return;
                    }
                    return;
                }
                this.f1358b.setVisibility(8);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1358b != null && this.k) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1358b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void b() {
        this.f1358b = (ImageView) getInflater().inflate(a.g.abc_list_menu_item_icon, (ViewGroup) this, false);
        addView(this.f1358b, 0);
    }

    private void c() {
        this.f1359c = (RadioButton) getInflater().inflate(a.g.abc_list_menu_item_radio, (ViewGroup) this, false);
        addView(this.f1359c);
    }

    private void d() {
        this.e = (CheckBox) getInflater().inflate(a.g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        addView(this.e);
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return false;
    }

    private LayoutInflater getInflater() {
        if (this.n == null) {
            this.n = LayoutInflater.from(getContext());
        }
        return this.n;
    }
}
