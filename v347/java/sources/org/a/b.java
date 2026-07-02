package org.a;

import java.net.InetSocketAddress;
import org.a.d.d;
import org.a.e.e;
import org.a.e.h;
import org.a.e.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements d {
    @Override // org.a.d
    public i onWebsocketHandshakeReceivedAsServer(a aVar, org.a.b.a aVar2, org.a.e.a aVar3) throws org.a.c.b {
        return new e();
    }

    @Override // org.a.d
    public void onWebsocketHandshakeReceivedAsClient(a aVar, org.a.e.a aVar2, h hVar) throws org.a.c.b {
    }

    @Override // org.a.d
    public void onWebsocketHandshakeSentAsClient(a aVar, org.a.e.a aVar2) throws org.a.c.b {
    }

    @Override // org.a.d
    public void onWebsocketMessageFragment(a aVar, org.a.d.d dVar) {
    }

    @Override // org.a.d
    public void onWebsocketPing(a aVar, org.a.d.d dVar) {
        org.a.d.e eVar = new org.a.d.e(dVar);
        eVar.a(d.a.PONG);
        aVar.sendFrame(eVar);
    }

    @Override // org.a.d
    public void onWebsocketPong(a aVar, org.a.d.d dVar) {
    }

    @Override // org.a.d
    public String getFlashPolicy(a aVar) throws org.a.c.b {
        InetSocketAddress localSocketAddress = aVar.getLocalSocketAddress();
        if (localSocketAddress == null) {
            throw new org.a.c.d("socket not bound");
        }
        StringBuffer stringBuffer = new StringBuffer(90);
        stringBuffer.append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"");
        stringBuffer.append(localSocketAddress.getPort());
        stringBuffer.append("\" /></cross-domain-policy>\u0000");
        return stringBuffer.toString();
    }
}
