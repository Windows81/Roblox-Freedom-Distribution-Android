package io.chirp.connect.helpers;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import io.chirp.connect.interfaces.ConnectEventListener;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SettingsContentObserver extends ContentObserver {
    private AudioManager audioManager;
    private List<ConnectEventListener> observers;
    private int oldVolume;

    public SettingsContentObserver(Handler handler, Context context, List<ConnectEventListener> list) {
        super(handler);
        this.observers = list;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.audioManager = audioManager;
        this.oldVolume = audioManager.getStreamVolume(3);
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return super.deliverSelfNotifications();
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        int streamVolume = this.audioManager.getStreamVolume(3);
        if (this.oldVolume != streamVolume) {
            Iterator<ConnectEventListener> it = this.observers.iterator();
            while (it.hasNext()) {
                it.next().onSystemVolumeChanged(this.oldVolume, streamVolume);
            }
            this.oldVolume = streamVolume;
        }
    }
}
