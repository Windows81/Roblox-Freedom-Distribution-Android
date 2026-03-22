package io.chirp.connect.interfaces;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface ConnectEventListener {
    void onReceived(byte[] bArr, byte b2);

    void onReceiving(byte b2);

    void onSending(byte[] bArr, byte b2);

    void onSent(byte[] bArr, byte b2);

    void onStateChanged(byte b2, byte b3);

    void onSystemVolumeChanged(int i, int i2);
}
