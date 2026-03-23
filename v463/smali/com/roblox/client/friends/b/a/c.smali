.class public Lcom/roblox/client/friends/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/b/a;


# static fields
.field private static final b:[B

.field private static final m:Lcom/roblox/client/friends/b/d;

.field private static final n:Lcom/roblox/client/friends/b/e;


# instance fields
.field final a:Lio/chirp/connect/interfaces/ConnectEventListener;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/chirp/connect/ChirpConnect;

.field private final e:F

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/roblox/client/friends/a;

.field private i:[B

.field private j:Z

.field private k:Lcom/roblox/client/friends/b/c;

.field private l:Lcom/roblox/client/friends/b/a/a;

.field private final o:Ljava/lang/Runnable;

.field private final p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Lcom/roblox/client/friends/b/a/c;->b:[B

    .line 222
    new-instance v0, Lcom/roblox/client/friends/b/a/c$2;

    invoke-direct {v0}, Lcom/roblox/client/friends/b/a/c$2;-><init>()V

    sput-object v0, Lcom/roblox/client/friends/b/a/c;->m:Lcom/roblox/client/friends/b/d;

    .line 238
    new-instance v0, Lcom/roblox/client/friends/b/a/c$3;

    invoke-direct {v0}, Lcom/roblox/client/friends/b/a/c$3;-><init>()V

    sput-object v0, Lcom/roblox/client/friends/b/a/c;->n:Lcom/roblox/client/friends/b/e;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/roblox/client/friends/b/a/b;Lcom/roblox/client/friends/a;Lcom/roblox/client/friends/b/a/a;I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/roblox/client/friends/b/a/c;->j:Z

    .line 141
    new-instance v0, Lcom/roblox/client/friends/b/a/c$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/b/a/c$1;-><init>(Lcom/roblox/client/friends/b/a/c;)V

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->a:Lio/chirp/connect/interfaces/ConnectEventListener;

    .line 258
    new-instance v0, Lcom/roblox/client/friends/b/a/c$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/b/a/c$4;-><init>(Lcom/roblox/client/friends/b/a/c;)V

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->o:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/roblox/client/friends/b/a/c$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/b/a/c$5;-><init>(Lcom/roblox/client/friends/b/a/c;)V

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->p:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/roblox/client/friends/b/a/c$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/b/a/c$6;-><init>(Lcom/roblox/client/friends/b/a/c;)V

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->q:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->f:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->g:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/friends/b/a/c;->c:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/roblox/client/friends/b/a/c;->h:Lcom/roblox/client/friends/a;

    .line 64
    invoke-virtual {p1}, Lcom/roblox/client/friends/b/a/b;->a()Lio/chirp/connect/ChirpConnect;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    .line 65
    iget-object p2, p0, Lcom/roblox/client/friends/b/a/c;->a:Lio/chirp/connect/interfaces/ConnectEventListener;

    invoke-virtual {p1, p2}, Lio/chirp/connect/ChirpConnect;->setListener(Lio/chirp/connect/interfaces/ConnectEventListener;)V

    .line 66
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {p1}, Lio/chirp/connect/ChirpConnect;->getMaxPayloadLength()J

    move-result-wide p1

    .line 67
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {v0, p1, p2}, Lio/chirp/connect/ChirpConnect;->getDurationForPayloadLength(J)F

    move-result p1

    iput p1, p0, Lcom/roblox/client/friends/b/a/c;->e:F

    .line 68
    iput-object p3, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ChirpVolume: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p2, p4

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NearbyChirpManager"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {p1, p2}, Lio/chirp/connect/ChirpConnect;->setVolume(F)Lio/chirp/connect/models/ChirpError;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    return-object p0
.end method

.method private a(Lcom/roblox/client/friends/b/d;Lcom/roblox/client/friends/b/e;)Z
    .locals 8

    .line 309
    iget-boolean v0, p0, Lcom/roblox/client/friends/b/a/c;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {v0}, Lio/chirp/connect/ChirpConnect;->start()Lio/chirp/connect/models/ChirpError;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result v2

    const-string v3, "NearbyChirpManager"

    if-lez v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting the SDK: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getErrorCode()Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object v3

    const-string v4, "StartError"

    invoke-virtual {v2, v4, v3}, Lcom/roblox/client/friends/b/a/a;->a(Ljava/lang/String;Lio/chirp/connect/models/ChirpErrorCode;)V

    const/4 v2, 0x2

    .line 314
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/roblox/client/friends/b/d;->a(ILjava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/roblox/client/friends/b/e;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    iput-boolean v1, p0, Lcom/roblox/client/friends/b/a/c;->j:Z

    .line 320
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->c()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 321
    iget v2, p0, Lcom/roblox/client/friends/b/a/c;->e:F

    mul-float v2, v2, v0

    const v0, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v0

    float-to-double v4, v2

    .line 323
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c;->q:Ljava/lang/Runnable;

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-long v4, v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "Started OK"

    .line 324
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    invoke-interface {p1}, Lcom/roblox/client/friends/b/d;->a()V

    .line 328
    invoke-interface {p2}, Lcom/roblox/client/friends/b/e;->a()V

    return v1
.end method

.method static synthetic b(Lcom/roblox/client/friends/b/a/c;)[B
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->i:[B

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/a/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->k:Lcom/roblox/client/friends/b/c;

    return-object p0
.end method

.method static synthetic d()[B
    .locals 1

    .line 32
    sget-object v0, Lcom/roblox/client/friends/b/a/c;->b:[B

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->h:Lcom/roblox/client/friends/a;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->h:Lcom/roblox/client/friends/a;

    invoke-interface {v0}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->p:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/friends/b/a/c;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->c:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->r()V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {v1}, Lio/chirp/connect/ChirpConnect;->getChannelCount()B

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 341
    iget-object v3, p0, Lcom/roblox/client/friends/b/a/c;->c:Ljava/util/List;

    int-to-byte v4, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 346
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Possible channels: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NearbyChirpManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 349
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->t()V

    const-string v0, "Unable to allocate a channel. All channels are busy"

    .line 350
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 354
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 355
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->s()V

    .line 359
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lio/chirp/connect/ChirpConnect;->setTransmissionChannel(B)Lio/chirp/connect/models/ChirpError;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result v1

    if-lez v1, :cond_4

    .line 361
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    .line 362
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getErrorCode()Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object v0

    const-string v2, "PickChannelError"

    .line 361
    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/friends/b/a/a;->a(Ljava/lang/String;Lio/chirp/connect/models/ChirpErrorCode;)V

    const-string v0, "Chanel not set"

    .line 363
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/friends/b/a/c;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/friends/b/a/c;->f()V

    return-void
.end method

.method static synthetic h(Lcom/roblox/client/friends/b/a/c;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/roblox/client/friends/b/a/c;->e:F

    return p0
.end method

.method static synthetic i(Lcom/roblox/client/friends/b/a/c;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/roblox/client/friends/b/a/c;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/roblox/client/friends/b/a/c;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lcom/roblox/client/friends/b/a/c;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/c;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l(Lcom/roblox/client/friends/b/a/c;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/friends/b/a/c;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->g()V

    .line 101
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/roblox/client/friends/b/b;Lcom/roblox/client/friends/b/d;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->e()V

    .line 78
    sget-object v0, Lcom/roblox/client/friends/b/a/c;->n:Lcom/roblox/client/friends/b/e;

    invoke-direct {p0, p2, v0}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/d;Lcom/roblox/client/friends/b/e;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {p2}, Lcom/roblox/client/friends/b/a/a;->f()V

    .line 80
    invoke-interface {p1}, Lcom/roblox/client/friends/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/ae/t;->c(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/friends/b/a/c;->i:[B

    .line 81
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/c;->f:Landroid/os/Handler;

    iget-object p2, p0, Lcom/roblox/client/friends/b/a/c;->o:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {p1}, Lcom/roblox/client/friends/b/a/a;->h()V

    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/friends/b/e;Lcom/roblox/client/friends/b/c;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->i()V

    .line 90
    sget-object v0, Lcom/roblox/client/friends/b/a/c;->m:Lcom/roblox/client/friends/b/d;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/d;Lcom/roblox/client/friends/b/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {p1}, Lcom/roblox/client/friends/b/a/a;->j()V

    .line 92
    iput-object p2, p0, Lcom/roblox/client/friends/b/a/c;->k:Lcom/roblox/client/friends/b/c;

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {p1}, Lcom/roblox/client/friends/b/a/a;->l()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->k()V

    const-string v0, "NearbyChirpManager"

    const-string v1, "Unsubscribing..."

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v1, p0, Lcom/roblox/client/friends/b/a/c;->j:Z

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {v1}, Lio/chirp/connect/ChirpConnect;->stop()Lio/chirp/connect/models/ChirpError;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    iput-boolean v2, p0, Lcom/roblox/client/friends/b/a/c;->j:Z

    .line 111
    invoke-virtual {v1}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v1}, Lio/chirp/connect/models/ChirpError;->getErrorCode()Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object v3

    const-string v4, "StopError"

    invoke-virtual {v2, v4, v3}, Lcom/roblox/client/friends/b/a/a;->a(Ljava/lang/String;Lio/chirp/connect/models/ChirpErrorCode;)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping the SDK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->p()V

    const-string v0, "NearbyChirpManager"

    const-string v1, "Disposing..."

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {v1}, Lio/chirp/connect/ChirpConnect;->stop()Lio/chirp/connect/models/ChirpError;

    .line 125
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "Stopped..."

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->d:Lio/chirp/connect/ChirpConnect;

    invoke-virtual {v1}, Lio/chirp/connect/ChirpConnect;->close()V

    .line 130
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v1}, Lcom/roblox/client/friends/b/a/a;->o()V

    const-string v1, "Closed..."

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Error closing ChirpConnect"

    .line 133
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->q()V

    .line 135
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c;->l:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/b/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
