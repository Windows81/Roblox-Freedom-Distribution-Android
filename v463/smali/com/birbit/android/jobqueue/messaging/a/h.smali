.class public Lcom/birbit/android/jobqueue/messaging/a/h;
.super Lcom/birbit/android/jobqueue/messaging/b;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/IntCallback$MessageWithCallback;


# instance fields
.field private d:Lcom/birbit/android/jobqueue/IntCallback;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/birbit/android/jobqueue/messaging/g;->e:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/messaging/b;-><init>(Lcom/birbit/android/jobqueue/messaging/g;)V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->e:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->d:Lcom/birbit/android/jobqueue/IntCallback;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->e:I

    return-void
.end method

.method public c()Lcom/birbit/android/jobqueue/IntCallback;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->d:Lcom/birbit/android/jobqueue/IntCallback;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setCallback(Lcom/birbit/android/jobqueue/IntCallback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->d:Lcom/birbit/android/jobqueue/IntCallback;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublicQuery["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/birbit/android/jobqueue/messaging/a/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
