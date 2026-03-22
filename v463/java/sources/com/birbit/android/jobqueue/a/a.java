package com.birbit.android.jobqueue.a;

import com.birbit.android.jobqueue.JobQueue;
import com.birbit.android.jobqueue.d;
import com.birbit.android.jobqueue.h;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements JobQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JobQueue f2902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f2903b;

    public a(JobQueue jobQueue) {
        this.f2902a = jobQueue;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insert(h hVar) {
        a();
        return this.f2902a.insert(hVar);
    }

    private void a() {
        this.f2903b = null;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insertOrReplace(h hVar) {
        a();
        return this.f2902a.insertOrReplace(hVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void substitute(h hVar, h hVar2) {
        a();
        this.f2902a.substitute(hVar, hVar2);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void remove(h hVar) {
        a();
        this.f2902a.remove(hVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int count() {
        if (this.f2903b == null) {
            this.f2903b = Integer.valueOf(this.f2902a.count());
        }
        return this.f2903b.intValue();
    }

    private boolean b() {
        Integer num = this.f2903b;
        return num != null && num.intValue() == 0;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int countReadyJobs(d dVar) {
        if (b()) {
            return 0;
        }
        return this.f2902a.countReadyJobs(dVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public h nextJobAndIncRunCount(d dVar) {
        Integer num;
        if (b()) {
            return null;
        }
        h hVarNextJobAndIncRunCount = this.f2902a.nextJobAndIncRunCount(dVar);
        if (hVarNextJobAndIncRunCount != null && (num = this.f2903b) != null) {
            this.f2903b = Integer.valueOf(num.intValue() - 1);
        }
        return hVarNextJobAndIncRunCount;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Long getNextJobDelayUntilNs(d dVar) {
        return this.f2902a.getNextJobDelayUntilNs(dVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void clear() {
        a();
        this.f2902a.clear();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Set<h> findJobs(d dVar) {
        return this.f2902a.findJobs(dVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void onJobCancelled(h hVar) {
        a();
        this.f2902a.onJobCancelled(hVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public h findJobById(String str) {
        return this.f2902a.findJobById(str);
    }
}
