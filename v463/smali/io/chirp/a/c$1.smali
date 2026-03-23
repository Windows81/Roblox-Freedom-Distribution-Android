.class Lio/chirp/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/chirp/a/c;->a()Lio/chirp/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/chirp/a/c;


# direct methods
.method constructor <init>(Lio/chirp/a/c;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->a(Lio/chirp/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->c(Lio/chirp/a/c;)Lio/chirp/a/d;

    move-result-object v1

    iget-object v2, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-static {v2}, Lio/chirp/a/c;->b(Lio/chirp/a/c;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lio/chirp/a/d;->processShortsOutput([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/chirp/a/c;->a(Lio/chirp/a/c;[B)[B

    iget-object v0, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->e(Lio/chirp/a/c;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-static {v1}, Lio/chirp/a/c;->b(Lio/chirp/a/c;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lio/chirp/a/c$1;->a:Lio/chirp/a/c;

    invoke-static {v3}, Lio/chirp/a/c;->d(Lio/chirp/a/c;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
