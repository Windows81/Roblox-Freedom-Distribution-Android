package org.a.d;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface d {

    public enum a {
        CONTINUOUS,
        TEXT,
        BINARY,
        PING,
        PONG,
        CLOSING
    }

    ByteBuffer c();

    boolean d();

    boolean e();

    a f();
}
