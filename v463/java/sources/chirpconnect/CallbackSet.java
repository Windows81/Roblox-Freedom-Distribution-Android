package chirpconnect;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface CallbackSet {
    void received(byte[] bArr, byte b2);

    void receiving(byte b2);

    void sending(byte[] bArr, byte b2);

    void sent(byte[] bArr, byte b2);

    void stateChanged(byte b2, byte b3);
}
