.class public interface abstract Lcom/birbit/android/jobqueue/JobQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract count()I
.end method

.method public abstract countReadyJobs(Lcom/birbit/android/jobqueue/d;)I
.end method

.method public abstract findJobById(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h;
.end method

.method public abstract findJobs(Lcom/birbit/android/jobqueue/d;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/d;",
            ")",
            "Ljava/util/Set<",
            "Lcom/birbit/android/jobqueue/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextJobDelayUntilNs(Lcom/birbit/android/jobqueue/d;)Ljava/lang/Long;
.end method

.method public abstract insert(Lcom/birbit/android/jobqueue/h;)Z
.end method

.method public abstract insertOrReplace(Lcom/birbit/android/jobqueue/h;)Z
.end method

.method public abstract nextJobAndIncRunCount(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/h;
.end method

.method public abstract onJobCancelled(Lcom/birbit/android/jobqueue/h;)V
.end method

.method public abstract remove(Lcom/birbit/android/jobqueue/h;)V
.end method

.method public abstract substitute(Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/h;)V
.end method
