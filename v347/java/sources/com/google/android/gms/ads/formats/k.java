package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.aug;
import com.google.android.gms.internal.ads.mj;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class k extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f2977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aug f2978b;

    private final View a(String str) {
        try {
            com.google.android.gms.b.a aVarA = this.f2978b.a(str);
            if (aVarA != null) {
                return (View) com.google.android.gms.b.b.a(aVarA);
            }
        } catch (RemoteException e) {
            mj.b("Unable to call getAssetView on delegate", e);
        }
        return null;
    }

    private final void a(String str, View view) {
        try {
            this.f2978b.a(str, com.google.android.gms.b.b.a(view));
        } catch (RemoteException e) {
            mj.b("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f2977a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.f2977a != view) {
            super.bringChildToFront(this.f2977a);
        }
    }

    public final a getAdChoicesView() {
        View viewA = a("3011");
        if (viewA instanceof a) {
            return (a) viewA;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return a("3005");
    }

    public final View getBodyView() {
        return a("3004");
    }

    public final View getCallToActionView() {
        return a("3002");
    }

    public final View getHeadlineView() {
        return a("3001");
    }

    public final View getIconView() {
        return a("3003");
    }

    public final View getImageView() {
        return a("3008");
    }

    public final b getMediaView() {
        View viewA = a("3010");
        if (viewA instanceof b) {
            return (b) viewA;
        }
        if (viewA != null) {
            mj.b("View is not an instance of MediaView");
        }
        return null;
    }

    public final View getPriceView() {
        return a("3007");
    }

    public final View getStarRatingView() {
        return a("3009");
    }

    public final View getStoreView() {
        return a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f2978b != null) {
            try {
                this.f2978b.a(com.google.android.gms.b.b.a(view), i);
            } catch (RemoteException e) {
                mj.b("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f2977a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f2977a == view) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(a aVar) {
        a("3011", aVar);
    }

    public final void setAdvertiserView(View view) {
        a("3005", view);
    }

    public final void setBodyView(View view) {
        a("3004", view);
    }

    public final void setCallToActionView(View view) {
        a("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f2978b.b(com.google.android.gms.b.b.a(view));
        } catch (RemoteException e) {
            mj.b("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        a("3001", view);
    }

    public final void setIconView(View view) {
        a("3003", view);
    }

    public final void setImageView(View view) {
        a("3008", view);
    }

    public final void setMediaView(b bVar) {
        a("3010", bVar);
    }

    public final void setNativeAd(j jVar) {
        try {
            this.f2978b.a((com.google.android.gms.b.a) jVar.k());
        } catch (RemoteException e) {
            mj.b("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        a("3007", view);
    }

    public final void setStarRatingView(View view) {
        a("3009", view);
    }

    public final void setStoreView(View view) {
        a("3006", view);
    }
}
