package b.a.c;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class p extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1905a;

    public p(a aVar) {
        super("stream was reset: " + aVar);
        this.f1905a = aVar;
    }
}
