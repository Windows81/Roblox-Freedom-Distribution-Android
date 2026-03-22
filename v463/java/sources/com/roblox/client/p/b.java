package com.roblox.client.p;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.q;
import com.roblox.client.ae.k;
import com.roblox.client.o;
import com.roblox.client.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f6628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f6629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f6630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f6631d;

    public View a(LayoutInflater layoutInflater, Fragment fragment) {
        androidx.fragment.app.c cVarR;
        View viewA = a(layoutInflater);
        if (fragment != null && (cVarR = fragment.r()) != null && (cVarR instanceof r)) {
            a((r) cVarR);
        }
        return viewA;
    }

    public View a(LayoutInflater layoutInflater, r rVar) {
        View viewA = a(layoutInflater);
        if (rVar != null && (rVar instanceof r)) {
            a(rVar);
        }
        return viewA;
    }

    private View a(LayoutInflater layoutInflater) {
        View viewInflate = layoutInflater.inflate(o.g.inset_layout, (ViewGroup) null);
        this.f6628a = (ViewGroup) viewInflate.findViewById(o.f.inset_layout_content);
        this.f6629b = viewInflate.findViewById(o.f.inset_layout_top);
        this.f6630c = viewInflate.findViewById(o.f.inset_layout_right);
        this.f6631d = viewInflate.findViewById(o.f.inset_layout_bottom);
        return viewInflate;
    }

    public ViewGroup a() {
        return this.f6628a;
    }

    public void a(int i) {
        View view;
        if (!com.roblox.client.b.bO() || (view = this.f6629b) == null) {
            return;
        }
        view.setBackgroundColor(i);
    }

    public void a(int i, int i2, int i3, int i4) {
        if (this.f6628a == null) {
            return;
        }
        k.c("rbx.screen", "Setting insets: " + i + ", " + i2 + ", " + i3 + ", " + i4);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f6628a.getLayoutParams();
        boolean z = layoutParams.topMargin != i;
        boolean z2 = layoutParams.rightMargin != i3;
        boolean z3 = layoutParams.bottomMargin != i4;
        if (z || z2 || z3) {
            layoutParams.topMargin = i;
            layoutParams.rightMargin = i3;
            layoutParams.bottomMargin = i4;
            this.f6628a.setLayoutParams(layoutParams);
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f6629b.getLayoutParams();
        if (z) {
            layoutParams2.height = i;
            this.f6629b.setLayoutParams(layoutParams2);
        }
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f6630c.getLayoutParams();
        if (z2) {
            layoutParams3.width = i3;
            this.f6630c.setLayoutParams(layoutParams3);
        }
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f6631d.getLayoutParams();
        if (z3) {
            layoutParams4.height = i4;
            this.f6631d.setLayoutParams(layoutParams4);
        }
    }

    private void a(r rVar) {
        if (rVar != null) {
            rVar.L().a().a(rVar, new q<Rect>() { // from class: com.roblox.client.p.b.1
                @Override // androidx.lifecycle.q
                public void a(Rect rect) {
                    if (rect != null) {
                        b.this.a(rect.top, rect.left, rect.right, rect.bottom);
                    }
                }
            });
        }
    }
}
