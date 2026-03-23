.class public Lcom/birbit/android/jobqueue/messaging/a/b;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/birbit/android/jobqueue/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->a:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->g:Lcom/birbit/android/jobqueue/g;

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;I)V
    .locals 0

    .line 31
    iput p2, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->d:I

    .line 32
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->g:Lcom/birbit/android/jobqueue/g;

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;II)V
    .locals 0

    .line 36
    iput p2, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->d:I

    .line 37
    iput p3, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->e:I

    .line 38
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->g:Lcom/birbit/android/jobqueue/g;

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;IZ)V
    .locals 0

    .line 42
    iput p2, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->d:I

    .line 43
    iput-boolean p3, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->f:Z

    .line 44
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->g:Lcom/birbit/android/jobqueue/g;

    return-void
.end method

.method public c()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->f:Z

    return v0
.end method

.method public f()Lcom/birbit/android/jobqueue/g;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/b;->g:Lcom/birbit/android/jobqueue/g;

    return-object v0
.end method
