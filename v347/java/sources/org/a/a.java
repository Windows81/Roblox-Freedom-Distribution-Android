package org.a;

import java.net.InetSocketAddress;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface a {

    /* JADX INFO: renamed from: org.a.a$a, reason: collision with other inner class name */
    public enum EnumC0142a {
        NOT_YET_CONNECTED,
        CONNECTING,
        OPEN,
        CLOSING,
        CLOSED
    }

    public enum b {
        CLIENT,
        SERVER
    }

    InetSocketAddress getLocalSocketAddress();

    void sendFrame(org.a.d.d dVar);
}
