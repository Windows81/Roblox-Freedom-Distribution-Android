package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.a.a.j;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.g;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int[] f1212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f1213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f1214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected j f1215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f1216e;
    private String f;

    public void b(ConstraintLayout constraintLayout) {
    }

    public void c(ConstraintLayout constraintLayout) {
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    public b(Context context) {
        super(context);
        this.f1212a = new int[32];
        this.f1216e = false;
        this.f1214c = context;
        a((AttributeSet) null);
    }

    protected void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, g.b.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == g.b.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f = string;
                    setIds(string);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1212a, this.f1213b);
    }

    public void setReferencedIds(int[] iArr) {
        this.f1213b = 0;
        for (int i : iArr) {
            setTag(i, null);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        int i2 = this.f1213b + 1;
        int[] iArr = this.f1212a;
        if (i2 > iArr.length) {
            this.f1212a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1212a;
        int i3 = this.f1213b;
        iArr2[i3] = i;
        this.f1213b = i3 + 1;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1216e) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void a() {
        if (this.f1215d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.a) {
            ((ConstraintLayout.a) layoutParams).al = this.f1215d;
        }
    }

    private void a(String str) {
        int iIntValue;
        Object objA;
        if (str == null || this.f1214c == null) {
            return;
        }
        String strTrim = str.trim();
        try {
            iIntValue = g.a.class.getField(strTrim).getInt(null);
        } catch (Exception unused) {
            iIntValue = 0;
        }
        if (iIntValue == 0) {
            iIntValue = this.f1214c.getResources().getIdentifier(strTrim, "id", this.f1214c.getPackageName());
        }
        if (iIntValue == 0 && isInEditMode() && (getParent() instanceof ConstraintLayout) && (objA = ((ConstraintLayout) getParent()).a(0, strTrim)) != null && (objA instanceof Integer)) {
            iIntValue = ((Integer) objA).intValue();
        }
        if (iIntValue != 0) {
            setTag(iIntValue, null);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void setIds(String str) {
        if (str == null) {
            return;
        }
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                a(str.substring(i));
                return;
            } else {
                a(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    public void a(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f);
        }
        j jVar = this.f1215d;
        if (jVar == null) {
            return;
        }
        jVar.J();
        for (int i = 0; i < this.f1213b; i++) {
            View viewA = constraintLayout.a(this.f1212a[i]);
            if (viewA != null) {
                this.f1215d.b(constraintLayout.a(viewA));
            }
        }
    }
}
