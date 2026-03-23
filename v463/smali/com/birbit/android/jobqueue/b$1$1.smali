.class Lcom/birbit/android/jobqueue/b$1$1;
.super Lcom/birbit/android/jobqueue/messaging/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/birbit/android/jobqueue/b$1;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/b$1;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    invoke-direct {p0}, Lcom/birbit/android/jobqueue/messaging/d;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 66
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/b$1$1;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/messaging/b;)V
    .locals 3

    .line 74
    iget-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    sget-object v1, Lcom/birbit/android/jobqueue/messaging/g;->a:Lcom/birbit/android/jobqueue/messaging/g;

    if-ne v0, v1, :cond_0

    .line 75
    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/b;

    .line 76
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/b;Lcom/birbit/android/jobqueue/messaging/a/b;)V

    .line 77
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    invoke-static {p1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/b;)Lcom/birbit/android/jobqueue/timer/Timer;

    move-result-object p1

    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/b$1$1;->a:J

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    sget-object v1, Lcom/birbit/android/jobqueue/messaging/g;->b:Lcom/birbit/android/jobqueue/messaging/g;

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/d;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/b;Lcom/birbit/android/jobqueue/messaging/a/d;)V

    .line 80
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    invoke-static {p1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/b;)Lcom/birbit/android/jobqueue/timer/Timer;

    move-result-object p1

    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/b$1$1;->a:J

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    sget-object v1, Lcom/birbit/android/jobqueue/messaging/g;->d:Lcom/birbit/android/jobqueue/messaging/g;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 82
    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/e;

    .line 83
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/e;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 84
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/f;->stop()V

    .line 85
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b$1$1;->b:Lcom/birbit/android/jobqueue/b$1;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    invoke-static {p1}, Lcom/birbit/android/jobqueue/b;->b(Lcom/birbit/android/jobqueue/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    sget-object v1, Lcom/birbit/android/jobqueue/messaging/g;->e:Lcom/birbit/android/jobqueue/messaging/g;

    if-ne v0, v1, :cond_3

    .line 88
    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/h;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
