.class public Lcom/birbit/android/jobqueue/messaging/a/g;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/Object;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->f:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/messaging/a/g;->e:J

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public c()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/messaging/a/g;->e:J

    return-wide v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/g;->d:Ljava/lang/Object;

    return-object v0
.end method
