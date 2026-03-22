package io.chirp.connect;

import android.content.Context;
import io.chirp.connect.interfaces.ConnectAudioBufferCallback;
import io.chirp.connect.interfaces.ConnectEventListener;
import io.chirp.connect.interfaces.ConnectSetConfigListener;
import io.chirp.connect.models.ChirpError;
import io.chirp.connect.models.ConnectState;
import java.io.Closeable;
import java.io.File;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ChirpConnect implements Closeable {
    private static ConnectSDKDelegator delegator;

    public ChirpConnect(Context context, String str, String str2) {
        ConnectSDKDelegator connectSDKDelegator = new ConnectSDKDelegator(context, str, str2);
        delegator = connectSDKDelegator;
        connectSDKDelegator.init();
    }

    public static String getVersion() {
        return ConnectSDKDelegator.getVersion();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        delegator.close();
    }

    public void enableLogs() {
        delegator.enableLogs();
    }

    public byte getChannelCount() {
        return delegator.getChannelCount();
    }

    public ConnectState getConnectState() {
        return ConnectState.createConnectState(delegator.getState());
    }

    public float getDurationForPayloadLength(long j) {
        return delegator.getDurationForPayloadLength(j);
    }

    public String getInfo() {
        return delegator.getInfo();
    }

    public long getMaxPayloadLength() {
        return delegator.getMaxPayloadLength();
    }

    public ConnectState getStateForChannel(byte b2) {
        return ConnectState.createConnectState(delegator.getStateForChannel(b2));
    }

    public byte getTransmissionChannel() {
        return delegator.getTransmissionChannel();
    }

    public boolean isValidPayload(byte[] bArr) {
        return delegator.isValidPayload(bArr);
    }

    public String payloadToHexString(byte[] bArr) {
        return delegator.payloadToHexString(bArr);
    }

    public byte[] randomPayload(long j) {
        return delegator.randomPayload(j);
    }

    public ChirpError send(byte[] bArr) {
        return delegator.send(bArr);
    }

    public void setConfig(String str, ConnectSetConfigListener connectSetConfigListener) {
        delegator.setConfig(str, connectSetConfigListener);
    }

    public void setConfigFromNetwork(ConnectSetConfigListener connectSetConfigListener) {
        delegator.setConfigFromNetwork(connectSetConfigListener);
    }

    public void setConnectAudioBufferCallback(ConnectAudioBufferCallback connectAudioBufferCallback) {
        delegator.setConnectAudioBufferCallback(connectAudioBufferCallback);
    }

    public ChirpError setListenToSelf(boolean z) {
        return delegator.setListenToSelf(z);
    }

    public void setListener(ConnectEventListener connectEventListener) {
        delegator.setListener(connectEventListener);
    }

    public ChirpError setRandomSeed(int i) {
        return delegator.setRandomSeed(i);
    }

    public ChirpError setTransmissionChannel(byte b2) {
        return delegator.setTransmissionChannel(b2);
    }

    public ChirpError setVolume(float f) {
        return delegator.setVolume(f);
    }

    public ChirpError start() {
        return delegator.startListening();
    }

    public ChirpError stop() {
        return delegator.stopListening();
    }

    public ChirpError writeWavFile(byte[] bArr, String str) {
        return delegator.writeWav(bArr, str);
    }

    public ChirpError writeWavFile(byte[] bArr, String str, File file) {
        return delegator.writeWav(bArr, str, file);
    }
}
