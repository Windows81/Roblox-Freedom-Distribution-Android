package com.birbit.android.jobqueue;

import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface JobQueue {
    void clear();

    int count();

    int countReadyJobs(d dVar);

    h findJobById(String str);

    Set<h> findJobs(d dVar);

    Long getNextJobDelayUntilNs(d dVar);

    boolean insert(h hVar);

    boolean insertOrReplace(h hVar);

    h nextJobAndIncRunCount(d dVar);

    void onJobCancelled(h hVar);

    void remove(h hVar);

    void substitute(h hVar, h hVar2);
}
