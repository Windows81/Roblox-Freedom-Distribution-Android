package org.a;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import org.a.e.f;
import org.a.e.h;
import org.a.e.i;

/* JADX INFO: loaded from: classes.dex */
public interface d {
    String getFlashPolicy(a aVar) throws org.a.c.b;

    InetSocketAddress getLocalSocketAddress(a aVar);

    InetSocketAddress getRemoteSocketAddress(a aVar);

    void onWebsocketClose(a aVar, int i, String str, boolean z);

    void onWebsocketCloseInitiated(a aVar, int i, String str);

    void onWebsocketClosing(a aVar, int i, String str, boolean z);

    void onWebsocketError(a aVar, Exception exc);

    void onWebsocketHandshakeReceivedAsClient(a aVar, org.a.e.a aVar2, h hVar) throws org.a.c.b;

    i onWebsocketHandshakeReceivedAsServer(a aVar, org.a.b.a aVar2, org.a.e.a aVar3) throws org.a.c.b;

    void onWebsocketHandshakeSentAsClient(a aVar, org.a.e.a aVar2) throws org.a.c.b;

    void onWebsocketMessage(a aVar, String str);

    void onWebsocketMessage(a aVar, ByteBuffer byteBuffer);

    void onWebsocketMessageFragment(a aVar, org.a.d.d dVar);

    void onWebsocketOpen(a aVar, f fVar);

    void onWebsocketPing(a aVar, org.a.d.d dVar);

    void onWebsocketPong(a aVar, org.a.d.d dVar);

    void onWriteDemand(a aVar);
}
