package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.TintTypedArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, p.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RadioButton f789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CheckBox f791e;
    private TextView f;
    private ImageView g;
    private ImageView h;
    private LinearLayout i;
    private Drawable j;
    private int k;
    private Context l;
    private boolean m;
    private Drawable n;
    private boolean o;
    private int p;
    private LayoutInflater q;
    private boolean r;

    @Override // androidx.appcompat.view.menu.p.a
    public boolean a() {
        return false;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0012a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, a.j.MenuView, i, 0);
        this.j = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.MenuView_android_itemBackground);
        this.k = tintTypedArrayObtainStyledAttributes.getResourceId(a.j.MenuView_android_itemTextAppearance, -1);
        this.m = tintTypedArrayObtainStyledAttributes.getBoolean(a.j.MenuView_preserveIconSpacing, false);
        this.l = context;
        this.n = tintTypedArrayObtainStyledAttributes.getDrawable(a.j.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, a.C0012a.dropDownListViewStyle, 0);
        this.o = typedArrayObtainStyledAttributes.hasValue(0);
        tintTypedArrayObtainStyledAttributes.recycle();
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        androidx.core.h.r.a(this, this.j);
        TextView textView = (TextView) findViewById(a.f.title);
        this.f790d = textView;
        int i = this.k;
        if (i != -1) {
            textView.setTextAppearance(this.l, i);
        }
        this.f = (TextView) findViewById(a.f.shortcut);
        ImageView imageView = (ImageView) findViewById(a.f.submenuarrow);
        this.g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.h = (ImageView) findViewById(a.f.group_divider);
        this.i = (LinearLayout) findViewById(a.f.content);
    }

    @Override // androidx.appcompat.view.menu.p.a
    public void a(j jVar, int i) {
        this.f787a = jVar;
        this.p = i;
        setVisibility(jVar.isVisible() ? 0 : 8);
        setTitle(jVar.a((p.a) this));
        setCheckable(jVar.isCheckable());
        a(jVar.f(), jVar.d());
        setIcon(jVar.getIcon());
        setEnabled(jVar.isEnabled());
        setSubMenuArrowVisible(jVar.hasSubMenu());
        setContentDescription(jVar.getContentDescription());
    }

    private void a(View view) {
        a(view, -1);
    }

    private void a(View view, int i) {
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    public void setForceShowIcon(boolean z) {
        this.r = z;
        this.m = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f790d.setText(charSequence);
            if (this.f790d.getVisibility() != 0) {
                this.f790d.setVisibility(0);
                return;
            }
            return;
        }
        if (this.f790d.getVisibility() != 8) {
            this.f790d.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.view.menu.p.a
    public j getItemData() {
        return this.f787a;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.f789c == null && this.f791e == null) {
            return;
        }
        if (this.f787a.g()) {
            if (this.f789c == null) {
                c();
            }
            compoundButton = this.f789c;
            compoundButton2 = this.f791e;
        } else {
            if (this.f791e == null) {
                d();
            }
            compoundButton = this.f791e;
            compoundButton2 = this.f789c;
        }
        if (z) {
            compoundButton.setChecked(this.f787a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f791e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f789c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f787a.g()) {
            if (this.f789c == null) {
                c();
            }
            compoundButton = this.f789c;
        } else {
            if (this.f791e == null) {
                d();
            }
            compoundButton = this.f791e;
        }
        compoundButton.setChecked(z);
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void a(boolean z, char c2) {
        int i = (z && this.f787a.f()) ? 0 : 8;
        if (i == 0) {
            this.f.setText(this.f787a.e());
        }
        if (this.f.getVisibility() != i) {
            this.f.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f787a.i() || this.r;
        if (z || this.m) {
            if (this.f788b == null && drawable == null && !this.m) {
                return;
            }
            if (this.f788b == null) {
                b();
            }
            if (drawable != null || this.m) {
                ImageView imageView = this.f788b;
                if (!z) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.f788b.getVisibility() != 0) {
                    this.f788b.setVisibility(0);
                    return;
                }
                return;
            }
            this.f788b.setVisibility(8);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f788b != null && this.m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f788b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void b() {
        ImageView imageView = (ImageView) getInflater().inflate(a.g.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f788b = imageView;
        a(imageView, 0);
    }

    private void c() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(a.g.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f789c = radioButton;
        a(radioButton);
    }

    private void d() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(a.g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f791e = checkBox;
        a(checkBox);
    }

    private LayoutInflater getInflater() {
        if (this.q == null) {
            this.q = LayoutInflater.from(getContext());
        }
        return this.q;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setVisibility((this.o || !z) ? 8 : 0);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
        rect.top += this.h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }
}
