package com.birbit.android.jobqueue.messaging;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface MessageQueue {
    void cancelMessages(MessagePredicate messagePredicate);

    void clear();

    void consume(d dVar);

    void post(b bVar);

    void postAt(b bVar, long j);

    void stop();
}
