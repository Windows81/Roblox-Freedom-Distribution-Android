package com.birbit.android.jobqueue.network;

/* JADX INFO: loaded from: classes.dex */
public interface NetworkEventProvider {

    public interface Listener {
        void onNetworkChange(int i);
    }

    void setListener(Listener listener);
}
