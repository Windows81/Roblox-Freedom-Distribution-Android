package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.aou;
import com.google.android.gms.internal.ads.aox;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.apu;
import com.google.android.gms.internal.ads.avc;
import com.google.android.gms.internal.ads.avf;
import com.google.android.gms.internal.ads.avj;
import com.google.android.gms.internal.ads.avm;
import com.google.android.gms.internal.ads.avp;
import com.google.android.gms.internal.ads.avs;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzpl;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class l extends apb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private aou f3144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private avc f3145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private avs f3146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private avf f3147d;
    private avp g;
    private zzjn h;
    private PublisherAdViewOptions i;
    private zzpl j;
    private apu k;
    private final Context l;
    private final bbu m;
    private final String n;
    private final zzang o;
    private final bt p;
    private android.support.v4.g.m<String, avm> f = new android.support.v4.g.m<>();
    private android.support.v4.g.m<String, avj> e = new android.support.v4.g.m<>();

    public l(Context context, String str, bbu bbuVar, zzang zzangVar, bt btVar) {
        this.l = context;
        this.n = str;
        this.m = bbuVar;
        this.o = zzangVar;
        this.p = btVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final aox a() {
        return new i(this.l, this.n, this.m, this.o, this.f3144a, this.f3145b, this.f3146c, this.f3147d, this.f, this.e, this.j, this.k, this.p, this.g, this.h, this.i);
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(PublisherAdViewOptions publisherAdViewOptions) {
        this.i = publisherAdViewOptions;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(aou aouVar) {
        this.f3144a = aouVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(apu apuVar) {
        this.k = apuVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avc avcVar) {
        this.f3145b = avcVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avf avfVar) {
        this.f3147d = avfVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avp avpVar, zzjn zzjnVar) {
        this.g = avpVar;
        this.h = zzjnVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(avs avsVar) {
        this.f3146c = avsVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(zzpl zzplVar) {
        this.j = zzplVar;
    }

    @Override // com.google.android.gms.internal.ads.apa
    public final void a(String str, avm avmVar, avj avjVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.f.put(str, avmVar);
        this.e.put(str, avjVar);
    }
}
