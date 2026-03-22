package com.birbit.android.jobqueue.network;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface NetworkEventProvider {

    public interface Listener {
        void onNetworkChange(int i);
    }

    void setListener(Listener listener);
}
