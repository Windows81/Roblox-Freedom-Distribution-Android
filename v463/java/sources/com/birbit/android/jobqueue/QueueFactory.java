package com.birbit.android.jobqueue;

/* JADX INFO: loaded from: classes.dex */
public interface QueueFactory {
    JobQueue createNonPersistent(com.birbit.android.jobqueue.b.a aVar, long j);

    JobQueue createPersistentQueue(com.birbit.android.jobqueue.b.a aVar, long j);
}
