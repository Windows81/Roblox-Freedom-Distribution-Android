package com.birbit.android.jobqueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface IntCallback {

    public interface MessageWithCallback {
        void setCallback(IntCallback intCallback);
    }

    void onResult(int i);
}
