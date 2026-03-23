.class Lcom/birbit/android/jobqueue/messaging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/birbit/android/jobqueue/messaging/b;

.field final b:Lcom/birbit/android/jobqueue/messaging/c;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/messaging/c;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    .line 10
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a;->b:Lcom/birbit/android/jobqueue/messaging/c;

    return-void
.end method


# virtual methods
.method a(JLcom/birbit/android/jobqueue/messaging/MessageQueue;)Ljava/lang/Long;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "flushing messages at time %s"

    invoke-static {v2, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    cmp-long v1, v4, p1

    if-gtz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    .line 17
    iget-object v4, v1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v4, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    .line 18
    iput-object v2, v1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 19
    invoke-interface {p3, v1}, Lcom/birbit/android/jobqueue/messaging/MessageQueue;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p3, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    if-eqz p3, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    iget-wide v1, p3, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "returning next ready at %d ns"

    invoke-static {p1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    iget-wide p1, p1, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method public a(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 62
    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/messaging/MessagePredicate;->onMessage(Lcom/birbit/android/jobqueue/messaging/b;)Z

    move-result v2

    .line 63
    iget-object v3, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    .line 66
    iget-object v2, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v2, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    goto :goto_1

    .line 68
    :cond_0
    iget-object v2, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v2, v1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 70
    :goto_1
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/a;->b:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-virtual {v2, v0}, Lcom/birbit/android/jobqueue/messaging/c;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Lcom/birbit/android/jobqueue/messaging/b;J)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "add delayed message %s at time %s"

    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iput-wide p2, p1, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    .line 30
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    iget-wide v2, v0, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    cmp-long v4, v2, p2

    if-gtz v4, :cond_1

    .line 38
    iget-object v1, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 41
    iget-object p2, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object p2, p1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 42
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/a;->a:Lcom/birbit/android/jobqueue/messaging/b;

    goto :goto_1

    .line 44
    :cond_2
    iput-object p1, v1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 45
    iput-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    :goto_1
    return-void
.end method
