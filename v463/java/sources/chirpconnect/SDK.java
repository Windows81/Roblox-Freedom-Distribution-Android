package chirpconnect;

import go.Seq;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class SDK implements Seq.Proxy {
    private final int refnum;

    static {
        Chirpconnect.touch();
    }

    SDK(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    public SDK(String str, String str2) {
        int i__NewSDK = __NewSDK(str, str2);
        this.refnum = i__NewSDK;
        Seq.trackGoRef(i__NewSDK, this);
    }

    private static native int __NewSDK(String str, String str2);

    public native String asString(byte[] bArr);

    public native SDKError delete();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SDK)) {
            return false;
        }
        return true;
    }

    public native boolean getAutoMute();

    public native byte getChannelCount();

    public native byte getChannelState(byte b2);

    public native float getDuration(long j);

    public native long getExpiryTime();

    public native String getInfo();

    public native long getMaxPayloadLength();

    public native String getProtocolName();

    public native byte getProtocolVersion();

    public native int getSampleRate();

    public native byte getState();

    public native byte getTransmissionChannel();

    public native float getVolume();

    public int hashCode() {
        return Arrays.hashCode(new Object[0]);
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public native boolean isOfflineMode();

    public native SDKError isValid(byte[] bArr);

    public native byte[] newPayload(long j);

    public native SDKError pause(boolean z);

    public native SDKError processFloats(byte[] bArr, byte[] bArr2);

    public native SDKError processFloatsInput(byte[] bArr);

    public native SDKError processFloatsOutput(byte[] bArr);

    public native SDKError processShorts(byte[] bArr, byte[] bArr2);

    public native SDKError processShortsInput(byte[] bArr);

    public native SDKError processShortsOutput(byte[] bArr);

    public native byte[] randomPayload(long j);

    public native SDKError send(byte[] bArr);

    public native SDKError setAutoMute(boolean z);

    public native SDKError setCallbackPtr();

    public native SDKError setCallbacks(CallbackSet callbackSet);

    public native SDKError setConfig(String str);

    public native SDKError setRandomSeed(int i);

    public native SDKError setSampleRate(int i);

    public native SDKError setTransmissionChannel(byte b2);

    public native SDKError setVolume(float f);

    public native SDKError start();

    public native SDKError stop();

    public String toString() {
        return "SDK{}";
    }

    public native SDKError triggerCallbacks(byte[] bArr);
}
