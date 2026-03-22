package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements QueueFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SqliteJobQueue.JobSerializer f2946a = new SqliteJobQueue.b();

    @Override // com.birbit.android.jobqueue.QueueFactory
    public JobQueue createPersistentQueue(com.birbit.android.jobqueue.b.a aVar, long j) {
        return new com.birbit.android.jobqueue.a.a(new SqliteJobQueue(aVar, j, this.f2946a));
    }

    @Override // com.birbit.android.jobqueue.QueueFactory
    public JobQueue createNonPersistent(com.birbit.android.jobqueue.b.a aVar, long j) {
        return new com.birbit.android.jobqueue.a.a(new com.birbit.android.jobqueue.c.a(aVar, j));
    }
}
