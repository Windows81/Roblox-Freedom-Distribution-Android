package com.birbit.android.jobqueue.callback;

import com.birbit.android.jobqueue.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface JobManagerCallback {
    public static final int RESULT_CANCEL_CANCELLED_VIA_SHOULD_RE_RUN = 5;
    public static final int RESULT_CANCEL_CANCELLED_WHILE_RUNNING = 3;
    public static final int RESULT_CANCEL_REACHED_RETRY_LIMIT = 2;
    public static final int RESULT_CANCEL_SINGLE_INSTANCE_WHILE_RUNNING = 6;
    public static final int RESULT_FAIL_WILL_RETRY = 4;
    public static final int RESULT_SUCCEED = 1;

    void onAfterJobRun(g gVar, int i);

    void onDone(g gVar);

    void onJobAdded(g gVar);

    void onJobCancelled(g gVar, boolean z);

    void onJobRun(g gVar, int i);
}
