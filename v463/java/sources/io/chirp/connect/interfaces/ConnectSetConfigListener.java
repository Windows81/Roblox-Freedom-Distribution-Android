package io.chirp.connect.interfaces;

import io.chirp.connect.models.ChirpError;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface ConnectSetConfigListener {
    void onError(ChirpError chirpError);

    void onSuccess();
}
