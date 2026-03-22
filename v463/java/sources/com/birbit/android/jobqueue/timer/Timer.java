package com.birbit.android.jobqueue.timer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface Timer {
    long nanoTime();

    void notifyObject(Object obj);

    void waitOnObject(Object obj) throws InterruptedException;

    void waitOnObjectUntilNs(Object obj, long j) throws InterruptedException;
}
