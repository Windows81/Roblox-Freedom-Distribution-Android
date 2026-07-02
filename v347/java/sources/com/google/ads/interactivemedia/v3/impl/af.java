package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.player.AdProgressProvider;
import com.google.ads.interactivemedia.v3.impl.w;

/* JADX INFO: loaded from: classes.dex */
public interface af extends AdErrorEvent.AdErrorListener, AdProgressProvider {
    void a();

    void a(com.google.ads.interactivemedia.v3.impl.data.b bVar);

    boolean a(w.c cVar, com.google.ads.interactivemedia.v3.impl.data.j jVar);

    void b();

    boolean b(w.c cVar, com.google.ads.interactivemedia.v3.impl.data.j jVar);

    void c();

    void d();

    void e();
}
