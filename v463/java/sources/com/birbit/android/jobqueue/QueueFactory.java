package com.birbit.android.jobqueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface QueueFactory {
    JobQueue createNonPersistent(com.birbit.android.jobqueue.b.a aVar, long j);

    JobQueue createPersistentQueue(com.birbit.android.jobqueue.b.a aVar, long j);
}
