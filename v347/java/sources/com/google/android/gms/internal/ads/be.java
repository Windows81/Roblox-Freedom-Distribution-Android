package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class be implements mo<List<ass>, aso> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Integer f4825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Integer f4826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ int f4827d;
    private final /* synthetic */ int e;
    private final /* synthetic */ int f;
    private final /* synthetic */ int g;
    private final /* synthetic */ boolean h;

    be(ay ayVar, String str, Integer num, Integer num2, int i, int i2, int i3, int i4, boolean z) {
        this.f4824a = str;
        this.f4825b = num;
        this.f4826c = num2;
        this.f4827d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = z;
    }

    @Override // com.google.android.gms.internal.ads.mo
    public final /* synthetic */ aso a(List<ass> list) {
        List<ass> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        return new aso(this.f4824a, list2, this.f4825b, this.f4826c, this.f4827d > 0 ? Integer.valueOf(this.f4827d) : null, this.e + this.f, this.g, this.h);
    }
}
