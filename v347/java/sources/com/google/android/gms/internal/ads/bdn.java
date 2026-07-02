package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bdn extends bco {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.l f4820a;

    public bdn(com.google.android.gms.ads.mediation.l lVar) {
        this.f4820a = lVar;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String a() {
        return this.f4820a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void a(com.google.android.gms.b.a aVar) {
        this.f4820a.handleClick((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void a(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) {
        this.f4820a.trackViews((View) com.google.android.gms.b.b.a(aVar), (HashMap) com.google.android.gms.b.b.a(aVar2), (HashMap) com.google.android.gms.b.b.a(aVar3));
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final List b() {
        List<c.b> images = this.f4820a.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (c.b bVar : images) {
                arrayList.add(new ass(bVar.a(), bVar.b(), bVar.c()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void b(com.google.android.gms.b.a aVar) {
        this.f4820a.untrackView((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String c() {
        return this.f4820a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final aub d() {
        c.b icon = this.f4820a.getIcon();
        if (icon != null) {
            return new ass(icon.a(), icon.b(), icon.c());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String e() {
        return this.f4820a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String f() {
        return this.f4820a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final double g() {
        if (this.f4820a.getStarRating() != null) {
            return this.f4820a.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String h() {
        return this.f4820a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final String i() {
        return this.f4820a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final aqc j() {
        if (this.f4820a.getVideoController() != null) {
            return this.f4820a.getVideoController().a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final atx k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final com.google.android.gms.b.a l() {
        View adChoicesContent = this.f4820a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final com.google.android.gms.b.a m() {
        View viewZzvy = this.f4820a.zzvy();
        if (viewZzvy == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(viewZzvy);
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final com.google.android.gms.b.a n() {
        Object objZzbh = this.f4820a.zzbh();
        if (objZzbh == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(objZzbh);
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final Bundle o() {
        return this.f4820a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final boolean p() {
        return this.f4820a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final boolean q() {
        return this.f4820a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.bcn
    public final void r() {
        this.f4820a.recordImpression();
    }
}
