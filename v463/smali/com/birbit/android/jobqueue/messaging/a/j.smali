.class public Lcom/birbit/android/jobqueue/messaging/a/j;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:Lcom/birbit/android/jobqueue/h;

.field private e:Ljava/lang/Object;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->j:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->d:Lcom/birbit/android/jobqueue/h;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->f:I

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/h;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->d:Lcom/birbit/android/jobqueue/h;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->e:Ljava/lang/Object;

    return-void
.end method

.method public c()Lcom/birbit/android/jobqueue/h;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->d:Lcom/birbit/android/jobqueue/h;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->f:I

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/j;->e:Ljava/lang/Object;

    return-object v0
.end method
