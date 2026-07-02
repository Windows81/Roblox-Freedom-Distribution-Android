package io.chirp.connect.interfaces;

import io.chirp.connect.models.ChirpError;

/* JADX INFO: loaded from: classes.dex */
public interface ConnectSetConfigListener {
    void onError(ChirpError chirpError);

    void onSuccess();
}
