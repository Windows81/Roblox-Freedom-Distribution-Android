.class public Lcom/birbit/android/jobqueue/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/QueueFactory;


# instance fields
.field a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

    invoke-direct {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/f;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;

    return-void
.end method


# virtual methods
.method public createNonPersistent(Lcom/birbit/android/jobqueue/b/a;J)Lcom/birbit/android/jobqueue/JobQueue;
    .locals 2

    .line 32
    new-instance v0, Lcom/birbit/android/jobqueue/a/a;

    new-instance v1, Lcom/birbit/android/jobqueue/c/a;

    invoke-direct {v1, p1, p2, p3}, Lcom/birbit/android/jobqueue/c/a;-><init>(Lcom/birbit/android/jobqueue/b/a;J)V

    invoke-direct {v0, v1}, Lcom/birbit/android/jobqueue/a/a;-><init>(Lcom/birbit/android/jobqueue/JobQueue;)V

    return-object v0
.end method

.method public createPersistentQueue(Lcom/birbit/android/jobqueue/b/a;J)Lcom/birbit/android/jobqueue/JobQueue;
    .locals 3

    .line 27
    new-instance v0, Lcom/birbit/android/jobqueue/a/a;

    new-instance v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/f;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;-><init>(Lcom/birbit/android/jobqueue/b/a;JLcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;)V

    invoke-direct {v0, v1}, Lcom/birbit/android/jobqueue/a/a;-><init>(Lcom/birbit/android/jobqueue/JobQueue;)V

    return-object v0
.end method
