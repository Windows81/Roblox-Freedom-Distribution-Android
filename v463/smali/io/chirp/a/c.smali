.class public Lio/chirp/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:Landroid/media/AudioTrack;

.field private e:Landroid/media/AudioRecord;

.field private f:Lio/chirp/a/b;

.field private g:Lio/chirp/a/a;

.field private h:Landroid/content/Context;

.field private i:Landroid/os/Handler;

.field private j:Lio/chirp/a/d;

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:Lio/chirp/a/f;

.field private o:Z

.field private p:Z

.field private q:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/chirp/a/c$3;

    invoke-direct {v0, p0}, Lio/chirp/a/c$3;-><init>(Lio/chirp/a/c;)V

    iput-object v0, p0, Lio/chirp/a/c;->q:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    new-instance v0, Lio/chirp/a/b;

    invoke-direct {v0}, Lio/chirp/a/b;-><init>()V

    invoke-virtual {v0}, Lio/chirp/a/b;->d()Lio/chirp/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/a/c;->f:Lio/chirp/a/b;

    new-instance v0, Lio/chirp/a/a;

    invoke-direct {v0}, Lio/chirp/a/a;-><init>()V

    iget-object v1, p0, Lio/chirp/a/c;->f:Lio/chirp/a/b;

    invoke-virtual {v1}, Lio/chirp/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/chirp/a/a;->a(I)Lio/chirp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/chirp/a/a;->b()Lio/chirp/a/a;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/a/c;->g:Lio/chirp/a/a;

    iget-object v0, p0, Lio/chirp/a/c;->f:Lio/chirp/a/b;

    invoke-virtual {v0}, Lio/chirp/a/b;->c()I

    move-result v0

    iput v0, p0, Lio/chirp/a/c;->b:I

    iget-object v0, p0, Lio/chirp/a/c;->g:Lio/chirp/a/a;

    invoke-virtual {v0}, Lio/chirp/a/a;->a()I

    move-result v0

    iput v0, p0, Lio/chirp/a/c;->c:I

    mul-int/lit8 v1, v0, 0x20

    iput v1, p0, Lio/chirp/a/c;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lio/chirp/a/c;->k:[B

    iget v0, p0, Lio/chirp/a/c;->b:I

    new-array v1, v0, [B

    iput-object v1, p0, Lio/chirp/a/c;->l:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lio/chirp/a/c;->m:[B

    return-void
.end method

.method static synthetic a(Lio/chirp/a/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lio/chirp/a/c;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "ChirpAudioManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Lio/chirp/a/c;)Z
    .locals 0

    iget-boolean p0, p0, Lio/chirp/a/c;->p:Z

    return p0
.end method

.method static synthetic a(Lio/chirp/a/c;[B)[B
    .locals 0

    iput-object p1, p0, Lio/chirp/a/c;->k:[B

    return-object p1
.end method

.method static synthetic b(Lio/chirp/a/c;)[B
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->k:[B

    return-object p0
.end method

.method static synthetic c(Lio/chirp/a/c;)Lio/chirp/a/d;
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->j:Lio/chirp/a/d;

    return-object p0
.end method

.method static synthetic d(Lio/chirp/a/c;)I
    .locals 0

    iget p0, p0, Lio/chirp/a/c;->c:I

    return p0
.end method

.method static synthetic e(Lio/chirp/a/c;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IllegalStateException cleanupAudioPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IllegalStateException cleanupAudioRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method static synthetic f(Lio/chirp/a/c;)[B
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->l:[B

    return-object p0
.end method

.method static synthetic g(Lio/chirp/a/c;)I
    .locals 0

    iget p0, p0, Lio/chirp/a/c;->b:I

    return p0
.end method

.method private g()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lio/chirp/a/c;->h:Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method static synthetic h(Lio/chirp/a/c;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic i(Lio/chirp/a/c;)Lio/chirp/a/f;
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->n:Lio/chirp/a/f;

    return-object p0
.end method

.method static synthetic j(Lio/chirp/a/c;)[B
    .locals 0

    iget-object p0, p0, Lio/chirp/a/c;->m:[B

    return-object p0
.end method


# virtual methods
.method public a()Lio/chirp/a/e;
    .locals 5

    const/16 v0, 0x78

    :try_start_0
    const-string v1, "ChirpAudioManager startListening - audioRecorder.startRecording "

    invoke-direct {p0, v1}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "ChirpAudioManager startAudioLoop - starting audio loop"

    invoke-direct {p0, v1}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lio/chirp/a/c;->j:Lio/chirp/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lio/chirp/a/e;

    const-string v2, "AudioBufferCallback not set."

    invoke-direct {v1, v0, v2}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/chirp/a/c;->p:Z

    iget-object v1, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "ChirpAudioManager startListening - audioPlayer.play "

    invoke-direct {p0, v1}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/chirp/a/c$1;

    invoke-direct {v1, p0}, Lio/chirp/a/c$1;-><init>(Lio/chirp/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance v2, Lio/chirp/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException audioPlayer.play(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/chirp/a/c$2;

    invoke-direct {v1, p0}, Lio/chirp/a/c$2;-><init>(Lio/chirp/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lio/chirp/a/e;

    const/4 v1, 0x0

    const-string v2, "No error."

    invoke-direct {v0, v1, v2}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance v2, Lio/chirp/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException audioRecorder.startRecording(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;Z)Lio/chirp/a/e;
    .locals 2

    iput-object p2, p0, Lio/chirp/a/c;->i:Landroid/os/Handler;

    iput-object p1, p0, Lio/chirp/a/c;->h:Landroid/content/Context;

    invoke-direct {p0}, Lio/chirp/a/c;->g()Z

    move-result p1

    const/16 v0, 0x78

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance p1, Lio/chirp/a/e;

    const-string p2, "Microphone permission is required"

    invoke-direct {p1, v0, p2}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/chirp/a/c;->g:Lio/chirp/a/a;

    invoke-virtual {p1}, Lio/chirp/a/a;->c()Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_1

    :try_start_1
    iget-object p1, p0, Lio/chirp/a/c;->f:Lio/chirp/a/b;

    invoke-virtual {p1}, Lio/chirp/a/b;->e()Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance p2, Lio/chirp/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException setupAudioPlayer: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    iget-object p1, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    iget-object p3, p0, Lio/chirp/a/c;->q:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {p1, p3, p2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    iget p2, p0, Lio/chirp/a/c;->b:I

    invoke-virtual {p1, p2}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    new-instance p1, Lio/chirp/a/f;

    iget p2, p0, Lio/chirp/a/c;->a:I

    invoke-direct {p1, p2}, Lio/chirp/a/f;-><init>(I)V

    iput-object p1, p0, Lio/chirp/a/c;->n:Lio/chirp/a/f;

    new-instance p1, Lio/chirp/a/e;

    const/4 p2, 0x0

    const-string p3, "No error."

    invoke-direct {p1, p2, p3}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance p2, Lio/chirp/a/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalArgumentException setupAudioRecorder: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object p2
.end method

.method public a(Lio/chirp/a/d;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/a/c;->j:Lio/chirp/a/d;

    return-void
.end method

.method public b()Lio/chirp/a/e;
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/chirp/a/c;->p:Z

    iget-object v1, p0, Lio/chirp/a/c;->n:Lio/chirp/a/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/chirp/a/f;->a()V

    :cond_0
    const/16 v1, 0x78

    :try_start_0
    const-string v2, "ChirpAudioManager stopAudioLoop - audioRecorder.stop "

    invoke-direct {p0, v2}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lio/chirp/a/c;->e:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "ChirpAudioManager stopAudioLoop - audioPlayer.stop "

    invoke-direct {p0, v2}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lio/chirp/a/c;->d:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Lio/chirp/a/e;

    const-string v2, "No error."

    invoke-direct {v1, v0, v2}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance v2, Lio/chirp/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException audioPlayer.stop(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lio/chirp/a/c;->d()V

    new-instance v2, Lio/chirp/a/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException audioRecorder.stop(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lio/chirp/a/e;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lio/chirp/a/c;->f:Lio/chirp/a/b;

    invoke-virtual {v0}, Lio/chirp/a/b;->b()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    const-string v0, "ChirpAudioManager cleanup "

    invoke-direct {p0, v0}, Lio/chirp/a/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/chirp/a/c;->e()V

    invoke-direct {p0}, Lio/chirp/a/c;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/chirp/a/c;->n:Lio/chirp/a/f;

    return-void
.end method
