package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.aug;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f2972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aug f2973b;

    protected final View a(String str) {
        try {
            com.google.android.gms.b.a aVarA = this.f2973b.a(str);
            if (aVarA != null) {
                return (View) com.google.android.gms.b.b.a(aVarA);
            }
        } catch (RemoteException e) {
            mj.b("Unable to call getAssetView on delegate", e);
        }
        return null;
    }

    protected final void a(String str, View view) {
        try {
            this.f2973b.a(str, com.google.android.gms.b.b.a(view));
        } catch (RemoteException e) {
            mj.b("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f2972a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.f2972a != view) {
            super.bringChildToFront(this.f2972a);
        }
    }

    public a getAdChoicesView() {
        View viewA = a("1098");
        if (viewA instanceof a) {
            return (a) viewA;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f2973b != null) {
            try {
                this.f2973b.a(com.google.android.gms.b.b.a(view), i);
            } catch (RemoteException e) {
                mj.b("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f2972a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f2972a == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(a aVar) {
        a("1098", aVar);
    }

    public void setNativeAd(c cVar) {
        try {
            this.f2973b.a((com.google.android.gms.b.a) cVar.a());
        } catch (RemoteException e) {
            mj.b("Unable to call setNativeAd on delegate", e);
        }
    }
}
