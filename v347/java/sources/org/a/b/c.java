package org.a.b;

import org.a.b.a;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {
    @Override // org.a.b.b, org.a.b.a
    public a.b a(org.a.e.a aVar) throws org.a.c.d {
        return b(aVar) == 13 ? a.b.MATCHED : a.b.NOT_MATCHED;
    }

    @Override // org.a.b.b, org.a.b.a
    public org.a.e.b a(org.a.e.b bVar) {
        super.a(bVar);
        bVar.a("Sec-WebSocket-Version", "13");
        return bVar;
    }

    @Override // org.a.b.b, org.a.b.a
    public a c() {
        return new c();
    }
}
