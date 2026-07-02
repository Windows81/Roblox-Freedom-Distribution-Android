package com.birbit.android.jobqueue;

/* JADX INFO: loaded from: classes.dex */
public interface IntCallback {

    public interface MessageWithCallback {
        void setCallback(IntCallback intCallback);
    }

    void onResult(int i);
}
