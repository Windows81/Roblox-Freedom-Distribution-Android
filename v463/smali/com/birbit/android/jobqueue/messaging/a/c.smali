.class public Lcom/birbit/android/jobqueue/messaging/a/c;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:Lcom/birbit/android/jobqueue/o;

.field private e:[Ljava/lang/String;

.field private f:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->h:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public c()Lcom/birbit/android/jobqueue/o;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/c;->d:Lcom/birbit/android/jobqueue/o;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/c;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/c;->f:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    return-object v0
.end method
