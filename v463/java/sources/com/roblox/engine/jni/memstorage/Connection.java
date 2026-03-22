package com.roblox.engine.jni.memstorage;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class Connection {
    private long ref;

    private static native void disconnect(Connection connection);

    private static native void releaseConnection(Connection connection);

    public void disconnect() {
        disconnect(this);
    }

    public void finalize() {
        releaseConnection(this);
    }

    Connection(long j) {
        this.ref = j;
    }
}
