package com.google.b;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements com.google.ads.interactivemedia.v3.a.b {
    @Override // com.google.ads.interactivemedia.v3.a.b
    public boolean a(com.google.ads.interactivemedia.v3.a.c cVar) {
        a aVar = (a) cVar.a().getAnnotation(a.class);
        return aVar != null && Arrays.asList(aVar.b()).contains(cVar.b());
    }

    @Override // com.google.ads.interactivemedia.v3.a.b
    public boolean a(Class<?> cls) {
        return false;
    }
}
