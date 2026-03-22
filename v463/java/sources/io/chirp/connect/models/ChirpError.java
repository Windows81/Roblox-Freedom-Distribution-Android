package io.chirp.connect.models;

import chirpconnect.SDKError;
import io.chirp.a.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ChirpError {
    private ChirpErrorCode code;
    private String message;

    public ChirpError(int i, String str) {
        this.message = str;
        this.code = findErrorCode(i);
    }

    public ChirpError(SDKError sDKError) {
        this.message = sDKError.error();
        this.code = findErrorCode(sDKError.errorCode());
    }

    public ChirpError(e eVar) {
        this.message = eVar.b();
        this.code = findErrorCode(eVar.a());
    }

    public ChirpError(ChirpErrorCode chirpErrorCode, String str) {
        this.message = str;
        this.code = chirpErrorCode;
    }

    private ChirpErrorCode findErrorCode(int i) {
        for (ChirpErrorCode chirpErrorCode : ChirpErrorCode.values()) {
            if (chirpErrorCode.getCode() == i) {
                return chirpErrorCode;
            }
        }
        return ChirpErrorCode.CHIRP_CONNECT_UNKNOWN_ERROR;
    }

    public int getCode() {
        return this.code.getCode();
    }

    public ChirpErrorCode getErrorCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }
}
