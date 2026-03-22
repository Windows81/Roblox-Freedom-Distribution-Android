package chirpconnect;

import go.Seq;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class Chirpconnect {
    public static final byte SDK_STATE_NOT_CREATED = 0;
    public static final byte SDK_STATE_PAUSED = 2;
    public static final byte SDK_STATE_RECEIVING = 5;
    public static final byte SDK_STATE_RUNNING = 3;
    public static final byte SDK_STATE_SENDING = 4;
    public static final byte SDK_STATE_STOPPED = 1;

    private static final class proxyCallbackSet implements CallbackSet, Seq.Proxy {
        private final int refnum;

        proxyCallbackSet(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // chirpconnect.CallbackSet
        public native void received(byte[] bArr, byte b2);

        @Override // chirpconnect.CallbackSet
        public native void receiving(byte b2);

        @Override // chirpconnect.CallbackSet
        public native void sending(byte[] bArr, byte b2);

        @Override // chirpconnect.CallbackSet
        public native void sent(byte[] bArr, byte b2);

        @Override // chirpconnect.CallbackSet
        public native void stateChanged(byte b2, byte b3);
    }

    static {
        Seq.touch();
        _init();
    }

    private Chirpconnect() {
    }

    private static native void _init();

    public static native SDKVersion getVersion();

    public static native SDK newSDK(String str, String str2);

    public static void touch() {
    }
}
