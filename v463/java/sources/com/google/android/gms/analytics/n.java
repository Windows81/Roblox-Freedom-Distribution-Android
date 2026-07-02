package com.google.android.gms.analytics;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class n implements Comparator<q> {
    n(m mVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(q qVar, q qVar2) {
        return qVar.getClass().getCanonicalName().compareTo(qVar2.getClass().getCanonicalName());
    }
}
