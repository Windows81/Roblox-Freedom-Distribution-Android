.class public interface abstract Lcom/birbit/android/jobqueue/callback/JobManagerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESULT_CANCEL_CANCELLED_VIA_SHOULD_RE_RUN:I = 0x5

.field public static final RESULT_CANCEL_CANCELLED_WHILE_RUNNING:I = 0x3

.field public static final RESULT_CANCEL_REACHED_RETRY_LIMIT:I = 0x2

.field public static final RESULT_CANCEL_SINGLE_INSTANCE_WHILE_RUNNING:I = 0x6

.field public static final RESULT_FAIL_WILL_RETRY:I = 0x4

.field public static final RESULT_SUCCEED:I = 0x1


# virtual methods
.method public abstract onAfterJobRun(Lcom/birbit/android/jobqueue/g;I)V
.end method

.method public abstract onDone(Lcom/birbit/android/jobqueue/g;)V
.end method

.method public abstract onJobAdded(Lcom/birbit/android/jobqueue/g;)V
.end method

.method public abstract onJobCancelled(Lcom/birbit/android/jobqueue/g;Z)V
.end method

.method public abstract onJobRun(Lcom/birbit/android/jobqueue/g;I)V
.end method
