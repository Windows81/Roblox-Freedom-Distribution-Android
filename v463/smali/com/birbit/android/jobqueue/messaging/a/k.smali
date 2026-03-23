.class public Lcom/birbit/android/jobqueue/messaging/a/k;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:Lcom/birbit/android/jobqueue/scheduling/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->k:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/k;->e:Lcom/birbit/android/jobqueue/scheduling/a;

    return-void
.end method

.method public a(ILcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/birbit/android/jobqueue/messaging/a/k;->d:I

    .line 29
    iput-object p2, p0, Lcom/birbit/android/jobqueue/messaging/a/k;->e:Lcom/birbit/android/jobqueue/scheduling/a;

    return-void
.end method

.method public c()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/birbit/android/jobqueue/messaging/a/k;->d:I

    return v0
.end method

.method public d()Lcom/birbit/android/jobqueue/scheduling/a;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/k;->e:Lcom/birbit/android/jobqueue/scheduling/a;

    return-object v0
.end method
