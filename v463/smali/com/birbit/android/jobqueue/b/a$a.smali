.class public final Lcom/birbit/android/jobqueue/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/birbit/android/jobqueue/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/birbit/android/jobqueue/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/birbit/android/jobqueue/b/a;-><init>(Lcom/birbit/android/jobqueue/b/a$1;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/birbit/android/jobqueue/b/a;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/birbit/android/jobqueue/b/a$a;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iput p1, v0, Lcom/birbit/android/jobqueue/b/a;->d:I

    return-object p0
.end method

.method public a(Lcom/birbit/android/jobqueue/log/CustomLogger;)Lcom/birbit/android/jobqueue/b/a$a;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iput-object p1, v0, Lcom/birbit/android/jobqueue/b/a;->j:Lcom/birbit/android/jobqueue/log/CustomLogger;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/b/a$a;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iput-object p1, v0, Lcom/birbit/android/jobqueue/b/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/birbit/android/jobqueue/b/a;
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/b/a;->g:Lcom/birbit/android/jobqueue/QueueFactory;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    new-instance v1, Lcom/birbit/android/jobqueue/f;

    invoke-direct {v1}, Lcom/birbit/android/jobqueue/f;-><init>()V

    iput-object v1, v0, Lcom/birbit/android/jobqueue/b/a;->g:Lcom/birbit/android/jobqueue/QueueFactory;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/b/a;->i:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    new-instance v1, Lcom/birbit/android/jobqueue/network/a;

    iget-object v2, v0, Lcom/birbit/android/jobqueue/b/a;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/birbit/android/jobqueue/network/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/birbit/android/jobqueue/b/a;->i:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/b/a;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    new-instance v1, Lcom/birbit/android/jobqueue/timer/a;

    invoke-direct {v1}, Lcom/birbit/android/jobqueue/timer/a;-><init>()V

    iput-object v1, v0, Lcom/birbit/android/jobqueue/b/a;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    return-object v0
.end method

.method public b(I)Lcom/birbit/android/jobqueue/b/a$a;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iput p1, v0, Lcom/birbit/android/jobqueue/b/a;->b:I

    return-object p0
.end method

.method public c(I)Lcom/birbit/android/jobqueue/b/a$a;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iput p1, v0, Lcom/birbit/android/jobqueue/b/a;->c:I

    return-object p0
.end method

.method public d(I)Lcom/birbit/android/jobqueue/b/a$a;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a$a;->a:Lcom/birbit/android/jobqueue/b/a;

    iput p1, v0, Lcom/birbit/android/jobqueue/b/a;->e:I

    return-object p0
.end method
