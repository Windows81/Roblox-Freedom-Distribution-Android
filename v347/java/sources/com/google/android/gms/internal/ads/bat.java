package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class bat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kr<ayy> f4722a = new bau();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kr<ayy> f4723b = new bav();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final azk f4724c;

    public bat(Context context, zzang zzangVar, String str) {
        this.f4724c = new azk(context, zzangVar, str, f4722a, f4723b);
    }

    public final <I, O> bal<I, O> a(String str, bao<I> baoVar, ban<O> banVar) {
        return new baw(this.f4724c, str, baoVar, banVar);
    }
}
