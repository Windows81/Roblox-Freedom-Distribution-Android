package c.a.c;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class p extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f2630a;

    public p(a aVar) {
        super("stream was reset: " + aVar);
        this.f2630a = aVar;
    }
}
