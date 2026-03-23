.class Lio/chirp/a/c$2;
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

    iput-object p1, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->a(Lio/chirp/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->h(Lio/chirp/a/c;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-static {v1}, Lio/chirp/a/c;->f(Lio/chirp/a/c;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-static {v3}, Lio/chirp/a/c;->g(Lio/chirp/a/c;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-static {v1}, Lio/chirp/a/c;->i(Lio/chirp/a/c;)Lio/chirp/a/f;

    move-result-object v1

    iget-object v2, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    invoke-static {v2}, Lio/chirp/a/c;->f(Lio/chirp/a/c;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/chirp/a/f;->a([BI)I
    :try_end_0
    .catch Lio/chirp/a/f$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChirpAudioManager inAudioThread - inRingBuffer.put "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lio/chirp/a/c$2;->a:Lio/chirp/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChirpAudioManager startListening - inRingBuffer.put "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/chirp/a/f$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/chirp/a/c;->a(Lio/chirp/a/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
