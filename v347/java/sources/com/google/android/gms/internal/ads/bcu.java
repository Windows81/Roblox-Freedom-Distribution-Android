package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bcu extends bci {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.g f4796a;

    public bcu(com.google.android.gms.ads.mediation.g gVar) {
        this.f4796a = gVar;
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final String a() {
        return this.f4796a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final void a(com.google.android.gms.b.a aVar) {
        this.f4796a.handleClick((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final void a(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) {
        this.f4796a.trackViews((View) com.google.android.gms.b.b.a(aVar), (HashMap) com.google.android.gms.b.b.a(aVar2), (HashMap) com.google.android.gms.b.b.a(aVar3));
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final List b() {
        List<c.b> images = this.f4796a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (c.b bVar : images) {
            arrayList.add(new ass(bVar.a(), bVar.b(), bVar.c()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final void b(com.google.android.gms.b.a aVar) {
        this.f4796a.trackView((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final String c() {
        return this.f4796a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final void c(com.google.android.gms.b.a aVar) {
        this.f4796a.untrackView((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final aub d() {
        c.b icon = this.f4796a.getIcon();
        if (icon != null) {
            return new ass(icon.a(), icon.b(), icon.c());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final String e() {
        return this.f4796a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final double f() {
        return this.f4796a.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final String g() {
        return this.f4796a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final String h() {
        return this.f4796a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final void i() {
        this.f4796a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final boolean j() {
        return this.f4796a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final boolean k() {
        return this.f4796a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final Bundle l() {
        return this.f4796a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final aqc m() {
        if (this.f4796a.getVideoController() != null) {
            return this.f4796a.getVideoController().a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final com.google.android.gms.b.a n() {
        View adChoicesContent = this.f4796a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final atx o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final com.google.android.gms.b.a p() {
        View viewZzvy = this.f4796a.zzvy();
        if (viewZzvy == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(viewZzvy);
    }

    @Override // com.google.android.gms.internal.ads.bcg
    public final com.google.android.gms.b.a q() {
        return null;
    }
}
