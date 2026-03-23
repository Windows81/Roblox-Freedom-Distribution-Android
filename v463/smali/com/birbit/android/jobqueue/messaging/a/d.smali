.class public Lcom/birbit/android/jobqueue/messaging/a/d;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field d:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

.field e:Lcom/birbit/android/jobqueue/CancelResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->b:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/d;->e:Lcom/birbit/android/jobqueue/CancelResult;

    .line 17
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/d;->d:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;Lcom/birbit/android/jobqueue/CancelResult;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/d;->d:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    .line 22
    iput-object p2, p0, Lcom/birbit/android/jobqueue/messaging/a/d;->e:Lcom/birbit/android/jobqueue/CancelResult;

    return-void
.end method

.method public c()Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/d;->d:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    return-object v0
.end method

.method public d()Lcom/birbit/android/jobqueue/CancelResult;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/d;->e:Lcom/birbit/android/jobqueue/CancelResult;

    return-object v0
.end method
