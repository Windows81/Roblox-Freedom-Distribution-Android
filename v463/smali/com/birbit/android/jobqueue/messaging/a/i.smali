.class public Lcom/birbit/android/jobqueue/messaging/a/i;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:Lcom/birbit/android/jobqueue/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->c:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/i;->d:Lcom/birbit/android/jobqueue/h;

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/h;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/i;->d:Lcom/birbit/android/jobqueue/h;

    return-void
.end method

.method public c()Lcom/birbit/android/jobqueue/h;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/i;->d:Lcom/birbit/android/jobqueue/h;

    return-object v0
.end method
