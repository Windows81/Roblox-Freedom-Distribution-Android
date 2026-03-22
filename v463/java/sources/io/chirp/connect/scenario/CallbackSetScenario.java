package io.chirp.connect.scenario;

import chirpconnect.CallbackSet;
import io.chirp.connect.analytics.Analytics;
import io.chirp.connect.interfaces.ConnectEventListener;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CallbackSetScenario implements CallbackSet {
    private Analytics analytics;
    private List<ConnectEventListener> observers;

    public CallbackSetScenario(List<ConnectEventListener> list) {
        this.observers = list;
    }

    public CallbackSetScenario(List<ConnectEventListener> list, Analytics analytics) {
        this.observers = list;
        this.analytics = analytics;
    }

    private void notifyObserversChirpReceived(byte[] bArr, byte b2) {
        if (this.analytics != null) {
            this.analytics.postReceived(bArr == null ? 0 : bArr.length);
        }
        Iterator<ConnectEventListener> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onReceived(bArr, b2);
        }
    }

    private void notifyObserversChirpReceiving(byte b2) {
        Iterator<ConnectEventListener> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onReceiving(b2);
        }
    }

    private void notifyObserversChirpSending(byte[] bArr, byte b2) {
        Iterator<ConnectEventListener> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onSending(bArr, b2);
        }
    }

    private void notifyObserversChirpSent(byte[] bArr, byte b2) {
        Analytics analytics = this.analytics;
        if (analytics != null) {
            analytics.postSent(bArr.length);
        }
        Iterator<ConnectEventListener> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onSent(bArr, b2);
        }
    }

    private void notifyObserversStateChanged(byte b2, byte b3) {
        Iterator<ConnectEventListener> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(b2, b3);
        }
    }

    @Override // chirpconnect.CallbackSet
    public void received(byte[] bArr, byte b2) {
        notifyObserversChirpReceived(bArr, b2);
    }

    @Override // chirpconnect.CallbackSet
    public void receiving(byte b2) {
        notifyObserversChirpReceiving(b2);
    }

    @Override // chirpconnect.CallbackSet
    public void sending(byte[] bArr, byte b2) {
        notifyObserversChirpSending(bArr, b2);
    }

    @Override // chirpconnect.CallbackSet
    public void sent(byte[] bArr, byte b2) {
        notifyObserversChirpSent(bArr, b2);
    }

    @Override // chirpconnect.CallbackSet
    public void stateChanged(byte b2, byte b3) {
        notifyObserversStateChanged(b2, b3);
    }
}
