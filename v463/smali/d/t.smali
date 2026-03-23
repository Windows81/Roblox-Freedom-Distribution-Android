.class public Ld/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ld/t;


# instance fields
.field private a:Z

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ld/t$1;

    invoke-direct {v0}, Ld/t$1;-><init>()V

    sput-object v0, Ld/t;->b:Ld/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ld/t;
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Ld/t;->a:Z

    .line 116
    iput-wide p1, p0, Ld/t;->c:J

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Ld/t;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-eqz p3, :cond_0

    .line 84
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Ld/t;->d:J

    return-object p0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public d()J
    .locals 2

    .line 105
    iget-boolean v0, p0, Ld/t;->a:Z

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Ld/t;->c:J

    return-wide v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ld/t;
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Ld/t;->a:Z

    return-object p0
.end method

.method public g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-boolean v0, p0, Ld/t;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ld/t;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s_()J
    .locals 2

    .line 90
    iget-wide v0, p0, Ld/t;->d:J

    return-wide v0
.end method

.method public t_()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Ld/t;->a:Z

    return v0
.end method

.method public u_()Ld/t;
    .locals 2

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Ld/t;->d:J

    return-object p0
.end method
