.class public Lcom/birbit/android/jobqueue/messaging/a/a;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:Lcom/birbit/android/jobqueue/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->g:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/a;->d:Lcom/birbit/android/jobqueue/g;

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/a;->d:Lcom/birbit/android/jobqueue/g;

    return-void
.end method

.method public c()Lcom/birbit/android/jobqueue/g;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/a;->d:Lcom/birbit/android/jobqueue/g;

    return-object v0
.end method
