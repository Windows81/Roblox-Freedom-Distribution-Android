.class public interface abstract Lcom/birbit/android/jobqueue/timer/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract nanoTime()J
.end method

.method public abstract notifyObject(Ljava/lang/Object;)V
.end method

.method public abstract waitOnObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract waitOnObjectUntilNs(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
