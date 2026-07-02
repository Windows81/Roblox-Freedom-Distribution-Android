package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.b.c;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class zzzv implements MediationInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f5826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.mediation.d f5827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f5828c;

    @Override // com.google.android.gms.ads.mediation.b
    public final void onDestroy() {
        mj.b("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.b
    public final void onPause() {
        mj.b("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.b
    public final void onResume() {
        mj.b("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, com.google.android.gms.ads.mediation.d dVar, Bundle bundle, com.google.android.gms.ads.mediation.a aVar, Bundle bundle2) {
        this.f5827b = dVar;
        if (this.f5827b == null) {
            mj.e("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            mj.e("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f5827b.a(this, 0);
            return;
        }
        if (!(com.google.android.gms.common.util.n.c() && asm.a(context))) {
            mj.e("Default browser does not support custom tabs. Bailing out.");
            this.f5827b.a(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            mj.e("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.f5827b.a(this, 0);
        } else {
            this.f5826a = (Activity) context;
            this.f5828c = Uri.parse(string);
            this.f5827b.a(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        android.support.b.c cVarA = new c.a().a();
        cVarA.f187a.setData(this.f5828c);
        jm.f5184a.post(new bee(this, new AdOverlayInfoParcel(new zzc(cVarA.f187a), null, new bed(this), null, new zzang(0, 0, false))));
        com.google.android.gms.ads.internal.aw.i().f();
    }
}
