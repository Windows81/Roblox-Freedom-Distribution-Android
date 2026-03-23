.class public Lcom/birbit/android/jobqueue/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/b/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/Context;

.field g:Lcom/birbit/android/jobqueue/QueueFactory;

.field h:Lcom/birbit/android/jobqueue/di/DependencyInjector;

.field i:Lcom/birbit/android/jobqueue/network/NetworkUtil;

.field j:Lcom/birbit/android/jobqueue/log/CustomLogger;

.field k:Lcom/birbit/android/jobqueue/timer/Timer;

.field l:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

.field m:Z

.field n:Z

.field o:I

.field p:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default_job_manager"

    .line 48
    iput-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->a:Ljava/lang/String;

    const/4 v0, 0x5

    .line 49
    iput v0, p0, Lcom/birbit/android/jobqueue/b/a;->b:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/birbit/android/jobqueue/b/a;->c:I

    const/16 v2, 0xf

    .line 51
    iput v2, p0, Lcom/birbit/android/jobqueue/b/a;->d:I

    const/4 v2, 0x3

    .line 52
    iput v2, p0, Lcom/birbit/android/jobqueue/b/a;->e:I

    .line 60
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/b/a;->m:Z

    .line 61
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/b/a;->n:Z

    .line 62
    iput v0, p0, Lcom/birbit/android/jobqueue/b/a;->o:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/b/a;->p:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/birbit/android/jobqueue/b/a$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/b/a;->p:Z

    return v0
.end method

.method public d()Lcom/birbit/android/jobqueue/QueueFactory;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->g:Lcom/birbit/android/jobqueue/QueueFactory;

    return-object v0
.end method

.method public e()Lcom/birbit/android/jobqueue/di/DependencyInjector;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->h:Lcom/birbit/android/jobqueue/di/DependencyInjector;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/birbit/android/jobqueue/b/a;->d:I

    return v0
.end method

.method public g()Lcom/birbit/android/jobqueue/network/NetworkUtil;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->i:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/birbit/android/jobqueue/b/a;->b:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/birbit/android/jobqueue/b/a;->c:I

    return v0
.end method

.method public j()Lcom/birbit/android/jobqueue/log/CustomLogger;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->j:Lcom/birbit/android/jobqueue/log/CustomLogger;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/birbit/android/jobqueue/b/a;->e:I

    return v0
.end method

.method public l()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/b/a;->m:Z

    return v0
.end method

.method public m()Lcom/birbit/android/jobqueue/timer/Timer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/b/a;->n:Z

    return v0
.end method

.method public o()Lcom/birbit/android/jobqueue/scheduling/Scheduler;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b/a;->l:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/birbit/android/jobqueue/b/a;->o:I

    return v0
.end method
