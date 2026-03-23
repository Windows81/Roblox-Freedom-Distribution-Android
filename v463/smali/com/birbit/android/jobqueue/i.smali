.class public Lcom/birbit/android/jobqueue/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# instance fields
.field final b:Lcom/birbit/android/jobqueue/j;

.field private final c:Lcom/birbit/android/jobqueue/messaging/e;

.field private final d:Lcom/birbit/android/jobqueue/messaging/c;

.field private e:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/birbit/android/jobqueue/i;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/birbit/android/jobqueue/b/a;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/birbit/android/jobqueue/messaging/c;

    invoke-direct {v0}, Lcom/birbit/android/jobqueue/messaging/c;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/i;->d:Lcom/birbit/android/jobqueue/messaging/c;

    .line 60
    new-instance v0, Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->m()Lcom/birbit/android/jobqueue/timer/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/birbit/android/jobqueue/i;->d:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-direct {v0, v1, v2}, Lcom/birbit/android/jobqueue/messaging/e;-><init>(Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/i;->c:Lcom/birbit/android/jobqueue/messaging/e;

    .line 61
    new-instance v1, Lcom/birbit/android/jobqueue/j;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/i;->d:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-direct {v1, p1, v0, v2}, Lcom/birbit/android/jobqueue/j;-><init>(Lcom/birbit/android/jobqueue/b/a;Lcom/birbit/android/jobqueue/messaging/e;Lcom/birbit/android/jobqueue/messaging/c;)V

    iput-object v1, p0, Lcom/birbit/android/jobqueue/i;->b:Lcom/birbit/android/jobqueue/j;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/i;->b:Lcom/birbit/android/jobqueue/j;

    const-string v2, "job-manager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/i;->e:Ljava/lang/Thread;

    .line 63
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->o()Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/i;->a()Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->o()Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Landroid/content/Context;Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;)V

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/birbit/android/jobqueue/i;->e:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a()Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;
    .locals 1

    .line 71
    new-instance v0, Lcom/birbit/android/jobqueue/i$1;

    invoke-direct {v0, p0}, Lcom/birbit/android/jobqueue/i$1;-><init>(Lcom/birbit/android/jobqueue/i;)V

    return-object v0
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/i;Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/scheduling/a;)V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/birbit/android/jobqueue/i;->d:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/k;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/k;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/birbit/android/jobqueue/messaging/a/k;->a(ILcom/birbit/android/jobqueue/scheduling/a;)V

    .line 90
    iget-object p1, p0, Lcom/birbit/android/jobqueue/i;->c:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/e;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method

.method static synthetic b(Lcom/birbit/android/jobqueue/i;Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/i;->b(Lcom/birbit/android/jobqueue/scheduling/a;)V

    return-void
.end method

.method private b(Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/birbit/android/jobqueue/i;->d:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/k;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/k;

    const/4 v1, 0x2

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/birbit/android/jobqueue/messaging/a/k;->a(ILcom/birbit/android/jobqueue/scheduling/a;)V

    .line 96
    iget-object p1, p0, Lcom/birbit/android/jobqueue/i;->c:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/e;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/birbit/android/jobqueue/g;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/birbit/android/jobqueue/i;->d:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/a;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/a;

    .line 212
    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/messaging/a/a;->a(Lcom/birbit/android/jobqueue/g;)V

    .line 213
    iget-object p1, p0, Lcom/birbit/android/jobqueue/i;->c:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/e;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method
