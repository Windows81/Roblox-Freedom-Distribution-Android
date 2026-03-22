package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class alj implements Comparator<alp> {
    alj(ali aliVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(alp alpVar, alp alpVar2) {
        alp alpVar3 = alpVar;
        alp alpVar4 = alpVar2;
        int i = alpVar3.f4179c - alpVar4.f4179c;
        return i != 0 ? i : (int) (alpVar3.f4177a - alpVar4.f4177a);
    }
}
