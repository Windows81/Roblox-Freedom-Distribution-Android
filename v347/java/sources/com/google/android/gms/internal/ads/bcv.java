package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bcv extends bcl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.mediation.h f4797a;

    public bcv(com.google.android.gms.ads.mediation.h hVar) {
        this.f4797a = hVar;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String a() {
        return this.f4797a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void a(com.google.android.gms.b.a aVar) {
        this.f4797a.handleClick((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void a(com.google.android.gms.b.a aVar, com.google.android.gms.b.a aVar2, com.google.android.gms.b.a aVar3) {
        this.f4797a.trackViews((View) com.google.android.gms.b.b.a(aVar), (HashMap) com.google.android.gms.b.b.a(aVar2), (HashMap) com.google.android.gms.b.b.a(aVar3));
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final List b() {
        List<c.b> images = this.f4797a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (c.b bVar : images) {
            arrayList.add(new ass(bVar.a(), bVar.b(), bVar.c()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void b(com.google.android.gms.b.a aVar) {
        this.f4797a.trackView((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String c() {
        return this.f4797a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void c(com.google.android.gms.b.a aVar) {
        this.f4797a.untrackView((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final aub d() {
        c.b logo = this.f4797a.getLogo();
        if (logo != null) {
            return new ass(logo.a(), logo.b(), logo.c());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String e() {
        return this.f4797a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final String f() {
        return this.f4797a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final void g() {
        this.f4797a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final boolean h() {
        return this.f4797a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final boolean i() {
        return this.f4797a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final Bundle j() {
        return this.f4797a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final com.google.android.gms.b.a k() {
        View adChoicesContent = this.f4797a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final aqc l() {
        if (this.f4797a.getVideoController() != null) {
            return this.f4797a.getVideoController().a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final atx m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final com.google.android.gms.b.a n() {
        View viewZzvy = this.f4797a.zzvy();
        if (viewZzvy == null) {
            return null;
        }
        return com.google.android.gms.b.b.a(viewZzvy);
    }

    @Override // com.google.android.gms.internal.ads.bck
    public final com.google.android.gms.b.a o() {
        return null;
    }
}
