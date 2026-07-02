package com.google.b;

import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;

/* JADX INFO: loaded from: classes.dex */
public class c implements x {
    @Override // com.google.ads.interactivemedia.v3.a.x
    public <T> w<T> a(f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
        Class clsA = aVar.a();
        a aVar2 = (a) clsA.getAnnotation(a.class);
        if (aVar2 == null || clsA == aVar2.a()) {
            return null;
        }
        return fVar.a(aVar2.a());
    }
}
