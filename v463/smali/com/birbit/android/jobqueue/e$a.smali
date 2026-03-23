.class Lcom/birbit/android/jobqueue/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final g:Lcom/birbit/android/jobqueue/messaging/MessagePredicate;


# instance fields
.field final a:Lcom/birbit/android/jobqueue/messaging/f;

.field final b:Lcom/birbit/android/jobqueue/messaging/MessageQueue;

.field final c:Lcom/birbit/android/jobqueue/messaging/c;

.field final d:Lcom/birbit/android/jobqueue/timer/Timer;

.field e:Z

.field f:J

.field final h:Lcom/birbit/android/jobqueue/messaging/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Lcom/birbit/android/jobqueue/e$a$1;

    invoke-direct {v0}, Lcom/birbit/android/jobqueue/e$a$1;-><init>()V

    sput-object v0, Lcom/birbit/android/jobqueue/e$a;->g:Lcom/birbit/android/jobqueue/messaging/MessagePredicate;

    return-void
.end method

.method public constructor <init>(Lcom/birbit/android/jobqueue/messaging/MessageQueue;Lcom/birbit/android/jobqueue/messaging/f;Lcom/birbit/android/jobqueue/messaging/c;Lcom/birbit/android/jobqueue/timer/Timer;)V
    .locals 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lcom/birbit/android/jobqueue/e$a$2;

    invoke-direct {v0, p0}, Lcom/birbit/android/jobqueue/e$a$2;-><init>(Lcom/birbit/android/jobqueue/e$a;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/e$a;->h:Lcom/birbit/android/jobqueue/messaging/d;

    .line 372
    iput-object p2, p0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    .line 373
    iput-object p3, p0, Lcom/birbit/android/jobqueue/e$a;->c:Lcom/birbit/android/jobqueue/messaging/c;

    .line 374
    iput-object p1, p0, Lcom/birbit/android/jobqueue/e$a;->b:Lcom/birbit/android/jobqueue/messaging/MessageQueue;

    .line 375
    iput-object p4, p0, Lcom/birbit/android/jobqueue/e$a;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    .line 376
    invoke-interface {p4}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/birbit/android/jobqueue/e$a;->f:J

    return-void
.end method

.method private a()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    sget-object v1, Lcom/birbit/android/jobqueue/e$a;->g:Lcom/birbit/android/jobqueue/messaging/MessagePredicate;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/f;->cancelMessages(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/e$a;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/e$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/e$a;Lcom/birbit/android/jobqueue/messaging/a/e;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/e$a;->a(Lcom/birbit/android/jobqueue/messaging/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/e$a;Lcom/birbit/android/jobqueue/messaging/a/i;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/e$a;->a(Lcom/birbit/android/jobqueue/messaging/a/i;)V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/e;)V
    .locals 1

    .line 385
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/e;->c()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Consumer has been poked."

    .line 391
    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/f;->stop()V

    :goto_0
    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/i;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 397
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/i;->c()Lcom/birbit/android/jobqueue/h;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "running job %s"

    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/i;->c()Lcom/birbit/android/jobqueue/h;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/h;->a(I)I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e$a;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v2, Lcom/birbit/android/jobqueue/messaging/a/j;

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/messaging/a/j;

    .line 401
    invoke-virtual {v1, p1}, Lcom/birbit/android/jobqueue/messaging/a/j;->a(Lcom/birbit/android/jobqueue/h;)V

    .line 402
    invoke-virtual {v1, v0}, Lcom/birbit/android/jobqueue/messaging/a/j;->a(I)V

    .line 403
    invoke-virtual {v1, p0}, Lcom/birbit/android/jobqueue/messaging/a/j;->a(Ljava/lang/Object;)V

    .line 404
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e$a;->b:Lcom/birbit/android/jobqueue/messaging/MessageQueue;

    invoke-interface {p1, v1}, Lcom/birbit/android/jobqueue/messaging/MessageQueue;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/e$a;->h:Lcom/birbit/android/jobqueue/messaging/d;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/f;->consume(Lcom/birbit/android/jobqueue/messaging/d;)V

    return-void
.end method
