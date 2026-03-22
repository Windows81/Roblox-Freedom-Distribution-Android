package io.chirp.connect.models;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum ConnectState {
    ConnectNotCreated,
    AudioStateStopped,
    AudioStatePaused,
    AudioStateRunning,
    AudioStateSending,
    AudioStateReceiving;

    public static ConnectState createConnectState(byte b2) {
        if (b2 == 0) {
            return ConnectNotCreated;
        }
        if (b2 == 1) {
            return AudioStateStopped;
        }
        if (b2 == 2) {
            return AudioStatePaused;
        }
        if (b2 == 3) {
            return AudioStateRunning;
        }
        if (b2 == 4) {
            return AudioStateSending;
        }
        if (b2 != 5) {
            return null;
        }
        return AudioStateReceiving;
    }
}
