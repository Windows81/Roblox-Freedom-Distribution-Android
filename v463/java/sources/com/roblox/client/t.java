package com.roblox.client;

import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class t extends v {
    private FrameLayout az;

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
    }

    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewA = super.a(layoutInflater, viewGroup, bundle);
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "onCreate.");
        this.az = (FrameLayout) viewGroup;
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.enableTransitionType(2);
        layoutTransition.enableTransitionType(3);
        this.az.setLayoutTransition(layoutTransition);
        LinearLayout linearLayout = (LinearLayout) viewA.findViewById(o.f.webview_close_button_layout);
        linearLayout.setVisibility(0);
        linearLayout.findViewById(o.f.webview_close_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.t.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                androidx.fragment.app.c cVarR = t.this.r();
                if (cVarR != null) {
                    cVarR.j().c();
                }
            }
        });
        float f = s().getDisplayMetrics().widthPixels;
        float f2 = s().getDisplayMetrics().heightPixels;
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "widthInPixels: " + f + ". heightInPixels: " + f2 + ".");
        int iAX = b.aX() + linearLayout.getHeight();
        int iAY = b.aY();
        int iApplyDimension = (int) TypedValue.applyDimension(1, (float) iAX, s().getDisplayMetrics());
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, (float) iAY, s().getDisplayMetrics());
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "minWidthInDip: " + iApplyDimension2 + ". minHeightInDip: " + iApplyDimension + ".");
        Point pointA = a(f, f2, iApplyDimension2, iApplyDimension, iAY, iAX);
        if (pointA != null) {
            com.roblox.client.ae.k.c("RobloxModalWebFragment", "width: " + pointA.x + ". height: " + pointA.y + ".");
            viewA.setLayoutParams(new FrameLayout.LayoutParams(pointA.x, pointA.y, 17));
        }
        if (!this.aw) {
            m(false);
        }
        return viewA;
    }

    @Override // com.roblox.client.v
    public void m(boolean z) {
        super.m(z);
        FrameLayout frameLayout = this.az;
        if (frameLayout != null) {
            frameLayout.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "onActivityCreated.");
    }

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
    }

    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public void F() {
        super.F();
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "onResume.");
    }

    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public void G() {
        super.G();
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "onPause.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "onAttach.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "onDetach.");
    }

    @Override // com.roblox.client.v
    public void a(com.roblox.client.app.d dVar) {
        super.a(dVar);
        com.roblox.client.ae.k.c("RobloxModalWebFragment", "updateWebView.");
    }

    private Point a(float f, float f2, int i, int i2, int i3, int i4) {
        if ((com.roblox.abtesting.a.a().p() && (f <= b.aV() || f2 <= b.aW())) || f < i3 || f2 < i4) {
            return null;
        }
        int i5 = (int) (0.9f * f);
        if (i5 > i3) {
            i3 = i5;
        }
        int i6 = (int) (0.8f * f2);
        if (i6 > i4) {
            i4 = i6;
        }
        if (i2 > f2) {
            i2 = i4;
        }
        if (i > f) {
            i = i3;
        }
        return new Point(i, i2);
    }
}
